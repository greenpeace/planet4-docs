---
description: A quick guide to code contributing
---

# Contribute

Thank you for thinking of contributing to Planet4! 💚  
This guide will get you through the very basic things you need to get started.

## Getting started

We are using [docker](https://www.docker.com/) as the main tool to setup planet4 in a local development environment.

So first thing is to setup planet4 locally. To do that, read our detailed documentation on our [planet4-docker-compse](https://github.com/greenpeace/planet4-docker-compose/blob/master/README.md) repository.

## Development

Planet 4 consists of many repositories, for all the themes and plugins we develop:

* [planet4-master-theme](https://github.com/greenpeace/planet4-master-theme)
* [planet4-plugin-gutenberg-blocks](https://github.com/greenpeace/planet4-plugin-gutenberg-blocks)
* [planet4-plugin-medialibrary](https://github.com/greenpeace/planet4-plugin-medialibrary)
* [planet4-plugin-gutenberg-engagingnetworks](https://github.com/greenpeace/planet4-plugin-gutenberg-engagingnetworks)
* [planet4-styleguide](https://github.com/greenpeace/planet4-styleguide/)

Once you have planet4 running locally, you will find the code under `persistence/app/public/wp-content/themes/` and `persistence/app/public/wp-content/plugins/` for themes and plugins respectively.

Now pick the one you want to work on, fork it on Github and add it to your local setup. Let’s see an example based on planet4-master-theme.

{% hint style="info" %}
Replace all “username” occurrences below with your Github username.
{% endhint %}

1. Fork [planet4-master-theme](https://github.com/greenpeace/planet4-master-theme) through Github. This will create `https://github.com/<username>/planet4-master-theme/`
2. Go to the relevant local path:  `cd persistence/app/public/wp-content/themes/planet4-master-theme`
3. Add your fork as a new remote:  `git remote add username git@github.com:username/planet4-master-theme.git`
4. Create a feature branch to work on:  `git checkout -b feature/foo-bar`
5. Commit your changes:  `git commit -am "Add some foo-bar"`
6. Push to the branch to your fork:  `git push username feature/foo-bar`
7. Create a new Pull Request

## Pull Requests

Before working on something or opening a Pull Request, please make sure that there is a relevant issue:

* If a relevant issue already exists, leave a comment that you are interested in working on that.
* If no relevant issue exists, open a new one and initiate the discussion.

The tickets labeled as [Contribution](https://jira.greenpeace.org/issues/?jql=status%20%3D%20Open%20AND%20labels%20%3D%20contribution) are a good starting point for start coding.

All Pull Requests should target the `develop` branch. Make sure to reference the relevant issue in your Pull Request description.

## Coding

In general we try to stick as close as possible to [WordPress Coding Standards](https://make.wordpress.org/core/handbook/best-practices/coding-standards/php/). The best approach to make sure your code is following planet4’s coding style is to use code linters. Most code editors have integrations and plugins for linting the code in realtime. Here is a list of the linters we use:

* PHP: [PHP\_CodeSniffer](https://github.com/squizlabs/PHP_CodeSniffer)
* Javascript: [ESLint](https://eslint.org/)
* CSS/Sass: [Stylelint](https://stylelint.io/)

## Code Of Conduct

In the interest of fostering an open, inclusive and welcoming environment, our project is following a [Contributor Code of Conduct](https://www.contributor-covenant.org/version/1/4/code-of-conduct).

