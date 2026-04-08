---
description: >-
  This document tracks all notable changes to Planet 4 project, introduced on
  each release
---

# Changelog

{% hint style="info" %}
Items with a 🔑 icon are not enabled by default, but instead they are released with an admin option (feature flag) to opt-in.
{% endhint %}

## 26.6.1 - 2026-04-08

### Features

- [PLANET-8009](https://greenpeace-planet4.atlassian.net//browse/PLANET-8009) - Carousel header accessibility: place the auto-play control earlier in the reading order
- [PLANET-7976](https://greenpeace-planet4.atlassian.net//browse/PLANET-7976) - Actions List accessibility: remove unnecessary links (featured image, category)

### Bug Fixes

- [PLANET-8150](https://greenpeace-planet4.atlassian.net//browse/PLANET-8150) - Take Action Boxout doesn't work with new IA if Take Action page is not set
- [PLANET-8149](https://greenpeace-planet4.atlassian.net//browse/PLANET-8149) - Posts show wrong publish date in certain timezones

## 26.6.0 - 2026-03-31

### Features

- [PLANET-8019](https://greenpeace-planet4.atlassian.net//browse/PLANET-8019) - Main navigation  menu accessibility: Enter and Space do not open dropdown
- [PLANET-8002](https://greenpeace-planet4.atlassian.net//browse/PLANET-8002) - Carousel header accessibility: group left/right arrows in a labeled navigation region
- [PLANET-7998](https://greenpeace-planet4.atlassian.net//browse/PLANET-7998) - Search Results page accessibility: remove duplicate labels on checkboxes
- [PLANET-7977](https://greenpeace-planet4.atlassian.net//browse/PLANET-7977) - Actions List carousel accessibility: unexpected Back to list announcement after carousel items

### Bug Fixes

- [PLANET-8144](https://greenpeace-planet4.atlassian.net//browse/PLANET-8144) - Fix the first element of the mobile navigation from being cut off 
- [PLANET-8127](https://greenpeace-planet4.atlassian.net//browse/PLANET-8127) - Exporting Posts returns Internal Server Error (500)

## 26.5.0 - 2026-03-17

### Features

- [PLANET-8128](https://greenpeace-planet4.atlassian.net//browse/PLANET-8128) - Add Permissions-Policy header and a hook to override them
- [PLANET-8114](https://greenpeace-planet4.atlassian.net//browse/PLANET-8114) - Upgrade to PHP 8.3
- [PLANET-8030](https://greenpeace-planet4.atlassian.net//browse/PLANET-8030) - Search field accessibilty: make the text input the first focusable element (before the icon)
- [PLANET-8026](https://greenpeace-planet4.atlassian.net//browse/PLANET-8026) - Main navigation menu accessibility: move focus into the expanded menu on mobile and trap it until closed
- [PLANET-8001](https://greenpeace-planet4.atlassian.net//browse/PLANET-8001) - Carousel header accessibility: wrap entire carousel in a labeled landmark
- [PLANET-7978](https://greenpeace-planet4.atlassian.net//browse/PLANET-7978) - Cookie notice accessibility: ensure focus is moved correctly for keyboard and screen reader users

### Bug Fixes

- [PLANET-8142](https://greenpeace-planet4.atlassian.net//browse/PLANET-8142) - Hydration errors in the Gallery block

## 26.4.0 - 2026-03-02

### Features

- [PLANET-8014](https://greenpeace-planet4.atlassian.net//browse/PLANET-8014) - News & Stories page accessibility: move Featured News block and H1 heading into <main>

### Bug Fixes

- [PLANET-8123](https://greenpeace-planet4.atlassian.net//browse/PLANET-8123) - Unable to remove certain blocks in the editor

## 26.3.0 - 2026-02-25

### Features

- [PLANET-8112](https://greenpeace-planet4.atlassian.net//browse/PLANET-8112) - Add option for allowing external domains to CSP headers
- [PLANET-8091](https://greenpeace-planet4.atlassian.net//browse/PLANET-8091) - Footer block accessibility: Focus is trapped on a hidden close button after opening and closing the drop-down on mobile.
- [PLANET-8049](https://greenpeace-planet4.atlassian.net//browse/PLANET-8049) - Phase out username/password login form
- [PLANET-8017](https://greenpeace-planet4.atlassian.net//browse/PLANET-8017) - News & Stories page accessibility: Add screen-reader-only H2 Filtered results before the filtered posts
- [PLANET-8015](https://greenpeace-planet4.atlassian.net//browse/PLANET-8015) - News & Stories page accessibility: Change Apply button text to Apply filters
- [PLANET-8007](https://greenpeace-planet4.atlassian.net//browse/PLANET-8007) - Carousel header accessibility: treat slide images as decorative
- [PLANET-8004](https://greenpeace-planet4.atlassian.net//browse/PLANET-8004) - Carousel header accessibility: Add a consistent label of the pause/play button
- [PLANET-7999](https://greenpeace-planet4.atlassian.net//browse/PLANET-7999) - Search Results page accessibility: Fix focus trap inside the filter modal
- [PLANET-7994](https://greenpeace-planet4.atlassian.net//browse/PLANET-7994) - Search page accessibility: fix Apply filter focus so users land in results, not lost outside the modal
- [PLANET-7993](https://greenpeace-planet4.atlassian.net//browse/PLANET-7993) - Search page accessibility: announce Load more results and move focus to first new item
- [PLANET-7990](https://greenpeace-planet4.atlassian.net//browse/PLANET-7990) - Fix skip links on mobile so they move keyboard focus correctly when activated

### Bug Fixes

- [PLANET-8127](https://greenpeace-planet4.atlassian.net//browse/PLANET-8127) - Exporting Posts returns Internal Server Error (500)
- [PLANET-8124](https://greenpeace-planet4.atlassian.net//browse/PLANET-8124) - Admin not able to update other users role
- [PLANET-8121](https://greenpeace-planet4.atlassian.net//browse/PLANET-8121) - Carousel Header design breaks if content is too long
- [PLANET-8111](https://greenpeace-planet4.atlassian.net//browse/PLANET-8111) - Burger menu sub items are using the wrong font family
- [PLANET-8060](https://greenpeace-planet4.atlassian.net//browse/PLANET-8060) - Take Action Boxout: Takes too much time to populate Actions

## 26.2.1 - 2026-02-09

### Features

- [PLANET-8100](https://greenpeace-planet4.atlassian.net//browse/PLANET-8100) - Remove the obsolete list of Analytics Global Projects
- [PLANET-8087](https://greenpeace-planet4.atlassian.net//browse/PLANET-8087) - Remove country selector text P4 setting
- [PLANET-8071](https://greenpeace-planet4.atlassian.net//browse/PLANET-8071) - Listing pages: add feature flag to allow search engines indexing
- [PLANET-8031](https://greenpeace-planet4.atlassian.net//browse/PLANET-8031) - Search accessibility: Use a simple and clear name for the submit icon

## 26.2.0 - 2026-02-03

### Features

- [PLANET-8061](https://greenpeace-planet4.atlassian.net//browse/PLANET-8061) - Upgrade to Wordpress 6.9
- [PLANET-7995](https://greenpeace-planet4.atlassian.net//browse/PLANET-7995) - Search page accessibility: Add accessible label to the close button in the filter modal 
- [PLANET-7989](https://greenpeace-planet4.atlassian.net//browse/PLANET-7989) - Search page accessibility: ensure h1 with result count is announced on page load (desktop + mobile)
- [PLANET-7988](https://greenpeace-planet4.atlassian.net//browse/PLANET-7988) - Search page accessibility: announce result title first, before image, tag, or metadata
- [PLANET-7986](https://greenpeace-planet4.atlassian.net//browse/PLANET-7986) - Search page accessibility: move Skip to search results before refine-by form
- [PLANET-7985](https://greenpeace-planet4.atlassian.net//browse/PLANET-7985) - Search page accessibility: make each result title a heading
- [PLANET-7980](https://greenpeace-planet4.atlassian.net//browse/PLANET-7980) - Global landing page accessibility: improve alphabetical headings with screen reader text
- [PLANET-7684](https://greenpeace-planet4.atlassian.net//browse/PLANET-7684) - Merge master-theme translations into one text domain

### Bug Fixes

- [PLANET-8096](https://greenpeace-planet4.atlassian.net//browse/PLANET-8096) - Category page: & shows as &amp;
- [PLANET-8083](https://greenpeace-planet4.atlassian.net//browse/PLANET-8083) - Post list block grid layout fix image height for portrait image

## 26.1.0 - 2026-01-20

### Features

* [PLANET-8086](https://greenpeace-planet4.atlassian.net/browse/PLANET-8086) - Display P4 announcements in the Admin dashboard
* [PLANET-8042](https://greenpeace-planet4.atlassian.net/browse/PLANET-8042) - Footer block accessibility: On mobile, name the opened panel: Worldwide site list
* [PLANET-8029](https://greenpeace-planet4.atlassian.net/browse/PLANET-8029) - Main navigation menu accessibility: add a clear accessible name to thelandmark
* [PLANET-7983](https://greenpeace-planet4.atlassian.net/browse/PLANET-7983) - Header logo: Use specific - Greenpeace \[site name] home - screen reader label across all sites

### Bug Fixes

* [PLANET-8077](https://greenpeace-planet4.atlassian.net/browse/PLANET-8077) - Error: Class CF\Integration\DefaultConfig not found
* [PLANET-8067](https://greenpeace-planet4.atlassian.net/browse/PLANET-8067) - Small design issues with the Actions List block
