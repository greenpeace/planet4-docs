# Database Tasks

To follow are a list of tasks you may need to execute on the P4 Wordpress databases. Each P4 deployment in each release has its own WP database inside the [GCP Cloud SQL deployment](https://sites.google.com/greenpeace.org/p4-infra/google-cloud-platform/cloudsql). There is also a [default](https://github.com/greenpeace/planet4-defaultcontent) deployment which is the source of all newly built NRO deployments.

## Running WP CLI in K8s

You can access the WP CLI via a selected deployment as follows for example:

```bash
**Connect to your K8 context and namespace:**
~/DevOps/GitHub ❯ kubectx p4-dev

**Get a list of the WP deployments you want to connect to ie. jctest:**
~/DevOps/GitHub ❯ kgp | grep jctest                                                                                  10s ⎈ p4-development/develop
planet4-jctest-redis-master-0                                    1/1     Running            0          3d22h
planet4-jctest-wordpress-openresty-57554b8f8b-w49b7              1/1     Running            0          3d22h
planet4-jctest-wordpress-php-55ffb8bf5d-twzbv                    1/1     Running            0          3d22h

**Enter into the deployment, run wp commands:**

~/DevOps/GitHub ❯ k exec -it planet4-jctest-wordpress-php-55ffb8bf5d-twzbv bash                                          ⎈ p4-development/develop
root@planet4-jctest-wordpress-php-55ffb8bf5d-twzbv:/app/source# wp user list
+----+------------+-------------------------------+---------------------------------+---------------------+---------------+
| ID | user_login | display_name                  | user_email                      | user_registered     | roles         |
+----+------------+-------------------------------+---------------------------------+---------------------+---------------+
| 1  | admin      | admin                         | planet4-pm-group@greenpeace.org | 2018-05-01 02:02:54 | subscriber    |
| 14 | amelekou   | Anastasia                     | amelekou@greenpeace.org         | 2018-08-09 08:46:32 | administrator |
.....

You can also run commands directly:
```

## Adding a new user to the P4 [Default](https://www.notion.so/p4infra/Wordpress-Database-Admin-Tasks-799fa20dda67460f8a5b93becad0ffae#072cdd441d694d178ace90d919e5fc4b) database

```bash
1.  **Connect to the default deployment in development, enter the instance and add user**

~/DevOps/GitHub ❯ kgp | grep default                                                                           1h 23m 5s ⎈ p4-development/develop
planet4-defaultcontent-redis-master-0                            1/1     Running            0          161d
planet4-defaultcontent-wordpress-openresty-798f555df6-f526w      1/1     Running            0          15h
planet4-defaultcontent-wordpress-php-55cdf9b479-45vnn            1/1     Running            0          15h

~/DevOps/GitHub ❯ k exec -it planet4-defaultcontent-wordpress-php-55cdf9b479-45vnn bash                                          ⎈ p4-development/develop

root@planet4-defaultcontent-wordpress-php-55cdf9b479-45vnn:/app/source# wp user create jhasenau jhasenau@greenpeace.org --role=administrator --display_name=Jen
Success: Created user 25.
Password: ####### (you don't need to record this as GP users use SSO via google to connect)
exit

2.  **Trigger a deployment of that build by pushing a new tag**

git clone https://github.com/greenpeace/planet4-defaultcontent.git
# or, if you already have it locally:
git pull https://github.com/greenpeace/planet4-defaultcontent.git
# check what the next tag number is:
cd planet4-defaultcontent
git tag
v0.1.57
v0.1.58
v0.1.59
v0.1.8
v0.1.9

# create a new tag and push it to the remote
git tag -a v0.1.60 -m "Add user to WP database"
git push origin v0.1.60
Enumerating objects: 1, done.
Counting objects: 100% (1/1), done.
Writing objects: 100% (1/1), 170 bytes | 170.00 KiB/s, done.
Total 1 (delta 0), reused 0 (delta 0)
To https://github.com/greenpeace/planet4-defaultcontent.git
 * [new tag]         v0.1.60 -> v0.1.60

**3.  Check CircleCI**

For a job named create-default-sql
https://circleci.com/gh/greenpeace/workflows/planet4-defaultcontent
```

## Restoring a P4 database

Clone this repo for a bunch of handy scripts for doing this:

[greenpeace/planet4-helper-scripts](https://github.com/greenpeace/planet4-helper-scripts)

```bash
**1.  Download & unzip the file you want to use to restore to the database instance.**
    For example if you want the latest default content database run this:

~/DevOps/GitHub/planet4-helper-scripts❯ gsutil cp gs://planet4-default-content/planet4-defaultcontent_wordpress-v0.1.60.sql.gz .
Copying gs://planet4-default-content/planet4-defaultcontent_wordpress-v0.1.60.sql.gz...
- [1 files][  1.3 MiB/  1.3 MiB]
Operation completed over 1 objects/1.3 MiB.
~/DevOps/GitHub/planet4-helper-scripts❯ gunzip planet4-defaultcontent_wordpress-v0.1.60.sql.gz

**2.  Run the import script calling your instance and file name:**

~/DevOps/GitHub/planet4-helper-scripts❯ ./import_release_db.sh planet4-jctest planet4-defaultcontent_wordpress-v0.1.60.sql                                              8s
Release:    planet4-jctest
Namespace:  develop
Pod:        planet4-jctest-wordpress-php-55ffb8bf5d-twzbv
File:       planet4-defaultcontent_wordpress-v0.1.60.sql
Database:   planet4-jctest_wordpress_develop
Copying planet4-defaultcontent_wordpress-v0.1.60.sql to planet4-jctest-wordpress-php-55ffb8bf5d-twzbv:import.sql ...
Reset existing database? [y/N] y
Success: Database reset.
Success: Imported from 'import.sql'.

**3.  Run the update and release scripts**

~/DevOps/GitHub/planet4-helper-scripts❯ ./update_release_links.sh planet4-jctest
~/DevOps/GitHub/planet4-helper-scripts❯ ./flush_release_redis.sh planet4-jctest

**4.  Test your website and admin logins here:**

https://k8s.p4.greenpeace.org/jctest/
https://k8s.p4.greenpeace.org/jctest/wp-admin/index.php

5.  If you also have to update your stateless bucket for media images, run this:

gsutil -m rsync -r gs://planet4-defaultcontent-stateless-develop gs://planet4-flibble-stateless
```

