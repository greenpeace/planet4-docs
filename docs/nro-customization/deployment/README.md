---
description: NRO specific deployment guides
---

# Deployment

In our current approach of hosting, each NRO gets automatically three sites:

* A _**develop**_ site, at _**www-dev**.greenpeace.org/&lt;nro&gt;_
* A _**staging**_ site, at _**www-stage**.greenpeace.org/&lt;nro&gt;_
* A _**production**_ site, at _**www**.greenpeace.org/&lt;nro&gt;_

Deployments on these site is controlled by your `planet4-<nro>` repository:

- For every commmit on the `main` branch, the CI develop pipeline is triggered.
- For every new tag, the CI production pipeline is triggered.

Besides all the themes and plugins selected by the Planet 4 team, this repository has its own `composer-local.json` file, where you can add additional requirements. This looks like this:

```javascript
{
	"name": "greenpeace/planet4-nro",
	"description": "Greenpeace P4 NRO",
	"license": "MIT",
	"require": {
		"greenpeace/planet4-child-theme-nro" : "dev-main"
	},
	"scripts": {
		"site:custom" : []
	}
}
```

In addition to that, you can optionally create an environment-specific file in case you want to install some extra packages in just one environment or if you just want to override package versions.

Our current setup, will check for two optional environment json files, expecting to find a `require` key in them.

- `development.json`: development environment (`www-dev`).
- `production.json`: production environment (`www-stage` and `www`).

An example of a `production.json` file could look like this:

```javascript
{
  "require": {
    "greenpeace/planet4-child-theme-nro" : "v0.*",
    "cedaro/gravity-forms-iframe": "2.0.*"
  }
}
```

## Use Case: child themes

Assuming you are working your child theme \(or your custom plugin\) which is already on [packagist](../development/package-registry.md), you may want to see and demo your changes to the development site before pushing them to production.

So one pattern you may use is:

1. Always deploy a specific branch of that child theme to development.
2. Always deploy the latest tag of that child theme to production.

In that scenario you want `composer-local.json` to have this in the `require` object:

```javascript
"require": {
    "greenpeace/planet4-child-theme-nro" : "dev-develop"
}
```

{% hint style="info" %}
Notice the `dev-` prefix. This is needed by composer when the version is a branch.
{% endhint %}

You can the create a `production.json` file that would look like this:

```javascript
{
  "require": {
      "greenpeace/planet4-child-theme-nro" : "v0.*"
  }
}
```

## Feature branches

If you want to test another custom branch of your child-theme, here are the steps:

1. Your code must be in a branch in your repository. For example, the name of your branch is `feature/something-cool`.
2. Packagist will automatically pick up your code. Please note that packagist adds the prefix `dev-`, so your feature will appear as `dev-feature/something-cool` there.
3. In your `planet4-<nro>` repository, modify the child-theme line like that: `"greenpeace/planet4-child-theme-<nro>" : "dev-feature/something-cool"`. If you don't want to amend `composer-local.json`, you can just create a `development.json` file.
4. Push your changes.
5. Go to [CircleCI](https://app.circleci.com/projects/project-dashboard/github/greenpeace), find the pipelines for your nro and wait to see that the develop pipeline has finished running \(it will take around 10 minutes\).
6. Check that your changes appear in your develop website.
