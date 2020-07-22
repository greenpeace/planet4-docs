---
description: Our Test Swarm for testing and doing UAT
---

# Test Instances

In order to test new code, but also to help requestors do UAT, we have created a swarm of test instances that can be used by P4 dev team to test and showcase specific changes.

## How to pick one

In order to use these instance more efficiently you can follow these steps:

1. Check the [Test Swarm Dashboard](https://greenpeace.github.io/planet4-test-swarm/) for an available instance. Available instances are colored green, instances currently in use are colored red.
2. Go to Jira and enter the name of the instance you want to use in the `environment` field of the relevant ticket. This is necessary in order to reserve that instance. Keep in mind, that the ticket should be either "In Progress" (status "In Development") or "In Review".
3. The Dashboard provides direct link to the instance source code, so by adjusting its `composer-local.json` file you can trigger a deployment for a specific branch per repository.

## Data synchronization

Sometimes testing a certain feature or bug fix requires specific content. To import data from an NRO production instance to your test one, follow these steps:

1. Edit `composer-local.json` and add a field `data_from` with the value of the NRO you want to sync data from. Here is an [example](https://github.com/greenpeace/planet4-test-phobos/blob/ac32d126754cb992d39bfd5087ae8480429404c5/composer-local.json#L10).
2. Commit these changes and add a `[SYNC]` prefix to your commit message. Here is an [example](https://github.com/greenpeace/planet4-test-phobos/commit/d198f7f127227f45c4ed29a1ed5c2d2e08edb6a0).

These steps above will create database dump from the NRO production with only the content tables. Specifically this includes: `wp_commentmeta, wp_comments, wp_postmeta, wp_posts, wp_termmeta, wp_terms, wp_term_relationships, wp_term_taxonomy`. Planet4 settings \(Settings &gt; Planet4\) are also imported automatically.

If the `data_from` field is already there and you just want to re-trigger a new sync you can do that by creating an empty commit:

```text
git commit --allow-empty -m "[SYNC] Trigger rebuild"
```

