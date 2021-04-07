---
description: >-
  This document tracks all notable changes to Planet 4 project, introduced on
  each release
---

# Changelog

## 2.53.0 - 2021-04-07

### Features

- [PLANET-5951](https://jira.greenpeace.org/browse/PLANET-5951) - Search results page - align checkboxes font sizes with the Design system

### Bug Fixes

- [PLANET-6053](https://jira.greenpeace.org/browse/PLANET-6053) - Weird line breaks with external and pdf links
- [PLANET-6043](https://jira.greenpeace.org/browse/PLANET-6043) - Search result pages show weird image aspect ratios

## 2.52.2 - 2021-03-31

### Features

- [PLANET-6034](https://jira.greenpeace.org/browse/PLANET-6034) - Remove Bootstrap 5 new XXL breakpoint

### Bug Fixes

- [PLANET-6035](https://jira.greenpeace.org/browse/PLANET-6035) - Youtube video does not show in the editor
- [PLANET-6033](https://jira.greenpeace.org/browse/PLANET-6033) - Login: Some users unable to login using Google sign-in
- [PLANET-6004](https://jira.greenpeace.org/browse/PLANET-6004) - Primary call to action buttons - icons have the wrong color
- [PLANET-5984](https://jira.greenpeace.org/browse/PLANET-5984) - The petition form on the page is not working properly
- [PLANET-5622](https://jira.greenpeace.org/browse/PLANET-5622) - Skewed overlay changes position when page length changes

## 2.52.1 - 2021-03-29

### Features

- [PLANET-6021](https://jira.greenpeace.org/browse/PLANET-6021) - Hide core upgrade notice
- [PLANET-5976](https://jira.greenpeace.org/browse/PLANET-5976) - Add test for local dev env build

### Bug Fixes

- [PLANET-6030](https://jira.greenpeace.org/browse/PLANET-6030) - Editor sidebar gets pushed off the screen if Carousel Header block is present
- [PLANET-6027](https://jira.greenpeace.org/browse/PLANET-6027) - External links icon doesn't show up for Campaigns pages
- [PLANET-6017](https://jira.greenpeace.org/browse/PLANET-6017) - Composer permission error after container re-creation

## 2.52.0 - 2021-03-24

### Features

- [PLANET-5986](https://jira.greenpeace.org/browse/PLANET-5986) - Disable Take Action Boxout on Pages
- [PLANET-5981](https://jira.greenpeace.org/browse/PLANET-5981) - Bootstrap 5 css/template fixes
- [PLANET-5906](https://jira.greenpeace.org/browse/PLANET-5906) - P4 Grid System: Migrate to Bootstrap 5
- [PLANET-5875](https://jira.greenpeace.org/browse/PLANET-5875) - Fix Table block creation placeholder styles
- [PLANET-5874](https://jira.greenpeace.org/browse/PLANET-5874) - Fix HappyPoint and Articles blocks in the frontend
- [PLANET-5873](https://jira.greenpeace.org/browse/PLANET-5873) - Update Image block styles and captions
- [PLANET-5871](https://jira.greenpeace.org/browse/PLANET-5871) - Top controls missing for native blocks that we override
- [PLANET-5848](https://jira.greenpeace.org/browse/PLANET-5848) - Remove blue caption from images in classic WP editor
- [PLANET-5756](https://jira.greenpeace.org/browse/PLANET-5756) - jQuery: remove jQuery from external_links.js / pdf_icon.js
- [PLANET-5630](https://jira.greenpeace.org/browse/PLANET-5630) - Upgrade sites to Wordpress 5.6
- [PLANET-5615](https://jira.greenpeace.org/browse/PLANET-5615) - Use button tags for buttons
- [PLANET-5499](https://jira.greenpeace.org/browse/PLANET-5499) - Enable Group block
- [PLANET-5460](https://jira.greenpeace.org/browse/PLANET-5460) - Disable Wordpress blocks registry

### Bug Fixes

- [PLANET-6015](https://jira.greenpeace.org/browse/PLANET-6015) - Campaigns pre-publish validation doesn't work reliably
- [PLANET-5980](https://jira.greenpeace.org/browse/PLANET-5980) - Inconsistencies between editor and frontend
- [PLANET-5792](https://jira.greenpeace.org/browse/PLANET-5792) - WP 5.6: add_theme_support( 'post-formats' ) was called incorrectly
- [PLANET-5656](https://jira.greenpeace.org/browse/PLANET-5656) - WP 5.5: register_rest_route was called incorrectly
- [PLANET-5655](https://jira.greenpeace.org/browse/PLANET-5655) - WP 5.5: Format "core/subscript" is already registered
- [PLANET-5654](https://jira.greenpeace.org/browse/PLANET-5654) - WP 5.5: WP_Block_Type_Registry::register was called incorrectly

## 2.51.0 - 2021-03-09

### Features

* [PLANET-5519](https://jira.greenpeace.org/browse/PLANET-5748) - Update Timber to 1.18.x
* [PLANET-5748](https://jira.greenpeace.org/browse/PLANET-5748) - Show password validation message on password protected page
* [PLANET-5990](https://jira.greenpeace.org/browse/PLANET-5990) - Enable Social Media block on Posts

### Bug Fixes

* [PLANET-4590](https://jira.greenpeace.org/browse/PLANET-4590) - Image block: Photo credit/copyright is not visible in the editor
* [PLANET-5985](https://jira.greenpeace.org/browse/PLANET-5985) - Too much padding bottom for new YouTube embed

## 2.50.3 - 2021-03-02

### Features

* [PLANET-5978](https://jira.greenpeace.org/browse/PLANET-5978) - Add CSS variables editor to develop instances
* [PLANET-5843](https://jira.greenpeace.org/browse/PLANET-5843) - Replace some colors to align with the design system

### Bug Fixes

* [PLANET-5979](https://jira.greenpeace.org/browse/PLANET-5979) - Twitter handle name is missing on evergreen pages social share button

### Infrastructure

* [PLANET-5910](https://jira.greenpeace.org/browse/PLANET-5910) - Deploy Elastic stack to dev to test APM module
* [PLANET-5832](https://jira.greenpeace.org/browse/PLANET-5832) - Add CPU usage dashboards to Grafana in Dev
* [PLANET-5446](https://jira.greenpeace.org/browse/PLANET-5446) - Expose dev Prometheus to GPI Ops Grafana instance

## 2.50.2 - 2021-02-25

### Bug Fixes

* [PLANET-5971](https://jira.greenpeace.org/browse/PLANET-5971) - Blocks plugin script loads in head when logged in
* [PLANET-5970](https://jira.greenpeace.org/browse/PLANET-5970) - YouTube video don't render in full width

## 2.50.1 - 2021-02-24

### Features

* [PLANET-5964](https://jira.greenpeace.org/browse/PLANET-5964) - Render blocks before loading jQuery
* [PLANET-5959](https://jira.greenpeace.org/browse/PLANET-5959) - Youtube \(nocookie\) adds a lot of data to page load

### Bug Fixes

* [PLANET-5969](https://jira.greenpeace.org/browse/PLANET-5969) - Cookies setup function crashes when there is no cookie banner
* [PLANET-5815](https://jira.greenpeace.org/browse/PLANET-5815) - Split two columns text too large between screen width 991 and 1200

## 2.50.0 - 2021-02-22

### Features

* [PLANET-5946](https://jira.greenpeace.org/browse/PLANET-5946) - Drop master/develop branches on deploy repos
* [PLANET-5755](https://jira.greenpeace.org/browse/PLANET-5755) - jQuery: remove jQuery from cookies scripts
* [PLANET-5483](https://jira.greenpeace.org/browse/PLANET-5483) - make npm/node persistent to our docker-compose dev images

### Bug Fixes

* [PLANET-5960](https://jira.greenpeace.org/browse/PLANET-5960) - Timeline block breaks the editing of media blocks

## 2.49.3 - 2021-02-16

### Features

* [PLANET-5928](https://jira.greenpeace.org/browse/PLANET-5928) - Name and URL change for GPNZ &gt; GPAo

### Bug Fixes

* [PLANET-5939](https://jira.greenpeace.org/browse/PLANET-5939) - In campaign pages the text is set too high and is hidden by the top bar
* [PLANET-5865](https://jira.greenpeace.org/browse/PLANET-5865) - Submenu block removes other blocks

## 2.49.2 - 2021-02-15

### Features

* [PLANET-5870](https://jira.greenpeace.org/browse/PLANET-5870) - Purge specific pages from Cloudflare cache on demand
* [PLANET-5850](https://jira.greenpeace.org/browse/PLANET-5850) - Investigate alternative to loading CSS variables ponyfill on all browsers
* [PLANET-5842](https://jira.greenpeace.org/browse/PLANET-5842) - Delete unused colors from the codebase
* [PLANET-5840](https://jira.greenpeace.org/browse/PLANET-5840) - Implement fb graph API to serve the FB & IG oembed functionality in social media block
* [PLANET-5752](https://jira.greenpeace.org/browse/PLANET-5752) - jQuery: remove jQuery from enhancedDonateButton.js

### Bug Fixes

* [PLANET-5950](https://jira.greenpeace.org/browse/PLANET-5950) - Remove the yellow color from the 3 columns gallery block
* [PLANET-5945](https://jira.greenpeace.org/browse/PLANET-5945) - Image credits are missing in gallery block
* [PLANET-5939](https://jira.greenpeace.org/browse/PLANET-5939) - In campaign pages the text is set too high and is hidden by the top bar
* [PLANET-5812](https://jira.greenpeace.org/browse/PLANET-5812) - Colors not working for Spreadsheet block

## 2.49.0 - 2021-02-08

### Features

* [PLANET-5509](https://jira.greenpeace.org/browse/PLANET-5509) - Disable xmlrpc
* [PLANET-5324](https://jira.greenpeace.org/browse/PLANET-5324) - Implement lightbox solution for images

### Bug Fixes

* [PLANET-5849](https://jira.greenpeace.org/browse/PLANET-5849) - Columns block buttons too wide in campaign pages
* [PLANET-5817](https://jira.greenpeace.org/browse/PLANET-5817) - Weird mega comment bubble in Ideas content type \(Handbook\)

### Infrastructure

* [PLANET-5932](https://jira.greenpeace.org/browse/PLANET-5932) - Deploy Elastic APM to dev
* [PLANET-5931](https://jira.greenpeace.org/browse/PLANET-5931) - Deploy Kibana to dev
* [PLANET-5930](https://jira.greenpeace.org/browse/PLANET-5930) - Deploy elasticsearch 7.10.2 in Dev
* [PLANET-5891](https://jira.greenpeace.org/browse/PLANET-5891) - Helm3 planet4-nginx-ingress
* [PLANET-5890](https://jira.greenpeace.org/browse/PLANET-5890) - Helm3 global-redirects-nginx-ingress
* [PLANET-5888](https://jira.greenpeace.org/browse/PLANET-5888) - Helm3 planet4-helm-elasticsearch

## 2.48.2 - 2021-02-03

### Features

* [PLANET-5901](https://jira.greenpeace.org/browse/PLANET-5901) - Lazy load images in Gallery block
* [PLANET-5880](https://jira.greenpeace.org/browse/PLANET-5880) - Deploy Global 404 page

### Bug Fixes

* [PLANET-5816](https://jira.greenpeace.org/browse/PLANET-5816) - Media Asset missing from attachment page

### Infrastructure

* [PLANET-5889](https://jira.greenpeace.org/browse/PLANET-5889) - Helm3 upgrade for planet4-cert-manager

## 2.48.1 - 2021-01-25

### Bug Fixes

* [PLANET-5899](https://jira.greenpeace.org/browse/PLANET-5899) - Campaign pages: Import xml fails

## 2.48.0 - 2021-01-25

### Features

* [PLANET-5719](https://jira.greenpeace.org/browse/PLANET-5719) - Implement global 404 page
* [PLANET-5705](https://jira.greenpeace.org/browse/PLANET-5705) - Apply new styles for all form elements
* [PLANET-5685](https://jira.greenpeace.org/browse/PLANET-5685) - Add a CI job for measuring front end performance
* [PLANET-5512](https://jira.greenpeace.org/browse/PLANET-5512) - Apply new forms labels UI

### Infrastructure

* [PLANET-5903](https://jira.greenpeace.org/browse/PLANET-5903) - Helm3  upgrade for planet4-helm-esexporter
* [PLANET-5886](https://jira.greenpeace.org/browse/PLANET-5886) - Helm3 upgrade for planet4-helm-prometheus
* [PLANET-5881](https://jira.greenpeace.org/browse/PLANET-5881) - deploy helm3 to circleci image
* [PLANET-5879](https://jira.greenpeace.org/browse/PLANET-5879) - Resolve unused data node in Elasticsearch -  Prod
* [PLANET-5877](https://jira.greenpeace.org/browse/PLANET-5877) - Resolve RED Elasticsearch cluster status - Dev
* [PLANET-5863](https://jira.greenpeace.org/browse/PLANET-5863) - Deploy ElasticSearch dashboard for Grafana in Dev
* [PLANET-5862](https://jira.greenpeace.org/browse/PLANET-5862) - Deploy ElasticSearch exporter for Prometheus in Dev
* [PLANET-5861](https://jira.greenpeace.org/browse/PLANET-5861) - Deploy Redis dashboard in Grafana dev for jctest

## 2.47.0 - 2021-01-12

### Features

* [PLANET-5820](https://jira.greenpeace.org/browse/PLANET-5820) - Restrict anti-flicker snippet to A/B element
* [PLANET-5790](https://jira.greenpeace.org/browse/PLANET-5790) - Add default TTL value on Redis cache

### Bug Fixes

* [PLANET-5779](https://jira.greenpeace.org/browse/PLANET-5779) - ErrorException: Warning: A non-numeric value encountered
* [PLANET-5733](https://jira.greenpeace.org/browse/PLANET-5733) - Split Two Columns uses unresized original image
* [PLANET-5680](https://jira.greenpeace.org/browse/PLANET-5680) - PHP Notice on search page

### Infrastructure

* [PLANET-5836](https://jira.greenpeace.org/browse/PLANET-5836) - Reset traefik-consol path for cert regneration in Dev
