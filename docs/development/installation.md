---
description: Get a full Planet 4 development environment to your local machine
---

# Installation

We are using [`wp-env`](https://github.com/WordPress/gutenberg/blob/trunk/packages/env/README.md) as a base and pulling all necessary themes and plugins so that you can develop for your website more easily.

### System Requirements

* [docker](https://docs.docker.com/get-docker/) and [docker-compose](https://docs.docker.com/compose/reference/)
* [node/npm](https://docs.npmjs.com/downloading-and-installing-node-js-and-npm) and [nvm](https://github.com/nvm-sh/nvm)
* curl
* wp-env: `npm -g i @wordpress/env`
* _optional:_ [_gsutil_](https://cloud.google.com/storage/docs/gsutil\_install)

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

#### Install docker

(Optional) In case there is a previous docker install you want to remove, you can probably do:&#x20;

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

```
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

Ensure it has been installed with:&#x20;

```
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

```
id -nG
```

The output should be something like:

```bash
youruser sudo docker
```

#### Install docker-compose

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

```
sudo apt install -y make unzip
```

#### Troubleshooting

In case the WSL version for your distro is 1, you can update it using:

```bash
wsl --set-version Ubuntu-18.04 2
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
Install updated `bash` , `make` and `grep` commands

```
brew install bash make grep
```

Replace default commands by the updated ones:

* Allow and use `bash`:
  * Edit `/etc/shells` and add `/usr/local/bin/bash`
  * Run `chsh -s /usr/local/bin/bash`
*   Add `make` and `grep` to your `$PATH`and reload config:

    * Edit `~/.bashrc` (or your custom shell equivalent) and add

    &#x20;  `PATH="$(brew --prefix)/opt/make/libexec/gnubin:$PATH"`

    &#x20;  `PATH="$(brew --prefix)/opt/grep/libexec/gnubin:$PATH"`

    * Reload with `source ~/.bashrc`

Install `envsubst`

`envsubst` is installed as part of `gettex`. Install like this:

```
brew install gettext
brew link --force gettext
```
{% endtab %}
{% endtabs %}

### Before anything

* Clone the develop repo:

```bash
git clone https://github.com/greenpeace/planet4-develop/
```

* Set node version:

```bash
nvm use
```

* Check the requirements:

```bash
npm run env:requirements
```

* Install npm packages:

```bash
npm install
```

### Installation

Install default developer environment with:

```
npm run env:install
```

For NRO developers, use instead:

```
npm run nro:install <your nro name>
```

### Clean up

```
npm run env:clean
```

### All commands

```
npm run
- env:requirements                  Check requirements
- env:install                       Install default Planet 4 theme and database
- env:start                         Start the environment
- env:stop                          Stop the environment
- env:clean                         Clean wp-env and delete all Planet 4 files
- env:config                        Show generated configuration
- env:fix-permissions [all]         Fix files permissions to current user as owner
- env:clean-repos                   Remove main repos if they are not git repositories
- env:update                        Update installer, base and main repos
- env:status                        Status of docker containers
- env:e2e-install                   Install E2E tests dependencies
- env:e2e                           Run E2E tests on local instance
- nro:install <?nro>                Install NRO theme and database
- nro:enable                        Enable installed NRO theme and database
- nro:disable                       Switch back to default theme and database
- nro:theme <?nro>                  Clone NRO theme in themes dir
- build:assets                      Build main repos assets
- build:repos                       Clone and install main repos
- db:import <dump path> <db name>   Import database dump (gzip)
- db:use <db name>                  Switch to database
- shell:php                         Access PHP shell (WordPress container)
- shell:mysql                       Access MySQL console (current database)
- elastic:activate                  Activate ElasticSearch container and plugin
- elastic:deactivate                Deactivate ElasticSearch container and plugin
```

### Workflow

* Themes are installed under `planet4/themes`
  * the theme is usually cloned by the installer and should be modifiable right away
  * you can add or create any theme in this folder, it will be available in your local instance
* Plugins are installed under `planet4/plugins`
  * if a plugin you want to work on is not writable, either use `npm run env:fix-permissions`, or remove it and clone your own repo to replace it
  * you can add or create any plugin in this folder, it will be available in your local instance

### Resources

* [wp-env documentation](https://github.com/WordPress/gutenberg/blob/trunk/packages/env/README.md)
* [WordPress developers blog](https://developer.wordpress.org/news/2023/03/quick-and-easy-local-wordpress-development-with-wp-env/)
