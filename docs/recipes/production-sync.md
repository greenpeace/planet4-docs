---
description: For the rare cases we want to sync production from the development site
---

# Production sync

We already have a [monthly sync](https://github.com/greenpeace/planet4-international/blob/v1.40.207/.circleci/config.yml#L518) that completely overrides stage and dev environments directly from production. We don't have any automation in place for the reverse process, as it can be risky but also rarely needed.

As part of the new Information Architecture project it's often easier for NROs to content freeze on production, make all the necessary changes on their dev site and then ask from the P4 team to migrate them over to production.

Till we have an automated way of doing this type of sync, below are the manual steps needed to make it work.

## Preparation

### Maintenance page

Install the Maintenance plugin and configure it like [documented here](maintenance-page.md) on both development and production sites and **enable maintenance mode**.

### Set up env variables

Replace `NRO` with the name of the website (eg. indonesia) you are working on:

```bash
HELM_NAMESPACE_DEV="NRO"
HELM_NAMESPACE_PROD="NRO"
NRO="NRO"

BUCKET_DEV="planet4-NRO-stateless-develop"
BUCKET_PROD="planet4-NRO-stateless"

GCLOUD_ZONE="us-central1-a"
GCLOUD_CLUSTER_PROD="planet4-production"
GCLOUD_CLUSTER_DEV="p4-development"
GOOGLE_PROJECT_ID_PROD="planet4-production"
GOOGLE_PROJECT_ID_DEV="planet-4-151612"
```

{% hint style="info" %}
Make sure to use the same terminal from now on, to ensure those variables are set.
{% endhint %}

## Development

### Export development database

```bash
echo "Switch to dev cluster"
gcloud container clusters get-credentials "${GCLOUD_CLUSTER_DEV}" --zone "${GCLOUD_ZONE}" --project "${GOOGLE_PROJECT_ID_DEV}"
kc="kubectl -n ${HELM_NAMESPACE_DEV}"

echo "Find running php pod"
POD=$($kc get pods -l component=php | tail -1 | cut -d' ' -f1)

echo "Export database"
DB=$($kc exec "${POD}" -- wp db export | cut -d' ' -f4 | sed -e "s/'\.//" -e "s/'//")
$kc cp "${POD}":"${DB}" data-dev.sql
```

### Production

### Backup production data

```bash
echo "Switch to prod cluster"
gcloud container clusters get-credentials "${GCLOUD_CLUSTER_PROD}" --zone "${GCLOUD_ZONE}" --project "${GOOGLE_PROJECT_ID_PROD}"
kc="kubectl -n ${HELM_NAMESPACE_PROD}"

echo "Find running php pod"
POD=$($kc get pods -l component=php | tail -1 | cut -d' ' -f1)

echo "Export prod database as a backup"
DB=$($kc exec "${POD}" -- wp db export | cut -d' ' -f4 | sed -e "s/'\.//" -e "s/'//")
$kc cp "${POD}":"${DB}" data-prod.sql

echo "Fetch prod bucket as a backup"
mkdir ${BUCKET_PROD}
gcloud storage rsync gs://${BUCKET_PROD} ${BUCKET_PROD}/ --recursive
```

### Database import

First we need to open the database sql file on an editor and remove the lines that set up `LOG BIN`. Those are usually on the very first and on the very last lines of the file. Those command will make the import fail due to privillege issues.

```bash
echo "Upload dev db file to prod pod"
$kc cp data-dev.sql "${POD}":data-dev.sql

echo "Import dev database to prod"
$kc exec "${POD}" -- wp db import data-dev.sql

echo "Remove dev-only feature flags"
$kc exec "${POD}" -- wp option patch delete planet4_features allow_all_blocks
$kc exec "${POD}" -- wp option patch delete planet4_features disable_data_sync
$kc exec "${POD}" -- wp option patch delete planet4_features beta_blocks
$kc exec "${POD}" -- wp option patch delete planet4_features core_block_patterns

echo "Enable search indexing"
$kc exec "$POD" -- wp option update blog_public true

echo "Replace urls"
OLD_PATH="https://www-dev.greenpeace.org/${NRO}"
NEW_PATH="https://www.greenpeace.org/${NRO}"
$kc exec "$POD" -- wp search-replace "$OLD_PATH" "$NEW_PATH" --precise --skip-columns=guid --all-tables

echo "Replace stateless url"
OLD_PATH="https://www.greenpeace.org/static/${BUCKET_DEV}"
NEW_PATH="https://www.greenpeace.org/static/${BUCKET_PROD}"
$kc exec "$POD" -- wp search-replace "$OLD_PATH" "$NEW_PATH" --precise --skip-columns=guid
```

{% hint style="info" %}
On the stateless url path make sure to adjust them accordingly for websites that are on a different domain.
{% endhint %}

### Sync bucket

```bash
echo "Sync dev bucket to prod"
gcloud storage rsync gs://${BUCKET_DEV} gs://${BUCKET_PROD} --recursive --delete-unmatched-destination-objects
```

Flush cache

```bash
echo "Flushing cache"
$kc exec "${POD}" -- wp cache flush
```

## Post actions

### Maintenance mode

Disable the maintenance mode from both sites. Don't remove the plugin just yet, in case it's still needed.

### Cache

Trigger a new production deployment so that all content is purged from Cloudflare cache.
