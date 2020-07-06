---
description: Modifying P4 Docker Images
---

# Docker Images

The docker images for the basis for all the P4 deployments. It is critical that these images maintain their default state as much as possible, rely on BATs tests to ensure their integrity and pass all tests locally and in the Circle pipelines prior to deploying.

{% hint style="info" %}
Relevant repository: [greenpeace/planet4-docker](https://github.com/greenpeace/planet4-docker/tree/develop)
{% endhint %}

To do this you will need to have some understanding of Docker, refer to the Reading List for getting started with Docker. Also you should have already deployed the P4 environment locally per [this](https://www.notion.so/p4infra/Welcome-to-P4-Infra-6394f446d39848dc8f0a536c72616838).

## How to update a Docker image

### Repo structure

The docker repo contains the 6 docker images that P4 is based on. Refer to the README.md on both the main repo and each of the images to get more details on what is in them, how to use the images, then refer to this document for how to make changes to them. These images can be built locally or stored\built remotely where they live [here](https://console.cloud.google.com/gcr/images/planet-4-151612?project=planet-4-151612).

The builder repo contains the main circleci image and that is stored [here](https://hub.docker.com/) in the greenpeaceinternational workspace.

Take note of the directory \(or repo\) you are in when running the following commands as they are always relative.

### Docker image structures

All P4 docker images contain a similar structure to make maintaining them easier as follows:

```bash
/

# Contains shell scripts that deploy configuration and applications in the image
/bin

# Contains shell scripts that set environment variables
/env 

# Contains files that will reside in the /etc folder in the actual image
/etc 

# Only exists in the WP image, source files for web pages
/source

# Contains templates (.tmpl) files in the same structure that they will reside in the actual image ie.
/templates 

# This will dockerize to /etc/.conf.
/etc/<filename>.conf.tmpl 

# The root of this folder contains the .in files for Dockerfile and 
# README.md which are generated on build. 
Dockerfile
README.md
```



### Preparing to make changes

If you need your changes to be reviewed, start by pulling your repo and creating a new branch in the repo you are working on. This will allow you to make changes without impacting other code, and create a PR where if your lucky you can get useful feedback. In most cases, modifying the docker repo also requires changes to the builder repo:

```bash
# To clone and create and checkout a new feature branch:

git clone https://github.com/greenpeace/planet4-docker.git
# or, if you already have it locally ... 
git pull https://github.com/greenpeace/planet4-docker.git
# git checkout -b <new feature name>, do this on develop
git checkout -b geoip_updates

git clone https://github.com/greenpeace/planet4-builder.git
# or, if you already have it locally ... 
git pull https://github.com/greenpeace/planet4-builder.git
# git checkout -b <new feature name>, do this on develop
git checkout -b geoip_updates
```

### Building locally

You can modify and download a local copy of your docker image to make sure your changes are correct inside the image prior to deploying it to the cloud.

I am going to make a change in a local branch of the repo. In this case I have added a line to the nginx\_configure\_cloudflare.sh

```bash
# This real_ip_header value is already declared by nginx_configure_real_ip.sh
#echo "real_ip_header CF-Connecting-IP;" >> $CLOUDFLARE_IP_RANGES_FILE_PATH
```

Use the make command to build your images \(not sure if you need the microscanner token with make\). If you are already in a git branch, the docker images will be tagged with the branch name. Specify if you just want a specific docker image made, out of the 5 and use the -l flag to build locally.

```bash
BUILD_FLAGS=-l BUILD_LIST=openresty make build
```

Once you have done this you will see your new image:

```bash
docker images

REPOSITORY                                           TAG                                        IMAGE ID            CREATED             SIZE
gcr.io/planet-4-151612/openresty                     ebd411d                                    bcdfffadda22        9 minutes ago       344MB
gcr.io/planet-4-151612/openresty                     geoip_updates               bcdfffadda22        9 minutes ago       344MB
```

If you want to start your image locally using the image ID. Starting your Docker containers with docker container run --rm tells Docker to remove the container when it exits. The downside of this method is that you’ll not be able to access the Docker logs after the container exits.:

```bash
docker run --rm bcdfffadda22
```

Then get the container name:

```bash
➜  ~ docker ps
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS               NAMES
469073f66df8        bcdfffadda22        "/app/bin/entrypoint…"   18 seconds ago      Up 16 seconds       80/tcp, 443/tcp     vigorous_hertz
```

To enter into a bash CLI of your new image:

```bash
docker exec -it vigorous_hertz bash
```

What you will find in the /app directory are mostly the same files that reside in the openresty/ repo. Additionally there is a env and source dir. You can check your config loaded correctly, if you added scripts you can check they run inside your new image.

### Testing locally

Then you will want to test your changes using the prebuilt bats tests..... first you might need to install some dependencies, then run the tests

```bash
brew install bats
npm i tap-xunit
brew install the_silver_searcher
npm install -g junit-merge

planet4-docker geoip_updates:> make test

# You can also just run the test for the particular area you are interested in, this will build the image and execute the tests:
planet4-docker geoip_updates:> bats tests/src/planet-4-151612/openresty/tests/20_test_geoip2.bats
```

Since I changed the openresty & geoip config, I am most interested in these results:

```bash
--- openresty.tap
1..41
ok 1 container starts
ok 2 print app environment
ok 3 GEOIP2_ENABLED Disabled - 'Country: __P4_GEOIP_COUNTRY_CODE__' in test output
ok 4 container responds on port 80 with status 200
ok 5 container fails to respond on port 443
ok 6 http response contains regex 'nginx version: openresty/1.15.8.2'
ok 7 http response contains regex 'built with OpenSSL'
ok 8 container cleans up
ok 9 GEOIP - container builds
ok 10 GEOIP - container starts
ok 11 GEOIP - 'Country: Unknown' for localhost lookups
ok 12 GEOIP - IPv4 - Country code and name in response headers
ok 13 # skip (#FIXME: Test currently failing) GEOIP - IPv6 - Country code and name in response headers
ok 14 GEOIP - 'Country: AU' sub_filter rewrite
ok 15 GEOIP - container cleans up
```

You can also check the output of tests here on your local machine: /tmp/artifacts/logs

To stop and terminate your docker image, run:

```bash
docker stop 43dfe671813d
```

To do this next step you will need to be logged into Docker on the command line using docker login --username  \(for Mac users this can be problematic, you will need an [access code](https://hub.docker.com/settings/security), and if you have issues delete this line "credsStore" : "desktop", in this file $HOME/.docker/config.json, and restart docker and try again. To update planet4-builder manually and ensure the builder container is updated with your docker changes run:

Alternately you can commit your changes to a feature branch and they will be updated automatically by CircleCI.

```bash
make build
.....
Successfully built 646680e919c6
Successfully tagged greenpeaceinternational/p4-builder:geoip_updates
Successfully tagged greenpeaceinternational/p4-builder:build-local
Successfully tagged greenpeaceinternational/p4-builder:fb8a889

make push-tag
```

### Testing remotely \(using CircleCI\)

To use CircleCI to test your new docker images \(with your NRO develop repo for example\) you need to push the new docker tagged images to the remote repo as follows. :

```bash
make build
```

For more information on testing remotely with your repo refer to [this](https://www.notion.so/p4infra/Modifying-P4-helm-charts-cc37e10fdc8f45a3b0b64650c15ed453#b0261f9ddfaf4cd29c133bf013da4a88).

### Writing new shell scripts

Whether for cron or any other need, when writing new shell scripts ensure all shellscripts use the suffix '\*.sh', for two reasons 1. It helps IDEs detect syntax. 2. make lint can then easily identify all shell scripts in subdirectories with

```bash
find . -type f -name '*.sh' | xargs shellcheck
```

### Writing new tests

If you have added new functionality to the docker images, you need to make new tests to validate the functionality. In this next example I will show new cron jobs added, and the subsequent BATS tests needed to unit test this new code.

[sstephenson/bats](https://github.com/sstephenson/bats)

This is the cron job setup:

```bash
# Setup cron job to update Cloudflare ips
CRON_SCHEDULE="cron.daily"
CLOUDFLARE_DAILY_CRON_FILE_PATH="/etc/$CRON_SCHEDULE/nginx_update_cloudflare_ips"
CLOUDFLARE_CRON_FILE="/app/bin/nginx_update_cloudflare_ips.sh"

ln -s $CLOUDFLARE_CRON_FILE $CLOUDFLARE_DAILY_CRON_FILE_PATH
```

This is the corresponding BATs test which is just one of the tests setup for enabling cloudflare in ...tests/src/planet-4-151612/openresty/tests/20\_test\_cloudflare.bats:

```bash
@test "Cloudflare - Cron job deployed" {
  run docker-compose -f "${BATS_TEST_DIRNAME}/../docker-compose.cloudflare.yml" exec app run-parts --list /etc/cron.daily
  [ $status -eq 0 ]
  printf '%s' "$output" | grep "nginx_update_cloudflare_ips"
}
```

### Using Dockerize \(and adding variables to docker images\)

In P4 the [dockerize](https://github.com/jwilder/dockerize) tool is used to ease the building of docker images. In this section we will be talking about using dockerize to "generate application configuration files at container startup time from templates and container environment variables". Refer to the repo [file structure](https://www.notion.so/p4infra/Modifying-P4-Docker-Images-55cc2052d25643fc9ec4dc3d38bb90f6#19cb33aaf4d04798b201380fcb72ff1f) for details on the location of templates. Create the new template file in the templates structure, where the actual file will be created in the real dir structure. I am creating the GEOIP.conf file in this example, so I have added it to the list of files to be dockerized, for more info on dockerize go here: [https://github.com/jwilder/dockerize](https://github.com/jwilder/dockerize).

```bash
files=(
/etc/nginx/conf.d/90_geoip.conf
/etc/nginx/server.d/90_geoip.conf
/etc/GeoIP.conf
)

for f in "${files[@]}"
do

dockerize -template "/app/templates$f.tmpl:$f"
done
```

Template files use the go templating language, so you can use variables, if statements etc. to build the actual config file in this example I am adding variables to the GeoIP.conf file.

```jsx
# `AccountID` is from your MaxMind account.
AccountID {{ .Env.GEOIP_ACCOUNTID }}

# `LicenseKey` is from your MaxMind account
LicenseKey {{ .Env.GEOIP_LICENSE }}
```

You also need to add new environment variables to the relevant to ENV section of Dockerfile.in

```jsx
ENV \
    GEOIP_ACCOUNTID="${GEOIP_ACCOUNTID}" \
    GEOIP_LICENSE="${GEOIP_LICENSE}" \
```

Update read.me.in for the repo to include new variables, identify what their default values are, if they are secret in this example, and where they are sourced from.

```jsx
GEOIP_ACCOUNTID          | \_\_DISABLED\_\_   | Maxmind account, can be regenerated via [Maxmind.com](https://www.maxmind.com/en/accounts/current/people/current/)
GEOIP_LICENSE            | \_\_DISABLED\_\_   | Maxmind license, can be regenerated via [Maxmind.com](https://www.maxmind.com/en/accounts/current/people/current/)
```

### Secrets management

Since all of the P4 Infra code is available publicly it is important that secrets are kept just that, secret. But how do we share secrets, use generic accounts for generating secrets etc? \#FIX All secrets should be stored in base64 encoding and the encoded secret added to CircleCI.

```jsx
openssl enc -base64 <<< 'your secret'                                                                                 ✘ INT
YourEncodedSecret==
```

Add them to CircleCI global env variables. All P4 global environment variables are stored in the [global context](https://app.circleci.com/settings/organization/github/greenpeace/contexts/0ddf5fc9-dae2-4b0b-a45d-dfdc7cef61fd).

Additionally you have to add these variables to your [Helm charts](infra-helm-charts.md).

