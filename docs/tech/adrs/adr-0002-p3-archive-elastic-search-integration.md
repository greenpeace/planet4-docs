---
description: >-
  Regarding the P3 data export, crawling the P3 site and scraping P3 data looks
  the easiest option compared to fetching data from the P3 database.
---

# \[ADR-0002\] P3 Archive elastic search integration

* Status: **accepted**
* Deciders: Engineering Team

Technical Story:

* The previous Greenpeace website application \(P3\) will be decommissioned soon \(~end of march 2020\).
* We still want to enable accessing this content by archiving it and allowing searching that archive from the P4 websites.
* It’s content has already been archived to [http://web.archive.org/](http://web.archive.org/), which has search functionality.
* However, the archive API returns only 100 results in search API requests which also takes almost 10 seconds. It also has one collection for all NROs.
* We have all P3 data under one archive collection \(we proposed making per nro collection but that was somehow not feasible\), so when we search archive content it returns a result for all P3 nro data with only 100 records at a time.

### Decision Drivers

* Tight timeline. P3 will be decommissioned at the end of March \(Akamai\) and the Datacenter will be closed at the end of May.
* Making sure data is indexed in a persistent way.
* Making sure it doesn’t slow down P4 search.

### Considered Options

Use ElasticSearch to index the minimum dataset in order to have results displayed on P4 search. Results will be linked to the Internet Archive for the actual content. This requires two steps:

1. Exporting P3 data \(only a few fields like title, description, date etc.\) into XML file format.
2. Import P3 data into archive elastic search index and query that instead of the archive search API.

Exporting can be done with one of these three options:

1. Get post index from Archive team \(No response on it from archive team\)
2. Retrieve data from P3 database \(The P3 database structure is unclear, database access is available with VPN only\)
3. Crawl P3 sites and scrape required P3 data into XML files \(one by one for each NRO\).

### Decision Outcome

**Regarding the P3 data export, crawling the P3 site and scraping P3 data \(3rd option\) looks the easiest option compared to fetching data from the P3 database.**

### Links

* Related JIRA issue:  [PLANET-4717](https://jira.greenpeace.org/browse/PLANET-4717)
* [Handover doc by Dylan](https://docs.google.com/document/d/1Ya2rMqnl1W2nV93PPpZ6eQbCZrT70T1hnQQhPSy0AyA/edit?ts=5e58db86#heading=h.2p5ybalu3olo)
* Infra ticket: [PLANET-4823](https://jira.greenpeace.org/browse/PLANET-4823)

