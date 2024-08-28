---
description: >-
  This document tracks all notable changes to Planet 4 project, introduced on
  each release
---

# Changelog

{% hint style="info" %}
Items with a 🔑 icon are not enabled by default, but instead they are released with an admin option (feature flag) to opt-in.
{% endhint %}

## 2.136.0 - 2024-08-28

### Features

- [PLANET-7573](https://jira.greenpeace.org/browse/PLANET-7573) - Upgrade ElasticPress to version 5.*
- [PLANET-7565](https://jira.greenpeace.org/browse/PLANET-7565) - Upgrade to Wordpress 6.6
- [PLANET-7556](https://jira.greenpeace.org/browse/PLANET-7556) - Implement purchase dataLayer event for forms without redirect 
- [PLANET-7499](https://jira.greenpeace.org/browse/PLANET-7499) - Backend Text Changes on Gallery Block
- [PLANET-7389](https://jira.greenpeace.org/browse/PLANET-7389) - Add php 8.3 tests pipeline

### Bug Fixes

- [PLANET-7557](https://jira.greenpeace.org/browse/PLANET-7557) - Author Page: Pagination not working

## 2.135.0 - 2024-08-05

### Features

- [PLANET-7543](https://jira.greenpeace.org/browse/PLANET-7543) - Add native loading circle to the Greenpeace Media when searching for images
- [PLANET-7515](https://jira.greenpeace.org/browse/PLANET-7515) - Accordion block design fixes on mobile
- [PLANET-7500](https://jira.greenpeace.org/browse/PLANET-7500) - Backend Text Changes on Happy Point
- [PLANET-7496](https://jira.greenpeace.org/browse/PLANET-7496) - Backend Text Changes on Submenu Block

## 2.133.0 - 2024-07-17

### Features

- [PLANET-7547](https://jira.greenpeace.org/browse/PLANET-7547) - Generate an email hash on formSubmission events and set it in dataLayer/Cookie
- [PLANET-7531](https://jira.greenpeace.org/browse/PLANET-7531) - Posts/Actions blocks: Show message when no posts found
- [PLANET-7513](https://jira.greenpeace.org/browse/PLANET-7513) - Remove the style section from the Carousel Header backend experience
- [PLANET-7497](https://jira.greenpeace.org/browse/PLANET-7497) - Backend Text Changes on Counter Block

## 2.132.0 - 2024-06-26

### Features

- [PLANET-7524](https://jira.greenpeace.org/browse/PLANET-7524) - Add noindex meta tag on pages that are excluded from search
- [PLANET-7212](https://jira.greenpeace.org/browse/PLANET-7212) - Test and install WPML ElasticPress add-on

### Bug Fixes

- [PLANET-7537](https://jira.greenpeace.org/browse/PLANET-7537) - Australia-Pacific NRO site Cloudflare cache not being cleared, causing site-wide changes to not be reflected

## 2.131.0 - 2024-06-13

### Features

- [PLANET-7538](https://jira.greenpeace.org/browse/PLANET-7538) - Add hook to modify the formSubmission event parameters
- [PLANET-7536](https://jira.greenpeace.org/browse/PLANET-7536) - Add share text to WhatsApp share button
- [PLANET-7381](https://jira.greenpeace.org/browse/PLANET-7381) - Hide Page title by default when a pattern layout is being used
- [PLANET-7380](https://jira.greenpeace.org/browse/PLANET-7380) - Drop Campaigns theme customizer
- [PLANET-7263](https://jira.greenpeace.org/browse/PLANET-7263) - Greenpeace Media: add in editor option for P4 blocks

### Bug Fixes

- [PLANET-7535](https://jira.greenpeace.org/browse/PLANET-7535) - Credit is removed when caption is edited

### Infrastructure

- [PLANET-7470](https://jira.greenpeace.org/browse/PLANET-7470) - Migrate wordpress HPA autoscaling/v1 to autoscaling/v2

## 2.130.0 - 2024-06-03

### Features

- [PLANET-7532](https://jira.greenpeace.org/browse/PLANET-7532) - Retire unused feature flags
- [PLANET-7509](https://jira.greenpeace.org/browse/PLANET-7509) - Enable Sendgrid integration on all websites
- [PLANET-7505](https://jira.greenpeace.org/browse/PLANET-7505) - Adjust width of the search bar/keyword buttons on the Greenpeace Media backend 

### Bug Fixes

- [PLANET-7533](https://jira.greenpeace.org/browse/PLANET-7533) - Comment edit page in admin throughs error
- [PLANET-7461](https://jira.greenpeace.org/browse/PLANET-7461) - Remove caption Image block setting crashes in the editor

## 2.129.0 - 2024-05-22

### Features

- [PLANET-7494](https://jira.greenpeace.org/browse/PLANET-7494) - Upgrade to Wordpress 6.5
- [PLANET-7366](https://jira.greenpeace.org/browse/PLANET-7366) - Add a filter for overriding Sendgrid from address

### Bug Fixes

- [PLANET-7503](https://jira.greenpeace.org/browse/PLANET-7503) - Submenu block show's its title in lists of submenus/headers
- [PLANET-7488](https://jira.greenpeace.org/browse/PLANET-7488) - Search results don't follow custom search results configuration

## 2.128.0 - 2024-05-08

### Features

- [PLANET-7507](https://jira.greenpeace.org/browse/PLANET-7507) - Add a setting to load Tag Manager scripts from a custom domain
- [PLANET-7490](https://jira.greenpeace.org/browse/PLANET-7490) - Change search limit from 6 to 8 on Greenpeace Media
- [PLANET-7453](https://jira.greenpeace.org/browse/PLANET-7453) - Implement new dataLayer variable for email in Gravity Forms (form_submission event)
- [PLANET-7410](https://jira.greenpeace.org/browse/PLANET-7410) - Update the default and update consent mode scripts

### Bug Fixes

- [PLANET-7495](https://jira.greenpeace.org/browse/PLANET-7495) - Highlight markup adds extra spacing on text
- [PLANET-7199](https://jira.greenpeace.org/browse/PLANET-7199) - Update caption/credit under images to be inline to match gallery block

## 2.127.0 - 2024-04-17

### Features

- [PLANET-7344](https://jira.greenpeace.org/browse/PLANET-7344) - Make Post featured image mandatory for publishing

### Bug Fixes

- [PLANET-7486](https://jira.greenpeace.org/browse/PLANET-7486) - Page Header pattern looks off in RTL sites
- [PLANET-7175](https://jira.greenpeace.org/browse/PLANET-7175) - The timeline block breaks the editor

## 2.126.0 - 2024-04-01

### Features

- [PLANET-7478](https://jira.greenpeace.org/browse/PLANET-7478) - Remove skewed-overlay styles

### Bug Fixes

- [PLANET-7431](https://jira.greenpeace.org/browse/PLANET-7431) - Author profile page returning all posts by Editor
- [PLANET-7430](https://jira.greenpeace.org/browse/PLANET-7430) - Elastic Search not returning correct results

## 2.125.0 - 2024-03-26

### Features

- [PLANET-7426](https://jira.greenpeace.org/browse/PLANET-7426) - Create Reading_Time dataLayer Variable for Posts
- [PLANET-7413](https://jira.greenpeace.org/browse/PLANET-7413) - Redirect Import button to Media Archive
- [PLANET-7348](https://jira.greenpeace.org/browse/PLANET-7348) - Migrate Page Header options to Page Header block pattern

### Bug Fixes

- [PLANET-7447](https://jira.greenpeace.org/browse/PLANET-7447) - Unescape HTML entities in Carousel header title
- [PLANET-7444](https://jira.greenpeace.org/browse/PLANET-7444) - Left/Right aligned images don't work on non-posts
- [PLANET-7443](https://jira.greenpeace.org/browse/PLANET-7443) - ElasticPress exclude from search button not working as expected

## 2.124.0 - 2024-03-06

### Features

- [PLANET-7428](https://jira.greenpeace.org/browse/PLANET-7428) - Add survey to WP Dashboard - Message Board
- [PLANET-7409](https://jira.greenpeace.org/browse/PLANET-7409) - Implement new parameters on Google Consent Mode script

## 2.122.0 - 2024-02-14

### Features

- [PLANET-7411](https://jira.greenpeace.org/browse/PLANET-7411) - Change name of Media Archive to Greenpeace Media

### Bug Fixes

- [PLANET-7425](https://jira.greenpeace.org/browse/PLANET-7425) - Fix "ignore_categories" behaviour for the Articles block
- [PLANET-7405](https://jira.greenpeace.org/browse/PLANET-7405) - Gravity Forms: Hubspot feeds stay connected on duplicated form
- [PLANET-7404](https://jira.greenpeace.org/browse/PLANET-7404) - Post Type rss feed is 404 on Nordic websites

## 2.121.1 - 2024-01-31

### Features

- [PLANET-7388](https://jira.greenpeace.org/browse/PLANET-7388) - Upgrade affected plugins and dependencies following php8 upgrade
- [PLANET-7343](https://jira.greenpeace.org/browse/PLANET-7343) - Unify Post breadcrumbs structure
- [PLANET-7324](https://jira.greenpeace.org/browse/PLANET-7324) - Unify listing pages UI and refactor template code

## 2.121.0 - 2024-01-18

### Bug Fixes

- [PLANET-7408](https://jira.greenpeace.org/browse/PLANET-7408) - Carousel Header: no focus point and no button link options
- [PLANET-7394](https://jira.greenpeace.org/browse/PLANET-7394) - Missing Icon in carousel header block

## 2.120.2 - 2024-01-16

### Features

- [PLANET-7238](https://jira.greenpeace.org/browse/PLANET-7238) - Upgrade to Wordpress 6.4

### Bug Fixes

- [PLANET-6924](https://jira.greenpeace.org/browse/PLANET-6924) - Console error when trying to select tag or post type using the enter key

## 2.120.1 - 2024-01-11

### Features

- [PLANET-7350](https://jira.greenpeace.org/browse/PLANET-7350) - Upgrade PHP to 8.1

## 2.120.0 - 2024-01-08

### Features

* [PLANET-7276](https://jira.greenpeace.org/browse/PLANET-7276) - Listing pages: add a back link to News & Stories page

### Bug Fixes

* [PLANET-7376](https://jira.greenpeace.org/browse/PLANET-7376) - Readabillity issue with 404 pages
* [PLANET-7352](https://jira.greenpeace.org/browse/PLANET-7352) - New forms are created with empty notification entries
* [PLANET-7314](https://jira.greenpeace.org/browse/PLANET-7314) - PageHeader looks off in screens < 360px
* [PLANET-7286](https://jira.greenpeace.org/browse/PLANET-7286) - Media & text block with parallax effect breaks the design
* [PLANET-6795](https://jira.greenpeace.org/browse/PLANET-6795) - Content not sticking to top above first block
