---
description: Sync your Staging/Develop sites with Production
---

# DB/Media Sync

{% hint style="warning" %}
Every 1st of each month at Midnight UTC, a script automatically syncs the database from Production to Staging and Production to Develop. So, changes in staging and develop will be overwritten.
{% endhint %}

Part of our CI workflows includes the ability to manually trigger a script that will sync data from the Production site to Staging and Develop.

To run the process, you need to have access to your `planet4-<nro>` repository \(or ask someone with access to do it for you\).

Instructions:

1. From any of the branches, create a tag named `sync.X` \(where X is an incrementing number\)
2. Go to your CircleCI workflows and check if it runs
3. Wait for it to finish

For this sync process, note that:

* It does a full overwrite. It makes your staging \(and develop\) websites a full clone of your production website.
* If you have any content in your staging \(or develop\) websites that you want to keep, don’t run it, as it will be deleted
* At the moment the script runs both syncs \(from Production to Staging and from Production to Develop\) at the same time. We cannot run only one of the two.
* At the moment the script does not do any cleanup of users. All users existing on your production website will become the users of your staging and develop websites.
* The opposite \(copying from staging to production\) is not possible.

