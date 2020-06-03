---
description: All the steps need to deploy a new version of Planet 4
---

# Deployment

Our main orchestration repository for triggering deployment pipelines is [planet4-base-fork](https://github.com/greenpeace/planet4-base-fork). But before we make any change there we need first to prepare the application repositories.

## Application Repositories

The only change that it's actually needed is to tag the repositories that have new code since the previous release.

So check [master-theme](https://github.com/greenpeace/planet4-master-theme), [plugin-gutenberg-blocks](https://github.com/greenpeace/planet4-plugin-gutenberg-blocks), [plugin-gutenberg-engagingnetworks](https://github.com/greenpeace/planet4-plugin-gutenberg-engagingnetworks) and [plugin-medialibrary](https://github.com/greenpeace/planet4-plugin-medialibrary).

On each one of the above repositories that need to be tagged switch to the `master` branch and create a new tag.

```bash
git tag -a vX.XX -m "vX.XX"
git push --tags
```

{% hint style="info" %}
Note the `-a` flag above. We always use [annotated tags](https://git-scm.com/book/en/v2/Git-Basics-Tagging#_annotated_tags).
{% endhint %}

## Base repository

[planet4-base-fork](https://github.com/greenpeace/planet4-base-fork) repository has two main branches:

- `develop`: Controls the develop pipeline and what is being deployed on develop sites.
- `master`: Controls the release pipeline and what is being deployed first on stagning and then on production sites.

So every time there is a new Planet 4 version to be released there it's not required to also update the develop sites, but it's a good practice to first update the `develop` branch (so it's not left behind) and then merge it to `master`.

All you have to do is edit `composer.json`, update the versions of the plugins/themes as needed and the version of composer itself \([example](https://github.com/greenpeace/planet4-base-fork/commit/0a4712ff0e3d3d1d69dfd8a1fbbac7320054a8ba#diff-b5d0ee8c97c7abd7e3fa29b9a27d1780)\).

{% hint style="info" %}
🧙 If you include in the subject line of your git commit message the string`[HOLD]` then, even if all the tests are successful, it will require a manual approval for deploying from staging to production.
{% endhint %}

### Trigger Release

If you updated the `develop` branch, its pipeline will be "on hold". You do not need to trigger that now, because it would delay the production release. You can approve it later.

Check [CI](https://circleci.com/gh/greenpeace/workflows/planet4-base-fork) for the `release` pipeline. When all tests pass it will stay "On Hold" waiting for a manual approval.

![](../.gitbook/assets/hold-trigger-sites.png)

Approve that and it will trigger the release pipeline on all websites. This is an overview of a release pipeline for a website:

There is a "hold-promote" job there that controls whether the pipeline will continue deploying on production. This job will be approved automatically (from the "promote" job) if all tests pass successfully.

You will only need to manuall approve that in two cases:

1. You added a `[HOLD]` on your commit message on base-fork. This will require manual approval on all websites.
2. Visual Regression tests failed on a specific website. You can use [this spreadsheet](https://docs.google.com/spreadsheets/d/1uAmZLIWYsxrBByqbhoF_vVtSM7WGebYWIc0xftPRPwE/edit#gid=390993139) and run: Planet 4 &gt; Update CircleCI. This will update the CircleCI sheet using CircleCI’s API. You can then open just the ones that are on hold.
3. You can then check the tests report to confirm that the visual differences are acceptable.

![](../.gitbook/assets/hold-promote%20%281%29.png)

{% hint style="info" %}
🐞 If you discover a bug during the Regression Tests report, you can open a ticket.
{% endhint %}

#### NRO specific cases

- If you spot important visual differences on websites with customized child themes you should inform them and don't approve the deployment to production. They have CI access to approve it when ready. This includes: GPCH, GPNL, GPLX and all GPNORDIC websites.
- Currently, we don’t do releases on these 3 websites: Korea, Hongkong, Taiwan. These won’t be triggered anyway, so you don’t have to check them.

## Doing a release on a single NRO

This is in case you want to do a new release on just one NRO.

1. Trigger a rebuild/redeploy of the develop site with one of the following two ways:
   * If a change is needed, do commit and push a change in `composer-local.json` file of the relevant planet4-&lt;nro&gt; repository. This will trigger the Develop pipeline of this site.
   * Go to CircleCI workflows, find the site, and the latest triggered develop pipeline. Rerun it.

![](../.gitbook/assets/01-release-workflow%20%281%29.png)

![](../.gitbook/assets/02-release-yoursite%20%281%29.png)

![](../.gitbook/assets/03-release-develop-rerun%20%281%29.png)

Wait for the new pipeline to appear, and wait until it finishes. This will do a new build/deploy of your develop site, and it will trigger a new build and deploy of your release site.

After the develop has finished building/deploying, your release site will also be build/deployed.

{% hint style="info" %}
If you have any planet4 dependencies on `dev-develop`, then in the promotion to the release branch those will automatically change to the latest release branch of the latest stable tag of the same repository.
{% endhint %}

Wait for circleCI to build and deploy the release site.

If all has gone well, your release-hold-and-finish workflow should appear to be in “Hold”. This means that it was released successfully on your staging site, and the hold is for your production site!

![](../.gitbook/assets/04b-release-hold-workflow%20%281%29.png)

Confirm that your staging site is ok and has your changes and is on the latest version. Do not run the following step unless you have confirmed the staging site.

Get inside it \(click on it\), and approve the next step \(to trigger the release to your production site\).

![](../.gitbook/assets/hold-promote%20%284%29.png)

This should now have triggered the build/deploy of your production site. A new workflow will appear, with the word “Tag”, this is your production build/deploy workflow. Wait for the job to finish, and check your production site. If it fails, then you will have to research to see what went wrong.
