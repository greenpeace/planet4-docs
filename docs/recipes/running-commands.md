---
description: How to run a command across all websites
---

# Running commands

We have a way of [running scripts](https://github.com/greenpeace/planet4-base/tree/main/tasks/post-deploy) as part of the deployment process, but sometimes we may need to run a command across all running websites to get some data or do a simple action using [wp-cli](https://wp-cli.org/).

{% hint style="danger" %}
Running a command on live websites can also be risky. We should only use that method for operations that are harmless (like the one below) or to retrieve some information (eg. wp option pluck planet4\_options new\_ia). And in general not for operations that alter the database, especially if there is no rollback option.
{% endhint %}

### Single website

As an example, here is is a simple script of how to trigger a new sync for ElasticSearch on a particular website.

```bash
#!/usr/bin/env bash

GCLOUD_ZONE="us-central1-a"
# Replace both with planet4-production for production
GCLOUD_CLUSTER="p4-development"
GOOGLE_PROJECT_ID="planet-4-151612"

HELM_NAMESPACE=international # Check website's CI config variables for the exact value

gcloud container clusters get-credentials "${GCLOUD_CLUSTER}" --zone "${GCLOUD_ZONE}" --project "${GOOGLE_PROJECT_ID}"

php=$(kubectl get pods --namespace "${HELM_NAMESPACE}" -l "component=php" -o jsonpath="{.items[-1:].metadata.name}")

kubectl -n "${HELM_NAMESPACE}" exec "${php}" -- wp elasticpress sync --setup --yes --force
```

### All websites

Below is a script showing how to trigger a new sync for ElasticSearch across all websites.

```bash
#!/usr/bin/env bash

RED='\033[0;31m'
NC='\033[0m'

GCLOUD_ZONE="us-central1-a"
# Replace planet4-production for production
GCLOUD_CLUSTER="p4-development"
GOOGLE_PROJECT_ID="planet-4-151612"

echo "Switch to the right cluster"
gcloud container clusters get-credentials "${GCLOUD_CLUSTER}" --zone "${GCLOUD_ZONE}" --project "${GOOGLE_PROJECT_ID}"
echo

declare -a sites
# https://github.com/greenpeace/planet4-base/blob/v3.5.1/sites.txt
mapfile -t sites < sites.txt
for site in "${sites[@]}"
do
    HELM_NAMESPACE="${site}"
    HELM_RELEASE="planet4-${site}"

    # Site that don't use ElasticSearch
    if [ "$site" = "taiwan" ] || [ "$site" = "hongkong" ] || [ "$site" = "korea" ]; then
        continue
    fi

    # Some edge cases where sites use a different namespace scheme
    if [ "$site" = "aotearoa" ]; then
        HELM_NAMESPACE="aotearoa"
        HELM_RELEASE="planet4-new-zealand"
    fi
    if [ "$site" = "australiapacific" ]; then
        HELM_NAMESPACE="australiapacific-development"
        HELM_RELEASE="planet4-australiapacific"
    fi
    if [ "$site" = "ukraine" ]; then
        HELM_NAMESPACE="ukraine-development"
        HELM_RELEASE="planet4-ukraine"
    fi

    php=$(kubectl get pods --namespace "${HELM_NAMESPACE}" \
        --sort-by=.metadata.creationTimestamp \
        --field-selector=status.phase=Running \
        -l "release=${HELM_RELEASE},component=php" \
        -o jsonpath="{.items[-1:].metadata.name}")

    if [[ -z "$php" ]]; then
        echo >&2 "ERROR: php pod not found in release ${site}"
        exit 1
    fi

    echo -e "${RED}Running in ${site}${NC}"

    kubectl -n "${HELM_NAMESPACE}" exec "${php}" -- wp elasticpress sync --setup --yes --force
done
```

