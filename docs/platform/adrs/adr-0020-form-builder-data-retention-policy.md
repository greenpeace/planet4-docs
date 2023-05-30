---
description: >-
  Enforce a 3 months retention policy. Enable personal data safeguards.
---

# \[ADR-0020] Form Builder data retention policy

* Status: accepted
* Deciders: Development, Product

Technical Story: We want to avoid storing supporters’ personal data into the websites’ databases. Instead data should be stored into relevant external systems (Hubspot, Salesforce, etc) where applicable.

### Context and Problem Statement

Most of the Form types (as [identified](https://miro.com/app/board/uXjVO_vBIYc=/)) are already integrating into external systems. But not all of them do (eg. Quiz). For the ones that don’t we need to identify what’s a reasonable policy for NRO admins to have the time to decide the extent of data they want to keep but also have the time to export them. But even for the forms that send data to other systems (eg. Petitions) we need a failsafe to make sure data is actually sent over before deletion.

At the same time we should aim for respecting GDPR requirements for the period of time these data remain on websites’ databases.

### Decision Outcome

#### Data retention

Enforce a 3 months retention policy. All submission entries will be automatically deleted after point. It would be up to NRO admins to export any submission data that are not synced to another external system if they wish to.

#### Integrate into Wordpress export/delete tools

This is useful in cases where an NRO gets a request by a supporter to delete or export personal data.

#### Minimize personal data footprint

Don’t store IP addresses on form submissions.

### Links

* [Data Flows Miro board](https://miro.com/app/board/uXjVO_vBIYc=/)
