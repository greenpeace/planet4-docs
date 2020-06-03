---
description: Sync your Staging/Develop sites with Production
---

# DB/Media Sync

{% hint style="warning" %}
Every 1st of each month at Midnight UTC, a script automatically syncs the database from Production to Staging and Production to Develop. So, changes in staging and develop will be overwritten.
{% endhint %}

Part of our CI workflows includes the ability to manually trigger a script that will sync data from the Production site to Staging and Develop.

To run the process, you need to have access to [CircleCI](https://app.circleci.com/projects/project-dashboard/github/greenpeace).

Instructions:

1. Find and click on your `planet4-<rno>`
2. Find and click on the latest `sync-from-production` pipeline
3. Rerun it by clicking on "Rerun" > "Rerun workflow from start"

For this sync process, note that:

* It does a full overwrite. It makes your staging \(and develop\) websites a full clone of your production website.
* If you have any content in your staging \(or develop\) websites that you want to keep, don’t run it, as it will be deleted
* At the moment the script runs both syncs \(from Production to Staging and from Production to Develop\) at the same time. We cannot run only one of the two.
* At the moment the script does not do any cleanup of users. All users existing on your production website will become the users of your staging and develop websites.
* The opposite \(copying from staging to production\) is not possible.

