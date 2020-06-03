---
description: How to create a new P4 NRO instance
---

# NRO Generation

### Requirements

#### Local dependencies

* [Docker](https://www.docker.com/)
* [gcloud](https://cloud.google.com/sdk/docs/)
* [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)
* [helm](https://github.com/helm/helm/releases)

#### Permissions and repositories

* Google Cloud Project access in the development \(`planet-4-151612`\) and production \(`planet4-production`\) projects.
* Git repositories checked out \(master branch\)
  * [planet4-nro-generator](https://github.com/greenpeace/planet4-nro-generator/)
  * [planett4-helper-scripts](https://github.com/greenpeace/planet4-helper-scripts)

### Build the configuration

Get inside the planet-nro-generator repository and follow the instructions on [README.md](https://github.com/greenpeace/planet4-nro-generator/blob/master/README.md). In a nutsell:

```text
./configure.sh
make run
```

{% hint style="info" %}
If you want to create only a Development environment just type false for release and production.
{% endhint %}

### Create the environments

First connect to the development cluster

```bash
# get connected to google cloud development cluster:
gcloud container clusters get-credentials p4-development --zone us-central1-a --project planet-4-151612

# Start using the development cluster
kubectl config set-context p4-develop --namespace=develop --cluster=gke_planet-4-151612_us-central1-a_p4-development --user=gke_planet-4-151612_us-central1-a_p4-development

# switch to our own context
kubectl config use-context p4-develop
```

Get inside the planet-nro-generator repository and follow the instructions on [README.md](https://github.com/greenpeace/planet4-helper-scripts/blob/master/README.md). In a nutsell:

```bash
./configure.sh
make
```

{% hint style="info" %}
There are two manual steps in this process. Adding a github ssh key to CircleCI and a Google OAuth token. You should get quick links to both of them on the terminal output. 
{% endhint %}

If you are also creating release and production environments you can repeat these steps, after you switch to production cluster. Here is an example for `cidev` release instance:

```bash
# get connected to the google cloud for the production cluster
gcloud container clusters get-credentials planet4-production --zone us-central1-a --project planet4-production

# or if i wanted a specific site context for the release. (replace the "cidev" bellow with your site):
kubectl config set-context planet4-cidev-release --namespace cidev --cluster gke_planet4-production_us-central1-a_planet4-production --user gke_planet4-production_us-central1-a_planet4-production

# switch to that context (replace the "cidev" bellow with your site):
kubectl config use-context planet4-cidev-release
```
