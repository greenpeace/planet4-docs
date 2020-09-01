---
description: >-
  Decided to move to Gitbook all Technical documentation (Development &
  Infrastructure)
---

# \[ADR-0001\] Use Gitbook for Technical Documentation

* Status: **accepted**
* Deciders: Engineering Team

### Context and Problem Statement

Currently Technical Documentation lives in the Handbook, with an [entry point](https://planet4.greenpeace.org/create/tech/) and everything else organized under the [Development tag](https://planet4.greenpeace.org/tag/development/). On the other hand Gitbook is a platform specifically for maintaining documentation, based on Markdown. We created a [Planet 4 space](https://app.gitbook.com/@greenpeace/s/planet4/) in GP Gitbook account to test how a potential structure of our documentation would look.

### Decision Drivers

* Community Management Team should be consulted, since this affects the internal development community too.

### Considered Options

* Move to Gitbook
* Stay in the Handbook

### Decision Outcome

Chosen option: **Decided to move to Gitbook all Technical documentation \(Development & Infrastructure\)**

### Pros and Cons of the Options

#### Move to Gitbook

* Good, because Gitbook is meant to be used as a documentation platform providing better UI/UX for that task.
* Good, because docs can be grouped in categories, or browsed as a series of a guide, creating a user journey.
* Good, because it’s connected and synced with a public Github repo, so it’s easy for an external contributor to update the documentation by opening a Pull Request.
* Good, because the documentation on the repo is just Markdown so we are not locked into Gitbook, if we ever choose to leave.
* Good, because it’s the choice of [other teams](https://app.gitbook.com/@greenpeace/spaces) in the Org \(eg. Global Support\), so people can discover it easier but they are also used to it.

#### Stay in the Handbook

* Good, because everything regarding P4 is in one place.
* Bad, because the perception is that the Handbook is for internal audience. That’s not always the case for the technical documentation.
* Bad, because we sometimes need to do custom development just for the Handbook.

Bad, because it demands manual styling customization for technical documentation \(e.g scripts/coding pieces\) or instructions. 

### Links

* [P4 space on Gitbook](https://app.gitbook.com/@greenpeace/s/planet4/)
* [Git Repo](https://github.com/greenpeace/planet4-docs/)

