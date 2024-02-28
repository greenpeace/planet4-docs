---
description: How to create a new P4 NRO instance
---

# NRO Generation

## Requirements

### Local dependencies

* [Docker](https://www.docker.com/)
* [gcloud](https://cloud.google.com/sdk/docs/)
* [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)
* [helm](https://github.com/helm/helm/releases)

### Permissions and repositories

* Google Cloud Project access in the development (`planet-4-151612`) and production (`planet4-production`) projects.
* Git repositories checked out (main branch)
  * [planet4-nro-generator](https://github.com/greenpeace/planet4-nro-generator/)
  * [planett4-helper-scripts](https://github.com/greenpeace/planet4-helper-scripts)

## Build the configuration

Get inside the planet-nro-generator repository and follow the instructions on [README.md](https://github.com/greenpeace/planet4-nro-generator/blob/main/README.md). In a nutsell:

```
./configure.sh
make run
```

{% hint style="info" %}
If you want to create only a Development environment just type false for release and production.
{% endhint %}

{% hint style="info" %}
There are two manual steps in this process. Adding a github ssh key to CircleCI and create a new set of Google OAuth tokens. You should get quick links to both of them on the terminal output.
{% endhint %}

## Create the environments

First connect to the development cluster

```bash
# get connected to google cloud development cluster:
gcloud container clusters get-credentials p4-development --zone us-central1-a --project planet-4-151612

# Start using the development cluster
kubectl config set-context p4-develop --namespace=develop --cluster=gke_planet-4-151612_us-central1-a_p4-development --user=gke_planet-4-151612_us-central1-a_p4-development

# switch to our own context
kubectl config use-context p4-develop
```

Get inside the `planet-helper-scripts` repository and follow the instructions on [README.md](https://github.com/greenpeace/planet4-helper-scripts/blob/master/README.md). In a nutshell:

1. The configure command will ask you about the helm chart to use.
2. It will also ask you to provide the OAuth tokens you created in the previous step.
3. The make command will ask a few times about replacing `defaultcontent` path with your own. Choose `y`.

```bash
./configure.sh
make
```

If you are also creating staging and production environments you can repeat these steps, after you switch to the production cluster. Here is an example for `cidev` release instance:

```bash
# get connected to the google cloud for the production cluster
gcloud container clusters get-credentials planet4-production --zone us-central1-a --project planet4-production

# or if i wanted a specific site context for the release. (replace the "cidev" bellow with your site):
kubectl config set-context planet4-cidev-release --namespace cidev --cluster gke_planet4-production_us-central1-a_planet4-production --user gke_planet4-production_us-central1-a_planet4-production

# switch to that context (replace the "cidev" bellow with your site):
kubectl config use-context planet4-cidev-release
```

Once this is done, you can just re-run `./configure.sh` and `make`. In order for the staging and production helm charts to be listed in the configure command, one successful deploy should be completed in the CI. Make sure to tag the new deploy repository to trigger that.
