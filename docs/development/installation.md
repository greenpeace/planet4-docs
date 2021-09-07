---
description: Get a full Planet 4 development environment to your local machine
---

# Installation

We are using `docker` and `docker-compose` to provide as consistent a local development environment as possible, in accordance with [12factor](https://12factor.net/) development principles.

## System Requirements

Firstly, check you have all the requirements on your system. For Linux users, these are either preinstalled or available through your distribution's package manager.

* [git](https://www.git-scm.com/downloads)
* [make](https://www.gnu.org/software/make/) - see MacOS instructions in [platform specific steps](installation.md#platform-specific-steps)
* [docker](https://docs.docker.com/engine/installation/)
* [docker-compose](https://github.com/docker/compose/releases) - This should be installed along with docker on OSX and Windows
* [envsubst](https://stackoverflow.com/questions/23620827/envsubst-command-not-found-on-mac-os-x-10-8/23622446#23622446) - This should be pre-installed on most Linux distributions - see MacOS instructions in platform specific steps
* [unzip](https://linuxhint.com/unzip_command_-linux/)

#### Platform specific steps

{% tabs %}
{% tab title="Linux" %}
Install basic system dependencies:

```bash
sudo apt install -y git make unzip apt-transport-https ca-certificates curl gnupg-agent software-properties-common
```

Install Docker and docker-compose. We prefer to install it from upstream, to have the latest version:

```bash
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository -y "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io
```

Add your user to the `docker` group to avoid using `sudo` on every command:

```bash
sudo usermod -aG docker ${USER}
```

Refresh your group membership by running:

```bash
su - ${USER}
```

To verify that everything works you can just run the hello-world docker container:

```bash
docker run hello-world
```
{% endtab %}

{% tab title="Windows" %}
In order to run the Planet4 development environment in Windows you'll need to enable **Windows Subsystem for Linux \(WSL\)**. WSL allows you to run a Linux environment within Windows. You'll need to enable WSL and install Ubuntu. The current version \(WSL 2\) comes with a lot of enhancements and better disk performance.  
  
You can follow the installation instructions [here](https://ubuntu.com/wsl).

[Here is a post](https://nickjanetakis.com/blog/a-linux-dev-environment-on-windows-with-wsl-2-docker-desktop-and-more) with some more detail about setting up WSL 2 \(and many other tips for Windows devs!\)

Note: this guide was created using the Ubuntu 18.04 image.

**Verify WSL 2 and the Ubuntu image are installed**

From a Powershell window, run this command to see the installed distros:

```bash
wsl -l -v
```

You should see the distro you installed in the list, with the WSL version: `Ubuntu 18.04 - 2`

#### Make sure WSL is enabled

Look here for more details. and set version for a specific distribution:

```bash
wsl --set-version Ubuntu-18.04 2
```

#### Install Docker

\(Optional\) In case there is a previous docker install you want to remove, you can probably do: 

```bash
sudo apt remove docker docker-engine docker.io containerd runc
```

Download the Docker GPG key for APT and add it to its keychain:

```bash
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
```

Add the Docker repository to the APT sources:

```bash
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
```

Update the APT registry:

```text
sudo apt update
```

Ensure you'll download Docker from their official repo instead of the default by running:

```bash
apt-cache policy docker-ce
```

You should get something like:

```yaml
docker-ce:
  Installed: (none)
  Candidate: 18.03.1~ce~3-0~ubuntu
  Version table:
     18.03.1~ce~3-0~ubuntu 500
        500 https://download.docker.com/linux/ubuntu bionic/stable amd64 Packages
```

Install docker-ce:

```bash
sudo apt install docker-ce
```

Ensure it has been installed with: 

```text
sudo service docker status
```

Add your user to the `docker` group to avoid using `sudo` on every command:

```bash
sudo usermod -aG docker ${USER}
```

Refresh your group membership by running:

```bash
su - ${USER}
```

You can verify this by running:

```text
id -nG
```

The output should be something like:

```bash
youruser sudo docker
```

#### Install Docker-Compose

Look for the latest docker-compose version and run:

```bash
sudo curl -L "https://github.com/docker/compose/releases/download/[THE DOCKER VERSION]/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
```

For example:

```bash
sudo curl -L "https://github.com/docker/compose/releases/download/1.27.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
```

This will automatically download the specified version for your architecture.

Add execution permissions for `docker-compose`:

```bash
sudo chmod +x /usr/local/bin/docker-compose
```

Install make and zip:

```text
sudo apt install -y make unzip
```

#### Troubleshooting

In case the WSL version for your distro is 1, you can update it using:

```bash
wsl --set-version Ubuntu-18.04 2
```

WSL 2 Networking Issues:  
[https://github.com/microsoft/WSL/issues/5336](https://github.com/microsoft/WSL/issues/5336)

Docker Issues:  
[https://nickjanetakis.com/blog/setting-up-docker-for-windows-and-wsl-to-work-flawlessly](https://nickjanetakis.com/blog/setting-up-docker-for-windows-and-wsl-to-work-flawlessly)[https://stackoverflow.com/questions/63497928/ubuntu-wsl-with-docker-could-not-be-found](https://stackoverflow.com/questions/63497928/ubuntu-wsl-with-docker-could-not-be-found)[https://github.com/docker/compose/issues/2738](https://github.com/docker/compose/issues/2738)

sudo pip3 install -IUq docker-compose

```bash
The command 'docker-compose' could not be found in this WSL 2 distro.
We recommend to activate the WSL integration in Docker Desktop settings.
```

See [https://docs.docker.com/docker-for-windows/wsl/](https://docs.docker.com/docker-for-windows/wsl/) for details.

Makefile: 212: recipe for target 'start' failed

Segmentation fault

[https://github.com/microsoft/WSL/issues/4694\#issuecomment-556095344](https://github.com/microsoft/WSL/issues/4694#issuecomment-556095344)

```bash
@therealkenc, @squeaky-pl Could you try this?

%userprofile%\.wslconfig

[wsl2]
kernelCommandLine = vsyscall=emulate
```
{% endtab %}

{% tab title="MacOS" %}
Install updated `bash` , `make` and `grep` commands

```text
brew install bash make grep
```

Replace default commands by the updated ones:

* Allow and use `bash`:
  * Edit `/etc/shells` and add `/usr/local/bin/bash`
  * Run `chsh -s /usr/local/bin/bash`
* Add `make` and `grep` to your `$PATH`and reload config:

  * Edit `~/.bashrc` \(or your custom shell equivalent\) and add

     `PATH="$(brew --prefix)/opt/make/libexec/gnubin:$PATH"`

     `PATH="$(brew --prefix)/opt/grep/libexec/gnubin:$PATH"`

  * Reload with `source ~/.bashrc`

Install `envsubst`

`envsubst` is installed as part of `gettex`. Install like this:

```
brew install gettext
brew link --force gettext
```
{% endtab %}
{% endtabs %}

#### Contribution Requirements

The following dependencies are required only if you want to contribute to the docker-composer repository. These tools are used for linting code changes:

* [shellcheck](https://github.com/koalaman/shellcheck)
* [yamllint](https://github.com/adrienverge/yamllint)
* [node/npm](https://nodejs.org/)

## First run

The first time you'll need to follow the steps below, in order to clone this repo and build the containers.

```bash
# Clone the repository
git clone https://github.com/greenpeace/planet4-docker-compose

# Navigate to new directory
cd planet4-docker-compose

# Build containers, start and configure the application
make dev
```

See [Fixing `make dev` errors](installation.md#fixing-make-dev-errors) if you have any issues with this command.

If you want the application repositories to be cloned using ssh protocol, instead of https, you can use a variable:

```bash
GIT_PROTO="ssh" make dev
```

or for a more permanent solution, add to a file `Makefile.include`:

```bash
GIT_PROTO := 'ssh'
```

If you want to run docker-compose commands directly:

```bash
# View status of containers
docker-compose ps

# View log output
docker-compose logs -f
```

On first launch, the container bootstraps the installation with composer then after a few minutes all services will be ready and responding to requests.

When the terminal is finished, and you see the line 'ready', navigate to [www.planet4.test](http://www.planet4.test).

It's not necessary to re-run `make dev` each time you wish to start the local development environment. To start containers on subsequent runs, use:

```bash
make run
```

### Full environment

In order to keep the environment light, the default setup skips some containers that are useful for debugging and testing. Namely: PhpMyAdmin, ElasticHQ and Selenium. If you need them, you can use the full environment config by setting an environment variable:

```bash
COMPOSE_FILE="docker-compose.full.yml" make run
```

For a more permanent solution, edit a file `.env` and change the variable there:

```bash
COMPOSE_FILE="docker-compose.full.yml"
```

### Fast install

The installation process involves a lot of file operations and can be a bit long and error prone. You can use a faster installation process, replacing `make dev` with:

```text
make dev-from-release
```

This will download a pre-compiled installation instead of compiling everything from your machine.

## Troubleshooting

To view the output of running containers:

```bash
docker-compose logs
```

If at any point the install process fails, with Composer showing a message such as `file could not be downloaded (HTTP/1.1 404 Not Found)`, this is a transient network error and re-running the install should fix the issue.

### Fixing `make dev` errors

Then, when running `make dev`, if you get the following error:

```bash
ERROR: for traefik  Cannot start service traefik: driver failed programming external connectivity on endpoint planet4dockercompose_traefik_1 (f7c7a3eded69b5451a6e2e45d13ab312c2a2e809ce5cd69994119368294ec478): Bind for 0.0.0.0:8080 failed: port is already allocated
ERROR: Encountered errors while bringing up the project.
make[1]: *** [up] Error 1
make: *** [run] Error 2
```

This error means that there is a process that is already registered to use port `8080`. It is most likely a running docker container that is using this port, but to check, run this command:

```bash
lsof -nP -iTCP -sTCP:LISTEN | grep 8080
```

If result will be something like this:

```bash
com.docke  5086 <USERNAME>   84u  IPv6 0xdc100c215fbb6b93      0t0  TCP *:8080 (LISTEN)
```

That's a docker container. \(If it is a different process owning the port, you could run `kill -9 <PID>`\).

To check which container is using this port you can run:

```bash
$ docker container ls | grep 8080
<CONTAINER_ID>   containers.xxx.com/my-container:1.1          "/entrypoint.sh /usr…"   2 months ago    Up 10 minutes             0.0.0.0:8080->8080/tcp                           my-container_1
```

To stop the container, run:

```bash
docker kill <CONTAINER_ID>
```

Then re-run `make dev` and it should be fine. If it still doesn't work, then [raise an issue](https://github.com/greenpeace/planet4-docker-compose/issues).

## Stop

To stop all the containers just run:

```bash
make stop
```

## Updating

To update all containers, run:

```bash
make run
```

Other commands are listed under:

```bash
make help
```

## Editing source code

By default, the Wordpress application is bind-mounted at:

`./persistence/app/`

All planet4 code will be under the Wordpress' content folder:

`./persistence/app/public/wp-content/`

## Logging in

### Administrator login

Backend administrator login is available at [www.planet4.test/wp-admin/](http://www.planet4.test/wp-admin/).

Login username is `admin` and the password is `admin`.

### Database access via phpMyAdmin

[phpmyadmin](https://hub.docker.com/r/phpmyadmin/phpmyadmin/) login: [pma.www.planet4.test](http://pma.www.planet4.test)

### Elasticsearch access via ElasticHQ

[elastichq](https://hub.docker.com/r/elastichq/elasticsearch-hq/) Access at [localhost:5000/](http://localhost:5000/)

## NRO sites

You can also use this setup to work on an NRO site.

**First, create/edit `Makefile.include`** to contain:

```bash
# by default, other values will be deduced from this name
NRO_NAME := netherlands

# a database can be imported during installation, 
# if you have gcloud installed and specify a version
NRO_DB_VERSION ?= latest

# optionally, overwrite theme, repo
#NRO_REPO := https://github.com/greenpeace/planet4-netherlands.git
#NRO_THEME := planet4-child-theme-netherlands

# optionally specify a branch, will default to "main" otherwise
#NRO_BRANCH := my-other-branch

# by default it will test against your local docker-compose setup version
# but you can optionally specify these variables to run the tests against
# a deployed environment
#NRO_APP_HOSTNAME := k8s.p4.greenpeace.org
#NRO_APP_HOSTPATH := nl
```

**Then enable the NRO:**

```text
make nro-enable
```

**And, run the tests:**

```text
make nro-test-codeception
```

The tests work a bit differently to the main ones, see the [Testing section]() for more info.

### Fast install

Instead of a classic install and NRO activation `make dev && make nro-enable`, you can use a faster installation process, with:

```text
make nro-from-release
```

This will download a pre-compiled installation of WordPress and Planet4 theme/plugins, and enable your NRO themes/plugins on top of it.

### Install variables

You can visualize how variables will be generated with `make nro-list-variables` \(it takes your `Makefile.include` into account\).

```text
> NRO_NAME=finland make nro-list-variables
NRO variables:
* NRO_APP_HOSTNAME = www.planet4.test
* NRO_APP_HOSTPATH =
* NRO_BRANCH = main
* NRO_DATABASE = planet4_finland
* NRO_DB_DUMP =
* NRO_DB_IMPORT = true
* NRO_DB_BUCKET = planet4-finland-master-db-backup
* NRO_DB_PROJECT = planet-4-151612
* NRO_DB_VERSION = latest
* NRO_DIRNAME = planet4-finland
* NRO_IMG_BUCKET = planet4-finland-stateless
* NRO_NAME = finland
* NRO_REPO = https://github.com/greenpeace/planet4-finland.git
* NRO_THEME = planet4-child-theme-finland
```

### Database download and import

A database backup can be automatically downloaded and imported, if variable `NRO_DB_VERSION` is provided. It can take a version number `NRO_DB_VERSION ?= 1.6`, or a keyword **latest** `NRO_DB_VERSION ?= latest` that will try to get the latest file.  
 It uses `gsutil`, so you need to install gcloud locally, see [https://cloud.google.com/storage/docs/gsutil\_install](https://cloud.google.com/storage/docs/gsutil_install) , and authenticate with `gcloud auth login`.  
 Alternatively, you can download a dump manually and specify it with `NRO_DB_DUMP ?= my-db.sql.gz`. If the file does not exist, the command will try to download it from gcloud.  
 NRO databases are imported in a different database than the default one, the name of the database is `planet4_$(NRO_NAME)`. This means you can have multiple databases living in the db container. If a database with this name already exists and has wordpress tables, the script will prompt for your approval before overwriting it.

It is possible to specify a different gcloud project `NRO_DB_PROJECT` and bucket `NRO_DB_BUCKET` if the default configuration doesn't fit your need.

### Image proxy

An image proxy is automatically configured when you enable your NRO environment.  
Image proxy is a fallback that converts images calls failing locally to `http://www.greenpeace.org/static/${NRO_IMG_BUCKET}/` . This allows you to see images from production without downloading them.

```bash
#Image proxy is enabled by default, to disable it:
make nro-disable-img-proxy
#to re-enable it:
make nro-enable-img-proxy

#it is based on auto-generated variable NRO_IMG_BUCKET
#marking it empty will disable the installation of the proxy
NRO_IMG_BUCKET:=''
```

## Advanced features

### Production Containers

To run production containers locally, it's necessary to define two environment variables and then run `make appdata`. This tells docker-compose which containers to use, and then copies the contents of the `/app/source` directory to the local `persistence` folder.

Example:

```bash
# Change these variables to the container images you wish to run
export APP_IMAGE=gcr.io/planet-4-151612/planet4-flibble-app:develop
export OPENRESTY_IMAGE=gcr.io/planet-4-151612/planet4-flibble-openresty:develop
# Copy contents of container /app/source into local persistence folder
make appdata
# Bring up container suite
make run
```

From here, you can download a database export from GCS \(for [example](https://console.cloud.google.com/storage/browser/planet4-flibble-db-backup?project=planet-4-151612)\) and visit [phpMyAdmin](http://pma.www.planet4.test/) to perform the import.

### Default Content

#### Import default content

The default content is imported automatically for you.

**Troubleshooting**

If you want to revert back to the default content database you can delete the database container and volume and recreate:

```bash
make revertdb
# ... wait for a bit ...
make config flush
```

### Clear caches

To completely clear redis of the full page cache, as well as object and transient caches:

`make flush`

Alternatively, to only clear the object cache: Login to Wordpress admin and click on _Flush Object Cache_ on the Dashboard page. To only clear the full page cache: click _Purge Cache_ from the top menu.

#### FastCGI cache purges

The Wordpress plugin [nginx-helper](https://wordpress.org/plugins/nginx-helper/) is installed to enable FastCGI cache purges. Log in to the backend as above, navigate to [Settings &gt; Nginx Helper](http://www.planet4.test/wp-admin/options-general.php?page=nginx) and click:

* Enable Purge
* Redis Cache
* Enter `redis` in the Hostname field
* Tick all checkboxes under 'Purging Conditions'

**Timber / Twig caches**

Templates cache should be disabled in development mode.   
It can be cleared by running a `wp` command:   
`docker-compose exec php-fpm sh -c 'wp timber clear_caches'`

This command will return a warning if timber or twig cache were already empty.

### WP-Stateless GCS bucket

If you want to use the Google Cloud Storage you'll have to configure [WP-Stateless](https://github.com/wpCloud/wp-stateless/). The plugin is installed and activated, however images will be stored locally until remote GCS storage is enabled in the administrator backend. [Log in](http://www.planet4.test/wp-login.php) with details gathered [from here](https://github.com/greenpeace/planet4-docker-compose/blob/master/docs/advanced.md#login) and navigate to [Media &gt; Stateless Setup](http://www.planet4.test/wp-admin/upload.php?page=stateless-setup).

You will need a Google account with access to GCS buckets to continue.

Once logged in:

* Click 'Get Started Now'
* Authenticate
* Choose 'Planet-4' project \(or a custom project from your private account\)
* Choose or create a Google Cloud Bucket - it's recommended to use a bucket name unique to your own circumstances, eg 'mynamehere-test-planet4-wordpress'
* Choose a region close to your work environment
* Skip creating a billing account \(if using Greenpeace Planet 4 project\)
* Click continue, and wait a little while for all necessary permissions and object to be created.

Congratulations, you're now serving media files directly from GCS buckets!

### ElasticSearch indexing

The Elasticsearch host is configured during initial build. But if you want to confirm that the setting is right, navigate to [Settings &gt; ElasticPress &gt; Settings](http://www.planet4.test/wp-admin/admin.php?page=elasticpress-settings). The Host should be: `http://elasticsearch:9200`.

Anytime you want to re-index Elasticsearch you can just run: `make elastic`.

### Environment variables

This docker environment relies on the mysql official image as well as on the [planet4-base](https://github.com/greenpeace/planet4-base) application image.

Both images provide environment variables which adjust aspects of the runtime configuration. For this environment to run only the database parameters such as hostname, database name, database users and passwords are required.

Initial values for this environment variables are dummy but are good to go for development purposes. They can be changed in the provided `app.env` and `db.env` files, or directly in the [docker-compose.yml](https://docs.docker.com/compose/compose-file/#environment) file itself.

#### Some useful variables

See [openresty-php-exim](https://github.com/greenpeace/planet4-docker/tree/develop/source/planet-4-151612/openresty-php-exim)

* `NEWRELIC_LICENSE` set to the license key in your NewRelic dashboard to automatically receive server and application metrics
* `PHP_MEMORY_LIMIT` maximum memory each PHP process can consume before being terminated and restarted by the scheduler
* `PHP_XDEBUG_REMOTE_HOST` in development mode enables remote [XDebug](https://xdebug.org/) debugging, tracing and profiling

### Development mode

_@todo: Document some of the useful builtin configuration options available in upstream docker images for debugging, including:_

* XDebug remote debugging
* Smarthost email delivery and interception
* exec function limits
* Memory and performance tweaks

#### **XDebug and IDE configuration**

Install XDebug on the PHP container by running:

```text
make dev-install-xdebug
```

Switch XDebug mode with `xdebug-mode` command and an environment variable:

```text
XDEBUG_MODE=debug,profile make xdebug-mode
```

**IDE specific configuration**

{% tabs %}
{% tab title="VS Code" %}
**Installation**

* Install extension _PHP Debug_  [https://marketplace.visualstudio.com/items?itemName=felixfbecker.php-debug](https://marketplace.visualstudio.com/items?itemName=felixfbecker.php-debug) Source: [https://github.com/xdebug/vscode-php-debug](https://github.com/xdebug/vscode-php-debug)
* Go to the debugger tab \(_ctrl+shift+D_\)
* Click on "C_reate a launch.json file_", select _PHP_
* File should be configured by default on port 9000
* Add a `pathMappings` option in the first configuration, according to the path of the project you opened. For example:

```text
# Root of your project is planet4-docker-compose/persistence/app :
      "pathMappings": {
        "/app/source/public": "${workspaceFolder}/public"
      }
# Root of your project is planet4-docker-compose:
      "pathMappings": {
        "/app/source/public": "${workspaceFolder}/persistence/app/public"
      }
```

A complete `launch.json` file looks like this:

```javascript
{
    // Use IntelliSense to learn about possible attributes.
    // Hover to view descriptions of existing attributes.
    // For more information, visit: https://go.microsoft.com/fwlink/?linkid=830387
    "version": "0.2.0",
    "configurations": [
        {
            "name": "Listen for XDebug",
            "type": "php",
            "request": "launch",
            "port": 9000,
            "pathMappings": {
              "/app/source/public": "${workspaceFolder}/public"
            },
            "log": true
        },
        {
            "name": "Launch currently open script",
            "type": "php",
            "request": "launch",
            "program": "${file}",
            "cwd": "${fileDirname}",
            "port": 9000
        }
    ]
}
```

The `"log": true` option allows you to see the communication between XDebug and your IDE.

**Using XDebug**

* Start a debugging session in the _Run and Debug_ tab by selecting `Listen to XDebug` and hitting `F5`
* Add some breakpoints in your source code by blicking on the left side of line numbers in the editor. You can also check all Notices/Warnings/Errors in the Breakpoints section of the sidebar, to trigger a pause on each of those events
* Run your code, by navigating to planet4.test, using wp commands or any other action that will execute PHP scripts
* Stop your session by clicking on the Stop icon or using `Shift+F5`
{% endtab %}

{% tab title="PHPStorm" %}

{% endtab %}
{% endtabs %}

### Port conflicts

If you are running any other services on your local device which respond on port 80, you may experience errors attempting to start the environment. Traefik is configured to respond on port 80 in this application, but you can change it by editing the docker-compose.yml file as below:

```text
  traefik:
    ports:
      - "8000:80"
```

The first number is the port number on your host, the second number is mapped to port 80 on the openresty service container. Now you can access the site at [www.planet4.test:8000](http://www.planet4.test:8000/) instead.

A more robust solution for hosting multiple services on port 80 is to use a reverse proxy such as Traefik or [jwilder/openresty-proxy](https://github.com/jwilder/openresty-proxy) in a separate project, and use [Docker named networking](https://docs.docker.com/compose/networking/) features to isolate virtual networks.

### Traefik administration

Traefik comes with a simple admin interface accessible at [www.planet4.test:8080](http://www.planet4.test:8080/).

