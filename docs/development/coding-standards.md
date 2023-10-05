---
description: Basic standards and linting configuration
---

# Coding Standards

Besides the language specific standards below, we always include an [.editorconfig](https://github.com/greenpeace/planet4-template/blob/main/.editorconfig) file in code repositories for easier IDE configuration. Most IDEs either support this by default or need [a plugin](https://editorconfig.org/).

## Backend

### PHP

Since we depend on WordPress, PHP is the main language we use for backend development.

We follow [PSR-12](https://www.php-fig.org/psr/psr-12/) as a base for coding standards, but with some exceptions and additions. To make it easier to lint our code, either in CI or locally in the IDE, we always include a [phpcs.xml.dist](https://github.com/greenpeace/planet4-master-theme/blob/main/phpcs.xml.dist) file to the root of all of our code repositories.

We also rely on [PSR-4](https://www.php-fig.org/psr/psr-4/) for autoloading.

We use [composer](https://getcomposer.org/) for managing dependencies.

### Python

Python is also being used for certain use cases. Mainly for scripting and functionality that needs to run in a pipeline. In most cases this is done to avoid writing shell scripts that are harder to read and maintain.

We follow PEP8 as a base for coding standards. We include a [setup.cfg](https://github.com/greenpeace/planet4-circleci/blob/main/setup.cfg) file in our code repositories to enable linting.

We use [pip](https://pip.pypa.io/en/stable/) for managing dependencies.

## Frontend

For all frontend dependencies we use [npm](https://www.npmjs.com/) package manager and [webpack](https://webpack.js.org/) for building and bundling assets for production.

### React

Besides using vanilla Javascript, in some cases we also rely on the [React](https://react.dev/) framework for most of our frontend work.

We are using [ESlint](https://eslint.org/) to enforce coding standards that extends WordPress eslint configuration. We include an [.eslintrc.json](https://github.com/greenpeace/planet4-master-theme/blob/main/.eslintrc.json) file in our code repositories.

### Sass

Besides using vanilla CSS, when the complexity increases we rely on [Sass](https://sass-lang.com/) to achieve better readability and maintenance.

We include a [.stylelintrc](https://github.com/greenpeace/planet4-master-theme/blob/main/.stylelintrc) file to enforce linting and certain syntax rules.

## Testing

We use [Playwright](https://playwright.dev/) for “end to end” testing. It’s a Javascript based framework, used also by Wordpress.

## Documentation

For technical documentation we use [Gitbook](https://app.gitbook.com/o/-LMm4Q4AuKcwl38JYrxF/s/-M15KrJzoMvhbv4NcO9o/). Since the project is open source, the documentation is also [publicly available](https://support.greenpeace.org/planet4) and it’s automatically synced with a [code repository](https://github.com/greenpeace/planet4-docs).
