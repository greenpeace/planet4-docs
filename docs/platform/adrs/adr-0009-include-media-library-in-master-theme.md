---
description: Rewrite the code as a part of master theme.
---

# \[ADR-0009\] Include Media Library in master theme

* Status: **accepted**
* Deciders: P4 Engineering Team

Technical Story: [Our plugin](https://github.com/greenpeace/planet4-plugin-medialibrary/) for integrating with the [GPI media library](https://docs.google.com/document/d/1qM0H2rbSuUqA66Yvd4UwYwP6M2T51lWm95r1dEWOPNA/edit) has sufficient technical debt to justify a \(near\) full overhaul. Since we want to offer this functionality to all NROs, it seems we don’t need to offer it as a plugin and can just include it in our master theme, thereby reducing maintenance overhead.

## Context and Problem Statement

A rewrite would solve multiple issues we’re currently experiencing.

Current issues:

* Integration with the post editor not working \(probably since after Gutenberg transition\)
* Doesn’t work well with WP modals \(is a modal itself, opened on top of a modal\).
* A few larger and lots of small UX and performance bugs. See issues linked to this ticket [https://jira.greenpeace.org/browse/PLANET-5110](https://jira.greenpeace.org/browse/PLANET-5110).
* Lots of small fixes were applied, gradually making the code more complex.
* Uses jQuery.
* Some duplication of code in master theme.
* Credentials stored in settings.
* Coding standards are behind our other code.
* Dead code.
* Naming conflicts with WP Media Library \(both in code and for users\) can cause confusion.

Migration trajectory:

1. Find a good new name so we can use this consistently from the start to avoid additional renaming. \(Suggestion from Kelli and Multimedia editors: "Greenpeace Image Archive" or "GP Image Archive" for short\)
2. Add a setting to use the new version instead of the old plugin. Will be false for all NROs
3. Develop the new implementation in master-theme. Original plugin stays in use, but new code can already be merged as it won’t be used.
4. When the new version is stable, switch one or a few NROs to it.
5. Fix any issues that came up for those NROs.
6. Switch all NROs to the new version.
7. Remove the old plugin.

## Considered Options

1. Rewrite the code as a part of the master theme \(preferred option\)
2. Rewrite the code but keep as a separate plugin
3. Do incremental refactors on the existing plugin

## Decision Outcome

Chosen option: **Rewrite the code as a part of master theme.**

## Pros and Cons of the Options

### \[option 1\] Rewrite the code as a part of the master theme \(preferred option\)

* Good, because the code requires a lot of changes, which can’t be done efficiently in an incremental way.
* Good, because the media library code is coupled with, and has common dependencies with and inside of the code in the master theme
* Good, because it gives an opportunity to rename the feature, which is needed because the naming conflict with WP’s media library causes confusion.
* Bad, because it does make it a bit harder to offer this functionality separate from our theme if the need for that would arise in the future.

### \[option 2\] Rewrite the code but keep as a separate plugin

* Bad, because there currently is no need to offer this functionality separate from planet4 sites.
* Good, because it would keep open the possibility of offering the functionality separately.
* Good, because it can use WP plugin API to enable/disable \(though 1. We don’t really need that, and 2. This is not very hard to achieve in another way e.g. adding a WP option\).
* Bad, because we need to maintain one more separate code base.
* Bad, because it increases the CI times.

### \[option 3\] Do incremental refactors on the existing plugin

* Same arguments as option 2.
* Bad, because the code has too much technical debt and requires large changes anyway. This technical debt stands in the way of being able to do small improvements efficiently.

## Links

* [https://github.com/greenpeace/planet4-plugin-medialibrary/pull/43/files](https://github.com/greenpeace/planet4-plugin-medialibrary/pull/43/files) I created a branch that has some very low effort refactors that improve the readability, while preserving the logic \(i.e. all changes are logically equivalent\), so can aid in the analysis.

