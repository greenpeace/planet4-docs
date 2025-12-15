---
description: Get a full Planet 4 development environment to your local machine
---

# Installation

We are using [`wp-env`](https://github.com/WordPress/gutenberg/blob/trunk/packages/env/README.md) as a base and pulling all necessary themes and plugins so that you can develop for your website more easily.

### System Requirements

* [docker](https://docs.docker.com/get-docker/) and [docker-compose](https://docs.docker.com/compose/reference/)
* [node/npm](https://docs.npmjs.com/downloading-and-installing-node-js-and-npm) and [nvm](https://github.com/nvm-sh/nvm)
* curl
* _optional:_ [_gcloud_](https://cloud.google.com/sdk/gcloud)

#### Platform specific steps

{% tabs %}
{% tab title="Linux" %}
Install basic system dependencies:

```bash
sudo apt install -y git make unzip apt-transport-https ca-certificates curl gnupg-agent software-properties-common
```

Install docker and docker-compose. We prefer to install it from upstream, to have the latest version:

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
In order to run the Planet4 development environment in Windows you'll need to enable **Windows Subsystem for Linux (WSL)**. WSL allows you to run a Linux environment within Windows. You'll need to enable WSL and install Ubuntu. The current version (WSL 2) comes with a lot of enhancements and better disk performance.\
\
You can follow the installation instructions [here](https://ubuntu.com/wsl).

[Here is a post](https://nickjanetakis.com/blog/a-linux-dev-environment-on-windows-with-wsl-2-docker-desktop-and-more) with some more detail about setting up WSL 2 (and many other tips for Windows devs!)

Note: this guide was created using the Ubuntu 20.04 image.

**Verify WSL 2 and the Ubuntu image are installed**

From a Powershell window, run this command to see the installed distros:

```bash
wsl -l -v
```

You should see the distro you installed in the list, with the WSL version: `Ubuntu 20.04 - 2`

**Make sure WSL is enabled**

Look here for more details. and set version for a specific distribution:

```bash
wsl --set-version Ubuntu-20.04 2
```

**Install docker**

Follow official documentation on [Docker on WSL2](https://learn.microsoft.com/en-us/windows/wsl/tutorials/wsl-containers).

**Troubleshooting**

In case the WSL version for your distro is 1, you can update it using:

```bash
wsl --set-version Ubuntu-20.04 2
```

WSL 2 Networking Issues:\
[https://github.com/microsoft/WSL/issues/5336](https://github.com/microsoft/WSL/issues/5336)

Docker Issues:\
[https://nickjanetakis.com/blog/setting-up-docker-for-windows-and-wsl-to-work-flawlessly](https://nickjanetakis.com/blog/setting-up-docker-for-windows-and-wsl-to-work-flawlessly)[https://stackoverflow.com/questions/63497928/ubuntu-wsl-with-docker-could-not-be-found](https://stackoverflow.com/questions/63497928/ubuntu-wsl-with-docker-could-not-be-found)[https://github.com/docker/compose/issues/2738](https://github.com/docker/compose/issues/2738)

sudo pip3 install -IUq docker-compose

```bash
The command 'docker-compose' could not be found in this WSL 2 distro.
We recommend to activate the WSL integration in Docker Desktop settings.
```

See [https://docs.docker.com/docker-for-windows/wsl/](https://docs.docker.com/docker-for-windows/wsl/) for details.

Makefile: 212: recipe for target 'start' failed

Segmentation fault

[https://github.com/microsoft/WSL/issues/4694#issuecomment-556095344](https://github.com/microsoft/WSL/issues/4694#issuecomment-556095344)

```bash
@therealkenc, @squeaky-pl Could you try this?

%userprofile%\.wslconfig

[wsl2]
kernelCommandLine = vsyscall=emulate
```
{% endtab %}

{% tab title="MacOS" %}
**Mac with Apple silicon (M1, M2, etc.)**

Install Rosetta 2:

```shell-session
softwareupdate --install-rosetta
```

then download and install Docker Desktop from the official documentation:

[https://docs.docker.com/desktop/install/mac-install/](https://docs.docker.com/desktop/install/mac-install/)

**Mac with Intel chip**

Download and install Docker Desktop from the official documentation:

[https://docs.docker.com/desktop/install/mac-install/](https://docs.docker.com/desktop/install/mac-install/)
{% endtab %}
{% endtabs %}

### Before anything

* Clone the develop repo:

```bash
git clone https://github.com/greenpeace/planet4-develop/
```

* Set node version:

```bash
# nvm will automatically select the right version based on the `.nvmrc` file
nvm use
```

* Install npm packages:

```bash
npm install
```

* Check the requirements:

```bash
npm run env:requirements
```

### Installation

Install default developer environment with:

```
npm run env:install
```

#### NRO environment

For NRO developers, use instead:

```bash
# NRO name is the name used for your deployment repo (repo -> name to use):
# planet4-international -> international
# planet4-australiapacific -> australiapacific
npm run env:install <nro name>
```

### Clean up

```
npm run env:clean
```

### All commands

```
npm run
- usage                             Get information about all commands
- env:requirements                  Check requirements
- env:install                       Install default Planet 4 theme and database
- env:install <?nro>                Install NRO theme and database
- env:start                         Start the environment
- env:stop                          Stop the environment
- env:clean                         Clean wp-env and delete all Planet 4 files
- env:destroy                       Delete all wp-env and Planet 4 files and containers
- env:config                        Show generated configuration
- env:fix-permissions [all]         Fix files permissions to current user as owner
- env:clean-repos                   Remove main repos if they are not git repositories
- env:update                        Update installer, base and main repos
- env:status                        Status of docker containers
- env:e2e-install                   Install E2E tests dependencies
- env:e2e                           Run E2E tests on local instance
- build:assets                      Build main repos assets
- build:repos                       Clone and install main repos
- db:import <dump path> <db name>   Import database dump (gzip)
- db:use <db name>                  Switch to database
- shell:php                         Access PHP shell (WordPress container)
- shell:mysql                       Access MySQL console (current database)
- logs:mysql                        Shows logs from the mysql container
- logs:php                          Shows logs from the php (wordpress) container
- elastic:activate                  Activate ElasticSearch container and plugin
- elastic:deactivate                Deactivate ElasticSearch container and plugin
- phpmyadmin:activate               Activate phpMyAdmin container
- phpmyadmin:deactivate             Deactivate phpMyAdmin container
- xdebug:install                    Install Xdebug in WordPress container
- xdebug:configure                  Rewrite Xdebug configuration and reload server
- xdebug:flamegraph <trace>         Generate a flamegraph from a Xdebug trace file
```

### Workflow

* Themes are installed under `planet4/themes`
  * the theme is usually cloned by the installer and should be modifiable right away
  * you can add or create any theme in this folder, it will be available in your local instance
* Plugins are installed under `planet4/plugins`
  * you can add or create any plugin in this folder, it will be available in your local instance

### Resources

* [wp-env documentation](https://github.com/WordPress/gutenberg/blob/trunk/packages/env/README.md)
* [WordPress developers blog](https://developer.wordpress.org/news/2023/03/quick-and-easy-local-wordpress-development-with-wp-env/)
