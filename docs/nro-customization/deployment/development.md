---
description: How to use your development environment for testing
---

# Develop

As a developer you want to see and demo your changes to the develop site before pushing them to staging or production. The development environment is controlled by the develop branch of your `planet4-<nro>`. For every commmit there, the CI develop pipeline is triggered.

Assuming you are working your child theme \(or your custom plugin\) which is already on [packagist](../development/package-registry.md). You can edit `composer-local.json` on your nro repository and add something like this:

```javascript
"require": {
    "greenpeace/planet4-child-theme-<nro>" : "dev-develop"
}
```

{% hint style="info" %}
Notice the `dev-` prefix. This is needed by composer when the version is a branch.
{% endhint %}

If you want to test another custom branch of your child-theme, here are the steps:

1. Your code must be in a branch in your repository. For example, the name of your branch is `feature/something-cool`.
2. Packagist will automatically pick up your code. Please note that packagist adds the prefix `dev-`, so your feature will appear as `dev-feature/something-cool` there.
3. In your `planet4-<nro>` repository, modify the child-theme line \(or add one for your new plugin\) like that: `"greenpeace/planet4-child-theme-<nro>" : "dev-feature/something-cool"`
4. Push your changes.
5. Go to [CircleCI](https://app.circleci.com/projects/project-dashboard/github/greenpeace), find the pipelines for your nro and wait to see that the develop pipeline has finished running \(it will take around 10 minutes\).
6. Check that your changes appear in your develop website.

