---
description: All the steps need to deploy a new version of Planet 4
---

# Deployment

Our main orchestration repository for triggering deployment pipelines is [planet4-base-fork](https://github.com/greenpeace/planet4-base-fork). But before we make any change there we need first to prepare the application repositories.

## Application Repositories

The only change that it's actually needed is to tag the repositories that have new code since the previous release.

So check [master-theme](https://github.com/greenpeace/planet4-master-theme) and [plugin-gutenberg-blocks](https://github.com/greenpeace/planet4-plugin-gutenberg-blocks). If they have commits on `master` branch since last tag \(probably both have\) the you need to create a new tag. You can do that directly from Github interface or locally as shown below.

```bash
git tag -a vX.XX -m "vX.XX"
git push --tags
```

{% hint style="info" %}
Note the `-a` flag above. We always use [annotated tags](https://git-scm.com/book/en/v2/Git-Basics-Tagging#_annotated_tags).
{% endhint %}

## Base repository

[planet4-base-fork](https://github.com/greenpeace/planet4-base-fork) repository has two main branches:

* `develop`: Controls the develop pipeline and what is being deployed on develop sites.
* `master`: Controls the release pipeline and what is being deployed first on stagning and then on production sites.

So every time there is a new Planet 4 version to be released there it's not required to also update the develop sites, but it's a good practice to first update the `develop` branch \(so it's not left behind\) and then merge it to `master`.

All you have to do is edit `composer.json`, update the versions of the plugins/themes as needed and the version of composer itself \([example](https://github.com/greenpeace/planet4-base-fork/commit/0a4712ff0e3d3d1d69dfd8a1fbbac7320054a8ba#diff-b5d0ee8c97c7abd7e3fa29b9a27d1780)\).

{% hint style="info" %}
🧙 If you include in the subject line of your git commit message the string`[HOLD]` then, even if all the tests are successful, it will require a manual approval for deploying from staging to production.
{% endhint %}

### Trigger Release

If you updated the `develop` branch, its pipeline will be "on hold". You do not need to trigger that now, because it would delay the production release. You can approve it later.

Check [CI](https://circleci.com/gh/greenpeace/workflows/planet4-base-fork) for the `release` pipeline. When all tests pass it will stay "On Hold" waiting for a manual approval.

![](../.gitbook/assets/hold-trigger-sites%20%283%29.png)

Approve that and it will trigger the release pipeline on all websites. This is an overview of a release pipeline for a website:

There is a "hold-promote" job there that controls whether the pipeline will continue deploying on production. This job will be approved automatically \(from the "promote" job\) if all tests pass successfully.

You will only need to manuall approve that in two cases:

1. You added a `[HOLD]` on your commit message on base-fork. This will require manual approval on all websites.
2. Visual Regression tests failed on a specific website. You can use [this spreadsheet](https://docs.google.com/spreadsheets/d/1uAmZLIWYsxrBByqbhoF_vVtSM7WGebYWIc0xftPRPwE/edit#gid=390993139) and run: Planet 4 &gt; Update CircleCI. This will update the CircleCI sheet using CircleCI’s API. You can then open just the ones that are on hold.
3. You can then check the tests report to confirm that the visual differences are acceptable.

![](../.gitbook/assets/hold-promote%20%281%29%20%283%29.png)

{% hint style="info" %}
🐞 If you discover a bug during the Regression Tests report, you can open a ticket.
{% endhint %}

#### NRO specific cases

* If you spot important significant visual differences on websites with customized child themes you should inform them and don't approve the deployment to production. They have CI access to approve it when ready. This includes: GPCH, GPNL, GPLX and all GPNORDIC websites.
* Korea, Hongkong, Taiwan are also heavily customized through their child themes and require extra attention because they are still not switched to Gutenberg.

