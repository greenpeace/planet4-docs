---
description: >-
  Stay on Jira, revisit idea of moving to GitHub if maintenance of two backlogs
  feels unmanageable.
---

# \[ADR-0014\] Choose a ticketing system

* Status: **decided**
* Deciders: P4 Track Leads

Technical Story: Evaluate if our current ticketing system and workflows are designed to meet the needs of Open Development. Our [current state](https://docs.google.com/spreadsheets/d/17vBsZwKJpuSA-dTmMciUPwE19TTo5yqcXZvEqk-OGw8) is that all Tracks \(Development, Design, Data, Infra\) use Jira 7. A subset of our Product backlog, called Contribution backlog, includes tickets that are potentially open for community contribution. We manually copy those tickets to [Github](https://github.com/greenpeace/planet4).

## Context and Problem Statement

There is an ongoing project to upgrade Jira to version 8, that potentially may require some migration of workflows and other data. That triggers this discussion, as a good point in time to evaluate all available options.

## Considered Options

1. Stay on Jira \(with the intention to upgrade to v8\) and keep copying tickets to Github
2. Move tickets to GitLab
3. Move tickets to Github \(with the extra layer of [Zenhub](https://www.zenhub.com/)\)

## Decision Outcome

Chosen option: **Stay on Jira, revisit idea of moving to github if maintenance of two backlogs feels unmanageable.**

## Pros and Cons of the Options

### \[option 1\] Jira

* Good, because we are already familiar with it.
* Good, because it provides advanced workflows.
* Good, because it supports custom fields \(eg. Track, Section, etc\).
* Bad, because it’s not discoverable by external contributors. Tickets are public \(boards are private\), but it’s still on a private instance.
* Bad, because external contributors can’t register or leave comments.
* Bad, because it creates the extra burden of syncing with Github issues.
* Bad, because tickets live far from the code and pull requests.

### \[option 2\] GitLab

* Good, because other teams are already using it.
* Good, because it manages both code and tickets \(if we were to move our code also there\), so less switching \(and syncing\) between different applications.
* Bad, because it has a “per user” license model.
* Bad, because our instance is quite closed \(first screen is a login screen\).
* Bad, because it would be very hard to integrate with Github \(where our code currently lives\).
* Bad, because it creates the extra burden of syncing with Github issues.
* Bad, because we would need to migrate existing tickets.
* Bad, because tickets don’t support custom fields.
* Bad, because of limited workflows.

### \[option 3\] Github/Zenhub

* Good, because our tickets will be closer to the code \(at least for the Dev Track\)
* Good, because it eliminates the need of duplicating tickets.
* Good, because all Backlogs will be in the same place.
* Bad, because issues are more flat \(eg. no custom fields support\).
* Bad, because we would need to migrate existing tickets and sprint history.
* Bad, because we need a 3rd party tool \(Zenhub\) to make it work.

## Links

* [P4 Jira overview](https://docs.google.com/spreadsheets/d/17vBsZwKJpuSA-dTmMciUPwE19TTo5yqcXZvEqk-OGw8/edit#gid=0)
* [Git\(hub\|lab\) Hosting](https://docs.google.com/document/d/11rW4RgmxM2ggp0-4lGV1hrLHoQdKIMgD-p15K1V0PEE)
* [Planet 4 Github repository](https://github.com/greenpeace/planet4)
* [ZenHub](https://www.zenhub.com/product)

## Comments

### Notes 2020-10-13

Magali

* GitHub can do the job for what we need, seems like the best option

Nikos

* Generally happy with Jira
* Main issue is maintaining two backlogs \(internal and external\)
* Jira is better for sprints, but with zenhub it's easier
* Example of [Open Source repo labels](https://github.com/internetarchive/openlibrary/issues)

Lilian

* Github - more clean, eliminate duplication
* Preference to stay with Jira

Suzi

* Happy to stay in Jira if I can clean it up :\)

Biggest reason to move - open contribution

* Nikos has a script, makes it less manual
* Need to work out some details of workflows
  * Closing tickets
* Not a huge deal at the moment, can revisit if it feels unmanageable

Other OS projects - using sync between jira and github \(expensive, overkill\)

Potential project w/ GitHub - sync \(suzi & Nikos will talk to them about it\)

Next steps: Lilian and suzi to meet about customisation

