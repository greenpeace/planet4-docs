---
description: Move all code to the theme and retire the plugin.
---

# \[ADR-0017] Move blocks into the theme

* Status: accepted
* Deciders: Development Team

Technical Story: Unify the application code into one repository.

### Context and Problem Statement

After minimizing our set of repositories (as part of [ADR-0004](adr-0004-switch-to-monorepo.md)), we currently have two repositories. One for the theme and one for the blocks.

There are still things that interconnected between the two repositories that increase complexity. Some examples:

* The theme is still being used as a submodule in the plugin.
* Test instances sometimes get broken because of a leftover branch from the other repo not involved in the current PR.
* We do tag both repositories on release, even though they don’t both have new changes.

### Considered Options

* Move blocks into the theme and retire the plugin completely.
* Keep maintaining the blocks into its own repository as a plugin.

### Decision Outcome

Chosen option: \[option 1] move all code to the theme and retire the plugin.

### Pros and Cons of the Options

#### \[option 1]

* Good, because of decreased complexity on code changes that touch both repos (interconnected pull requests)
* Good, because it would simplify test instances deployments and testing.
* Good, because it would simplify the code review process if everything is one repository.
* Good, because it would reduce duplication of code (eg. CI, webpack, linters).
* Good, because it would simplify tests that touch functionality on both sides.
* Bad, because it seems to be the WP way having blocks as a plugin.

#### \[option 2]

* Good, some NROs may not need the blocks. (mitigation: add a feature flag for blocks)
* Bad, because plugin css code depends on theme (submodule complexity).
* Bad, because translations are split in two.

### Links

* [\[ADR-0004\] Switch to Monorepo](adr-0004-switch-to-monorepo.md)
* [Jira Epic](https://jira.greenpeace.org/browse/PLANET-6210)
