---
description: How to deploy to your production environment
---

# Production

Production CI pipeline is a bit more complicated than development, since it provides more control steps.

In order to trigger a new production deployment you need to create a new tag in your `planet4-<nro>` repository. Once this is done you can monitor the [CI](https://app.circleci.com/projects/project-dashboard/github/greenpeace) production pipeline.

There is a `hold-production` job there that controls whether the pipeline will continue deploying on production. This job will be approved automatically if all tests pass successfully.

{% hint style="info" %}
If you want to block the production deployment, even when all tests pass, add the `[HOLD]` prefix in your last commit message before you tag.
{% endhint %}

### Troubleshooting

If you see all test jobs completed but the `hold-production` still pending, it means the `visualtests-compare` job has a visual diif report that needs inspection. Click on that job, go to `Artifacts` tab and look for the report \(`app/backstop_data/html_report/index.html`\). If everything looks good just approve `hold-production`.

In the release pipeline there a `rollback-staging` job. If approved, it will rollback the staging site back to the previous release. This is useful for cases where the visual regression tests fail and you want to fix something and re-test. In that scenario, you won't approve the production deployment. You can just restart the whole pipeline or create a new tag if you made changes to the deployment repository.

![Rollback Staging](../../.gitbook/assets/rollback-staging%20%281%29.png)

{% hint style="info" %}
If all test pass, and the new release is deployed in production, the above job will be unblocked but without triggering a rollback. This happens to prevent accidentally rolling back, but also to keep the pipeline in a "success" state.
{% endhint %}

## Rollback

In some cases you may want to rollback to a previous release. For instance, if there is a major bug in production and you know that this is a regression from the latest release. To do so, you need to use the [rollback script](https://github.com/greenpeace/planet4-base-fork/blob/master/scripts/rollback.sh) and provide the tag you want to rollback to.

```javascript
./rollback.sh planet4-<nro> <CIRCLECI_TOKEN> <v0.x.x>
```

This will trigger a rollback pipeline, which will first deploy to staging and then wait for a manual approval to deploy production. This gives you the opportunity to do a final check on staging.

![](../../.gitbook/assets/rollback%20%281%29.png)

{% hint style="info" %}
To create a new token, go to your CircleCI [account settings](https://app.circleci.com/settings/user/tokens).
{% endhint %}

