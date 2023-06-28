---
description: Our Test Swarm for testing and doing UAT
---

# Test Instances

In order to test new code, but also to help requestors do UAT, we have created a swarm of test instances that can be used by P4 dev team to test and showcase specific changes.

## Pull Requests

On opening a Pull Request a test instance is automatically selected. A label and a comment are added to the PR once it's been deployed. The relevant Jira ticket is also update in order for the test instance to appear occupied in the [Test Swarm Dashboard](https://greenpeace.github.io/planet4-test-swarm/).

## How to manually pick one

If you want to manually reserve a test instance you can follow these steps:

1. Check the [Test Swarm Dashboard](https://greenpeace.github.io/planet4-test-swarm/) for an available instance. Available instances are colored green, instances currently in use are colored red.
2. Go to your Jira ticket and enter the name of the instance you want to use in the `environment` field of the relevant ticket. This is necessary in order to reserve that instance. Keep in mind, that the ticket should be either "In Progress" (status "In Development") or "In Review".
3. The Dashboard provides direct link to the instance source code, so by adjusting its `composer-local.json` file you can trigger a deployment for a specific branch per repository.

## Data reset

When a PR is finally merge into the `main` branch of an app repository, a reset-instance job is running that mainly does two things:

1. Adjusts `composer-local.json` and switch to `dev-main` for both app repositories.
2. During the reset pipeline the defaultcontent database is being imported effectively reseting all addinional content that had been created in the meantime.

If you want to manually reset a test instance database all you have to do is add a commit with the `[RESET]` prefix in its subject.
