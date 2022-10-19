---
description: A quick guide to code contributing
---

# Contribute

![](../.gitbook/assets/welcome.png)

## Development

Planet 4 mainly consists of two repositories, for the theme and the blocks plugin. Both share code from our styleguide.

* [planet4-master-theme](https://github.com/greenpeace/planet4-master-theme)
* [planet4-plugin-gutenberg-blocks](https://github.com/greenpeace/planet4-plugin-gutenberg-blocks)

Depending on what issue you are working on, you should fork it on Github.

## Pull Requests

Before working on something or opening a Pull Request, please make sure that there is a relevant issue:

* If a relevant issue already exists, leave a comment that you are interested in working on that.
* If no relevant issue exists, open a new one and initiate the discussion.

We use the [planet4](https://github.com/greenpeace/planet4/issues) repository to track tickets that are open for contribution.

All Pull Requests should target the `main` branch. Make sure to reference the relevant issue in your Pull Request description and follow our [git guidelines](git-guidelines.md).

## Coding

In general we try to stick as close as possible to [WordPress Coding Standards](https://make.wordpress.org/core/handbook/best-practices/coding-standards/php/). The best approach to make sure your code is following planet4’s coding style is to use code linters. Most code editors have integrations and plugins for linting the code in realtime. We already have linter configuration in our repositories. Here is a list of the linters we use:

* PHP: [PHP\_CodeSniffer](https://github.com/squizlabs/PHP\_CodeSniffer)
* Javascript: [ESLint](https://eslint.org/)
* CSS/Sass: [Stylelint](https://stylelint.io/)

## Code Of Conduct

In the interest of fostering an open, inclusive and welcoming environment, our project is following a [Contributor Code of Conduct](https://www.contributor-covenant.org/version/1/4/code-of-conduct).
