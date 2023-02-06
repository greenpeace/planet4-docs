---
description: Switch to Playwright for our one testing framework for e2e tests.
---

# \[ADR-0018] Choose a testing framework

* Status: accepted
* Deciders: Development team

Technical Story: Harmonize our tests tooling so ideally we use just one framework of writing tests whenever that’s possible.

### Context and Problem Statement

Currently we rely heavily on Codeception for most of our tests. But we use two different syntaxes. The [“old” one](https://github.com/greenpeace/planet4-master-theme/blob/07cbb03e9507f3bb13a5beddcb5ddba4aa9cefae/tests/acceptance/ActPageCept.php) and [Gherkin](https://github.com/greenpeace/planet4-master-theme/blob/07cbb03e9507f3bb13a5beddcb5ddba4aa9cefae/tests/acceptance/editor.feature). During the WYSIWYG Epic we also wrote some [tests in JS](https://github.com/greenpeace/planet4-plugin-gutenberg-blocks/tree/a50b1e319e0b651a97b53ca1beee77f9752e34ce/tests/js). Ideally we should use one way of writing all of these tests.

### Considered Options

* [Cypress](https://www.cypress.io/)
* [Playwright](https://playwright.dev/)

### Decision Outcome

Chosen option: Switch to Playwright as our one testing framework for e2e tests.

### Pros and Cons of the Options

#### Cypress

* Good, because easy to start using it (one binary, simple interface)
* Good, because [assertion libraries](https://docs.cypress.io/guides/references/assertions) are included
* Good, because still in [active development](https://github.com/cypress-io/cypress)
* Good, because large documentation, numerous examples and tutorials
* Good, because it has a watch mode integrated that allows for easier development
* Bad, because [dropped](https://github.com/WordPress/gutenberg/issues/38851) by WordPress in favor of Puppeteer, then Playwright
* Bad, because some complex cases require a succession of promises, which make them less readable

#### Playwright

* Good, because easy to use: install/setup is quick and async/await notation + clear function names (using the [expect library](https://playwright.dev/docs/test-assertions) for assertions) make the tests easy to write and understand
* Good, because still in [active development](https://github.com/microsoft/playwright/)
* Good, because it’s the tool that WordPress will soon use too (and they’re working on a [npm package](https://github.com/WordPress/gutenberg/tree/trunk/packages/e2e-test-utils-playwright) with various utilities that we might be able to use in the future?) (+ [best practices](https://github.com/WordPress/gutenberg/pull/38570))
* Good, because it has a useful [VSCode package](https://marketplace.visualstudio.com/items?itemName=ms-playwright.playwright) to easily run and debug tests
* Good, because it’s faster by default, using concurrent workers
* Bad, because since Playwright is fairly new, the support from the community is limited and the documentation is sometimes lacking

### Links

* [Wordcamp presentation on Cypress](https://docs.google.com/presentation/d/1rKSy1ZNuC8P1-JcGQi1mu\_t4SZ2IkW7FVeQZzfgNZoo)
* [Brainstorming notes](https://jira.greenpeace.org/secure/attachment/34149/34149\_retreat-notes.jpg) from Testing session inTech Department Retreat.
* [Gutenberg initial PoC](https://github.com/WordPress/gutenberg/pull/34089) with Playwright
* [Wordpress post](https://make.wordpress.org/core/2022/03/23/migrating-wordpress-e2e-tests-to-playwright/) on Playwright migration
* [PLANET-7004](https://jira.greenpeace.org/browse/PLANET-7004): Experiment with Playwright testing framework ([corresponding PR](https://github.com/greenpeace/planet4-master-theme/pull/1873))
* [PLANET-6926](https://jira.greenpeace.org/browse/PLANET-6926): Experiment with Cypress testing framework ([corresponding PR](https://github.com/greenpeace/planet4-master-theme/pull/1867))
