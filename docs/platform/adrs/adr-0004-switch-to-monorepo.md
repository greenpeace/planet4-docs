---
description: >-
  Deprecate EN block & Media library plugins. Instead integrate those into the
  main main blocks plugin and master theme respectively. For the time being we
  will continue with these two main repositories
---

# \[ADR-0004\] Switch to Monorepo

* Status: **partially accepted** \(see Decision\)
* Deciders: Engineering Team

Technical Story: We need to choose how we use git to organize our application code repositories.

## Context and Problem Statement

The top-level choice is to organize the code as a "monorepo" or leave as we currently have it \(polyrepo\). Monorepo means we put all pieces into one big repo. Polyrepo means we put each piece in its own repo.

All the code that we're developing is for one organization's offerings, and not for the general public. Our theme and plugins are highly opinionated in terms of UI, but also functionality, to meet the needs of the organization. We also don’t depend on external stakeholders or end users when we do releases or make breaking changes.

Planet4 is considered a single "project" because currently the main 5 repositories are quite dependent on each other: Master Theme, Blocks Plugin, EN Forms plugin, Medialibrary plugin, Styleguide. We even disable native blocks for the editors, so actually it's a quite opinionated Wordpress setup.

## Considered Options

* Switch to one repo for theme and plugins \(Monorepo\)
* Keep using different repos for each one of them \(Polyrepo\)

## Decision Outcome

Chosen option: **Deprecate EN block & Media library plugins. Instead integrate those into the main main blocks plugin and master theme respectively. For the time being we will continue with these two main repositories.**

## Pros and Cons of the Options

### Monorepo

* Good, because versioning would be unified.
* Good, because merging repos would reduce a lot of build time: less composer calls, less npm calls, git checkouts, etc.
* Good, because we could deduplicate shared code and configuration.
* Bad, because it makes it more difficult for other organizations to use our plugins, blocks, etc. Maybe it can be mitigated with composer.

## Links

* [Monorepo vs Polyrepo](https://github.com/joelparkerhenderson/monorepo_vs_polyrepo)
* [https://github.com/shopsys/monorepo-tools](https://github.com/shopsys/monorepo-tools) - A tool that can preserve history of merged repos

