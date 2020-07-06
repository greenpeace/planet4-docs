# Routine Checks

## Checking Redis Cache

There is currently an issue with how certain NRO sites are consuming the Redis cache. This has been logged with those sites, however at this stage we are "keepin an eye on it manually".

From your enhanced and gcp connected terminal run:

```bash
kubectx gke_planet4-production_us-central1-a_planet4-production
kubectl top pod --all-namespaces -l app=redis | sort -nk4 | tail -n20
```

If any of the results exceed 500Mi, run this for the relevant site:

```bash
kubectl exec -n <nro> planet4-<nro>-master-redis-master-0 redis-cli flushdb async
```

## Checking CircleCI Jobs

There is a weekly CircleCI job that deploys the P4 docker images, it has a bit of a tendency to fail. You should have received an alert about this in your inbox. Ensure the process finishes by:

* Navigating the the failed job
* Selecting Rerun from failed
* Ensuring it succeeded
* Then check a bit later to ensure the subsequent tag job completes

If the job continues to fail for unknown reasons try to run it in SSH mode so you can connect to the container and investigate the files inside. Select Rerun job using SSH as shown below:

```bash
# Then wait for these instructions at the end of the job:

You can now SSH into this box if your SSH public key is added:
    $ ssh -p 64537 18.209.34.18

# Use the same SSH public key that you use for your VCS-provider (e.g., GitHub).

RSA key fingerprint of the host is
  SHA256:gmdDJdpQLMdwGZi7tgZMJvHsbaN3ctAMn8U5paOPasw
  MD5:35:8a:4a:b3:3f:3f:0d:ad:f8:36:44:ce:a7:6e:01:22

# This box will stay up for 2h0m0s, or until 10m0s passes without 
# an active SSH session.

# Open your terminal and enter the command as instructed and your passphrase:

~/DevOps/GitHub/planet4-flibble develop ⇡1 ❯ ssh -p 64537 18.209.34.18
The authenticity of host '[18.209.34.18]:64537 ([18.209.34.18]:64537)' can't be established.
RSA key fingerprint is SHA256:gmdDJdpQLMdwGZi7tgZMJvHsbaN3ctAMn8U5paOPasw.
Are you sure you want to continue connecting (yes/no)? yes
Warning: Permanently added '[18.209.34.18]:64537' (RSA) to the list of known hosts.
Enter passphrase for key '/Users/jhasenau/.ssh/id_rsa':
circleci@031dbaedf406:~$
```

## Cleaning out old docker images

* [ ] TODO: Audit currently used images across both clusters, delete images from [gcr.io](http://gcr.io) older than X

## Cleaning out old git branches

I often get stuck with changes files that wont let me delete the branch, I found this works nicely:

```bash
git checkout develop

error: Your local changes to the following files would be overwritten by checkout:
    Chart.yaml
Please commit your changes or stash them before you switch branches.
Aborting

git checkout .

Updated 2 paths from the index

git checkout develop

Switched to branch 'develop'
Your branch is up to date with 'origin/develop'.
```

