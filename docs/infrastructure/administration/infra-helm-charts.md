---
description: Modifying P4 helm charts
---

# Helm Charts

There are two helm charts in the P4 world that build on the docker and base images to deploy the P4 K8 environments, they are wordpress and static. When making changes to this chart you deploy a tagged subversion of the chart, then pin it to your \(NRO or robot\) repo for testing before finally deploying live. Since this impacts downstream environments, its important to get it right. Ensure you do load testing etc. if making significant changes.

To do this you will need to have some understanding of Helm Charts, Wordpress, you should have already deployed the P4 environment locally. This will ensure you have most of the requirements ready for this task, refer to this [link](https://www.notion.so/p4infra/Welcome-to-P4-Infra-1b7a3e9858fd4543a96f53835bcecd1c):

[greenpeace/planet4-helm-wordpress](https://github.com/greenpeace/planet4-helm-wordpress)

## Preparation - Wordpress example

Prepare your local environment, ensure you have the correct version of helm, currently 2.14.3 Also ensure you have the minimum access requirements to upload helm charts, see the Getting Started section.

* Get the repos \(wordpress and your NRO site\)
* Rename your wordpress repo name folder to wordpress as a requirement by helm to build the "wordpress" chart.
* Add Helm repos and determine the version number of the helm chart.

```bash
git clone https://github.com/greenpeace/planet4-helm-wordpress
mv planet4-helm-wordpress wordpress
git clone <your NRO repo>
git checkout -b <new_branch_name>

helm repo add p4 https://planet4-helm-charts.storage.googleapis.com
helm repo update
helm search p4

NAME  CHART VERSION APP VERSION DESCRIPTION
p4/static  0.3.1    Greenpeace Planet 4 Static Site
p4/wordpress 0.8.5    Greenpeace Planet 4 Wordpress stack
```

* Determine build tag number by appending alpha to the latest chart version ie. 0.8.5-alpha

  Modify the local copy of the P4 WP repo to include the changes you want and save them, then in your wordpress directory.  In this case I am following on from the modifications I made to my docker images \(ie. adding new variables\) to ensure they are captured and used in my helm chart.

* Made the following edits to the wordpress HELM chart:

```bash
**Editing:  templates/deployment-openresty.yaml**

value: {{ .Values.openresty.geoip.enabled | quote }}
          {{- if .Values.openresty.geoip.enabled }}
            value: "true"
          - name: GEOIP_ACCOUNTID
            valueFrom:
              secretKeyRef:
                name: "{{ .Release.Name }}-maxmind"
                key: accountid
          - name: GEOIP_LICENSE
            valueFrom:
              secretKeyRef:
                name: "{{ .Release.Name }}-maxmind"
                key: license
          {{- else }}
            value: "false"
          {{- end }} 

**Creating:  templates/secrets-geoip.yaml**

{{- if .Values.openresty.geoip.enabled -}}
apiVersion: v1
kind: Secret
metadata:
  name: "{{ .Release.Name }}-geoip"
  labels:
    app: "{{ .Release.Name }}-openresty"
    chart: {{ template "wordpress.chart" . }}
    environment: {{ .Values.environment | quote }}
    release: "{{ .Release.Name }}"
    heritage: "{{ .Release.Service }}"
type: Opaque
data:
  accountid: {{ .Values.geoip.accountid | quote }}
  license: {{ .Values.geoip.license | quote }}
{{- end -}}

**Editing:  values.yaml**

geoip:
    enabled: false
    accountid: ""
    license: ""
```

* Since we are adding variables, ensure they are added to the CircleCI global-org configuration as well here:  [https://circleci.com/gh/organizations/greenpeace/settings\#contexts/0ddf5fc9-dae2-4b0b-a45d-dfdc7cef61fd](https://circleci.com/gh/organizations/greenpeace/settings#contexts/0ddf5fc9-dae2-4b0b-a45d-dfdc7cef61fd).  Ensure you base64 encode the value before adding.
* Create a new helm chart with a subversion for testing as follows:

```bash
~/DevOps/GitHub/wordpress cf_updates ❯ BUILD_TAG=0.8.5-alpha make
```

Depending on the changes needed, you may also have made updates to docker files \(per the [Modifying P4 Docker](https://www.notion.so/p4infra/Modifying-P4-Docker-Images-55cc2052d25643fc9ec4dc3d38bb90f6) images\) and the p4-builder repo, you will need to ensure these builds are deployed as well so when you go to test your deployment on your NRO \(or robots in the static case\) ... they will also use these new versions. For local building and testing using a tagged released \(as described in the Modifying P4 Docker Images\) is sufficient, however for CircleCI testing you will also need to deploy the docker images and point to them.

## T**esting wordpress chart on NRO repos**

Modify your NRO repo and update the config.yml \(or Makefile for static\) with the build versions you want to use in your new Helm chart. Also note that if you are using parent or related docker images you will also need to tag them with the same tag ie. if openresty is tagged with cf\_updates, you will also need to tag the php, wordpress etc. with the same tag. For details on how to make these new tags read [this](https://www.notion.so/p4infra/Modifying-P4-Docker-Images-55cc2052d25643fc9ec4dc3d38bb90f6). See blue details as follows:

```bash
~/DevOps/GitHub/planet4-jctest/.circleci develop ❯ ls
artifacts.yml config.yml

Using Atom edit:

defaults: &defaults
  docker:
    - image: greenpeaceinternational/p4-builder:geoip**_updates**
job_environments:
  common_environment: &common_environment
    CONTAINER_PREFIX: planet4-jctest
    APP_HOSTPATH: jctest
    WP_DB_NAME_PREFIX: planet4-jctest_wordpress
    CHART_VERSION: 0.8.6-alpha
    PARENT_VERSION: geoip_updates
```

* git commit and push these changes to your develop branch of your NRO repo to start CircleCI workflows for the wordpress helm chart.

## T**esting static chart with robots repo**

Deployments based on the Static helm chart

```bash
git clone https://github.com/greenpeace/planet4-helm-static
mv planet4-helm-static static
git checkout -b <new_branch_name>
git clone https://github.com/greenpeace/planet4-robots
git checkout -b <new_branch_name>

helm repo add p4 https://planet4-helm-charts.storage.googleapis.com
helm repo update
helm search p4

NAME  CHART VERSION APP VERSION DESCRIPTION
p4/static  0.3.1    Greenpeace Planet 4 Static Site
p4/wordpress 0.8.5    Greenpeace Planet 4 Wordpress stack

**Make changes to the helm chart as required, then build the alpha version of it:**

~/DevOps/GitHub/static cf_geoip_updates !3 ❯ BUILD_TAG=0.3.1-alpha make

Edit the following files in the robot repo:

~/DevOps/GitHub/planet4-robots/Makefile
CHART_VERSION ?= **0.3.1-alpha**

~/DevOps/GitHub/planet4-robots/Dockerfile
****FROM gcr.io/planet-4-151612/openresty:**geoip_updates

To deploy to development run:**

Commit your changes to the develop branch and monitor circleCI job.
To deploy to prod, commit a new tag to this repo and monitor CircleCI job.
```

## Helm chart failures

If your helm chart is failing to deploy you often get quite misleading errors, or just long delays in the circle job. These are all common errors in circleci for a failing helm chart:

```bash
UPGRADE FAILED
Error: a release named planet4-jctest is in use, cannot re-use a name that is still in use

UPGRADE FAILED
Error: timed out waiting for the condition
Error: UPGRADE FAILED: timed out waiting for the condition

UPGRADE FAILED
Error: kind Secret with the name "planet4-jctest-master-geoip" already exists in the
 cluster and wasn't defined in the previous release. Before upgrading, 
please either delete the resource from the cluster or remove it from the chart

UPGRADE FAILED: services "planet4-jctest-master-gcloud-sqlproxy" not found
Release "planet4-jctest-master" does not exist. Installing it now.
Error: release planet4-jctest-master failed: timed out waiting for the condition

UPGRADE FAILED: Failed to recreate resource: Secret in version "v1" cannot be handled as a 
Secret: v1.Secret.Data: decode base64: illegal base64 data at input byte 44, 
error found in #10 byte of ...|0ba657566","license"|..., bigger context ...|:"
1c9f61524890dfc61a11ce74fb40f1ce172a8f0ba657566","license":
"MmQ0MzM4MmIyNjIyODQxODExN2QwNDdkNmM3NW|...

UPGRADE FAILED:  Error: render error in "wordpress/templates/secrets-geoip.yaml": 
template: wordpress/templates/secrets-geoip.yaml:14:23: executing 
"wordpress/templates/secrets-geoip.yaml" at <.Values.maxmind.accountid>: 
nil pointer evaluating interface {}.accountid
```

* At this point you might need to check your deployments.  If they are in a state of CrashLoopBackoff for example, they are failing to deploy.  You can use the [https://www.notion.so/p4infra/Working-with-K8-pods-7e53f997a6b94824abbcddd27da2cec3](https://www.notion.so/p4infra/Working-with-K8-pods-7e53f997a6b94824abbcddd27da2cec3) commands to list, display your logs, edit your deployment on the fly etc.
* At this point HELM can get a bit upset about the failing deploys, you may even need to delete your helm chart deployment, run it in debug mode or purge it using the following commands:

```bash
**Get a list of your charts**

helm ls | grep jctest

**Delete your deployment**

helm delete planet4-jctest

**If it continues to fail to rollback to a working version, purge your chart.  Note that this
has a different impact in develop vs prod.  In prod it will keep trying to rebuild your
deployment, so if you get really busted in prod, you have to time the purge to happen right
before the circle attempts a deployment, this ensures that the circleci job does not try to
rollback to a non-existing version of the release and instead "installs" the chart.**

helm delete --purge planet4-jctest

**Doing a dry run of a local (not CircleCI) deployment that doesn't exist using your new
chart version, note this does not work with the wordpress chart for some reason due
to enc64 records.**

helm install --dry-run --debug --version=0.3.1-alpha p4/static

**Use helm history to get a status on your deployment, if you purge your chart you will
lose this history.**

~ ❯ helm history p4-robots                                                                                                                          ⎈ p4-development/develop
REVISION    UPDATED                     STATUS        CHART                 DESCRIPTION

22          Tue Jan 28 13:39:23 2020    FAILED        static-0.3.1-alpha    Upgrade "p4-robots" failed: services "p4-robots-static" n...
23          Tue Jan 28 13:41:48 2020    SUPERSEDED    static-0.3.1-alpha    Upgrade complete
24          Tue Jan 28 17:19:28 2020    SUPERSEDED    static-0.3.1-alpha    Upgrade complete
25          Tue Jan 28 17:21:08 2020    SUPERSEDED    static-0.3.1-alpha    Upgrade complete
26          Tue Jan 28 17:23:12 2020    SUPERSEDED    static-0.3.1-alpha    Upgrade complete
27          Tue Jan 28 17:25:16 2020    DELETED       static-0.3.1-alpha    Deletion complete
28          Tue Jan 28 17:53:22 2020    DEPLOYED      static-0.3.1-alpha    Upgrade complete
```

Once you have all your changes sorted commit them to your branch and do a pull request to get it reviewed. Make sure you don't commit all the changes you have made to run the jobs locally as these are not relevant for your final destination. If you do commit them, it is easiest to go into the repo in github and modify and commit the files in the origin \(this way you keep your local environment settings as is if needed\). Once you are done with your local settings you can do a pull request to update your local copy.

## **Static Chart updates**

```bash
To update the static chart you need to specify the new chart version in the make
command as follows:

~/DevOps/GitHub/static ❯ BUILD_TAG=0.3.2 make
~/DevOps/GitHub/static ❯ helm repo update                                                                              4s ⎈ planet4-production/defaultcontent
Hang tight while we grab the latest from your chart repositories...
...Skip local chart repository
...Successfully got an update from the "bitnami" chart repository
...Successfully got an update from the "p4" chart repository
Update Complete.
~/DevOps/GitHub/static ❯ helm search p4                                                                               12s ⎈ planet4-production/defaultcontent
NAME            CHART VERSION    APP VERSION    DESCRIPTION
p4/static       0.3.2                           Greenpeace Planet 4 Static Site
p4/wordpress    0.8.7                           Greenpeace Planet 4 Wordpress stack

Make sure your helm list is up to date before deploying chart dependant repos.
The following repos depend on this helm chart:

- https://github.com/greenpeace/planet4-robots, to deploy helm upgrades to these deployments
For dev - commit code to develop and watch the CircleCI pipeline, it will stop for an
approval step prior to moving to prod. If you are happy with dev, create a new tag. 
For prod - commit a new tag version and watch the CircleCI pipeline complete, then approve
the CircleCI job.

~/DevOps/GitHub/planet4-robots ❯ git tag -a v0.4.2 -m "Tag deployment for latest helm chart"
~/DevOps/GitHub/planet4-robots ❯ git push origin v0.4.2
```

## Wordpress Chart updates

To deploy a new chart to all the WP helm charts \(all NRO and some others\) take the following steps: Notify the Tech Lead about what is happening, so there are no surprises.

```bash
Commit your code to the develop branch of the wordpress repo, this will do this:

git tag -m ':robot: Automated promotion' -a v0.8.11
```

Update the wordpress chart version here: planet4-builder/src/Makefile Wordpress Helm chart version CHART\_VERSION ?= 0.8.7

[greenpeace/planet4-builder](https://github.com/greenpeace/planet4-builder/blob/a63d9ae7806371b0a6dd4387af5667b2fdb3a688/src/Makefile#L13)

Tag your test repositories \(in this case flibble & jctest\) to the develop branch of builder: config.yml defaults: &defaults docker:

* image: greenpeaceinternational/p4-builder:develop

[greenpeace/planet4-jctest](https://github.com/greenpeace/planet4-jctest/blob/ff0456b8bf221f2c1e440f3ce48d5c37afe006df/.circleci/config.yml#L17)

To trigger a full deployment to all repos using this chart run the following 2 jobs:

1. Release the hold job on the [https://circleci.com/gh/greenpeace/workflows/planet4-builder/tree/develop](https://circleci.com/gh/greenpeace/workflows/planet4-builder/tree/develop)
2. Release or rerun the hold-trigger-sites job in CircleCI [https://circleci.com/gh/greenpeace/planet4-base-fork](https://circleci.com/gh/greenpeace/planet4-base-fork)

