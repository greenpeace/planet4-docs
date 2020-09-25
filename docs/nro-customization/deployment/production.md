---
description: How to deploy to your production environment
---

# Production

The production environment is controlled by the master branch of your `planet4-<nro>`. But in order to trigger a new deployment you need to create a new tag once you are ready.

This gives you the option to have a completely different `composer-local.json` from develop and deploy a different set of packages to production. For instance you can use the latest tag of your child-theme:

```javascript
"require": {
    "greenpeace/planet4-child-theme-<nro>" : "0.*"
}
```

Once you create a new tag and push it the [CI](https://app.circleci.com/projects/project-dashboard/github/greenpeace) release pipeline will be triggered.

There is a `hold-production` job there that controls whether the pipeline will continue deploying on production. This job will be approved automatically if all tests pass successfully.

You will only need to manually approve that in two cases:

1. You added a `[HOLD]` on your last commit message before you create the new tag.
2. Visual Regression tests failed. You can check the tests report to confirm that the visual differences are acceptable.

### Rollback

In the release pipeline there a `rollback-staging` job. If approved, it will rollback the staging site back to the previous release. This is useful for cases where the visual regression tests fail and you want to fix something and re-test. In that scenario, you won't approve the production deployment. You can just restart the whole pipeline or create a new tag if you made changes to the deployment repository.

![Rollback Staging](../../.gitbook/assets/rollback-staging%20%281%29.png)

{% hint style="info" %}
If all test pass, and the new release is deployed in production, the above job will be unbloked but without triggering a rollback. This happens to prevent accidentally rolling back, but also to keep the pipeline in a "success" state.
{% endhint %}



