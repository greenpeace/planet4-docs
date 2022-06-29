---
description: How to add extra acceptance tests for your website
---

# Acceptance Tests

Planet 4 is setup to run [automated acceptance tests](https://github.com/greenpeace/planet4-docs/tree/5d137ed3b4b4c8c258bf31f96a9565eff0e86df9/docs/nro-customization/ci-cd/testing/acceptance-tests.md) on each deployment pipeline.

But you can also add extra scenarios to test other parts of your website's functionality. The purpose of these tests is multiple:

1. To test if any customisations done by NRO developers are working as they should.
2. To test if the latest planet4 release works together with the NRO customisations.

To create tests for your site you have to do the following:

1. In your planet4-nro repository, create a folder called "tests", like the example in the [planet4-netherlands](https://github.com/greenpeace/planet4-netherlands/tree/master/tests) repository.

![nro tests folder](<../../.gitbook/assets/nro-tests-folder (1) (1) (1) (3) (3) (3) (3) (3) (1) (1) (1).png>)

1. Inside that directory, write tests, following the [Codeception](https://codeception.com/) syntax, in php files.

![nro test file](<../../.gitbook/assets/nro-tests-file (3) (2) (1) (1) (1) (1).png>)

Some relevant info:

* The tests run on the develop and release sites of your environment. They do not run on self contained site setups, but on your actual develop and staging sites.
  * The tests run on your develop site in the _develop_ workflow of CircleCI, after the site gets build and deployed.
  * The tests run on your release site in the _release_ workflows after a successful deployment and before the "hold" job (that triggers production deployments).
* If the test fails on the develop workflows, it will still trigger the release site deployment. It does not block the next steps.
* If the test fails on the release workflows, it will block the next steps. So, production deployments cannot happen if the tests fail on the release site.

Example of failed tests on the release workflow. The hold-promote job that would usually allow you to deploy to production is not triggered, as it is blocked by the test-release job failing

![nro test release failure](<../../.gitbook/assets/nro-test-release-failure (1) (1) (3) (3) (1) (1) (1) (1).png>)

Example of successful tests on the release workflow. Tests succeeded, so hold-promote is available.

![nro test release succss](<../../.gitbook/assets/nro-test-release-success (1) (1) (1) (1).png>)
