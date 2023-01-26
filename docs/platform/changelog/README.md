---
description: >-
  This document tracks all notable changes to Planet 4 project, introduced on
  each release
---

# Changelog

{% hint style="info" %}
Items with a 🔑 icon are not enabled by default, but instead they are released with an admin option (feature flag) to opt-in.
{% endhint %}

## 2.96.0 - 2023-01-26

### Features

- [PLANET-7038](https://jira.greenpeace.org/browse/PLANET-7038) - Render line breaks in Spreadsheet Block
- [PLANET-7011](https://jira.greenpeace.org/browse/PLANET-7011) - Action post type should only have one action type
- [PLANET-6965](https://jira.greenpeace.org/browse/PLANET-6965) - Add Actions pattern layout to Actions post type
- [PLANET-6963](https://jira.greenpeace.org/browse/PLANET-6963) - Enable navigation dropdown submenus
- [PLANET-6957](https://jira.greenpeace.org/browse/PLANET-6957) - Remove action-type string from Action Type permalink url
- [PLANET-6956](https://jira.greenpeace.org/browse/PLANET-6956) - Use Action Type slug on Actions permalink url

### Bug Fixes

- [PLANET-7027](https://jira.greenpeace.org/browse/PLANET-7027) - Tag listing page not behaving as expected
- [PLANET-6923](https://jira.greenpeace.org/browse/PLANET-6923) - Image credit missing when importing from media library

## 2.95.0 - 2023-01-11

### Features

- [PLANET-6983](https://jira.greenpeace.org/browse/PLANET-6983) - Actions: remove tags from header
- [PLANET-6968](https://jira.greenpeace.org/browse/PLANET-6968) - Move typography settings to theme.json
- [PLANET-6960](https://jira.greenpeace.org/browse/PLANET-6960) - Add sidebar option to define canonical link
- [PLANET-6936](https://jira.greenpeace.org/browse/PLANET-6936) - Remove jQuery on the frontend

## 2.94.0 - 2022-12-12

### Bug Fixes

- [PLANET-6980](https://jira.greenpeace.org/browse/PLANET-6980) - Tags panel shows up twice for non-admins, and they can create tags
- [PLANET-6954](https://jira.greenpeace.org/browse/PLANET-6954) - Adding a custom CSS class through the admin panel is not reflected in the frontend when inspecting the page.
- [PLANET-6931](https://jira.greenpeace.org/browse/PLANET-6931) - Navigation submenu items that are anchors are not clickable

## 2.92.0 - 2022-11-22

### Features

- [PLANET-6952](https://jira.greenpeace.org/browse/PLANET-6952) - Update layout  to default and category listing pages
- [PLANET-6914](https://jira.greenpeace.org/browse/PLANET-6914) - Upgrade to Wordpress 6.1.1
- [PLANET-6892](https://jira.greenpeace.org/browse/PLANET-6892) - Actions: offer option to localize the default slug

### Bug Fixes

- [PLANET-6961](https://jira.greenpeace.org/browse/PLANET-6961) - Action Type listing page empty when no pagination is selected

## 2.91.1 - 2022-11-09

### Features

- [PLANET-6947](https://jira.greenpeace.org/browse/PLANET-6947) - Editor sidebar: show list of existing tags
- [PLANET-6918](https://jira.greenpeace.org/browse/PLANET-6918) - Style the default Actions listing page (MVP)

### Bug Fixes

- [PLANET-6951](https://jira.greenpeace.org/browse/PLANET-6951) - Fix query pagination when there is only one page rendered
- [PLANET-6950](https://jira.greenpeace.org/browse/PLANET-6950) - Navbar links have visited color on Take Action pages
- [PLANET-6930](https://jira.greenpeace.org/browse/PLANET-6930) - Gravity Forms share text issues 

## 2.91.0 - 2022-11-03

### Features

- [PLANET-6948](https://jira.greenpeace.org/browse/PLANET-6948) - Increase the size of the navigation bar drop-down menu 
- [PLANET-6900](https://jira.greenpeace.org/browse/PLANET-6900) - Move Opengraph metabox on the sidebar
- [PLANET-6678](https://jira.greenpeace.org/browse/PLANET-6678) - Alphabetically order Planet 4 settings menu

### Bug Fixes

- [PLANET-6929](https://jira.greenpeace.org/browse/PLANET-6929) - Gravity Forms confirmation message share buttons don't show when using merge tags

## 2.90.0 - 2022-10-24

### Features

- [PLANET-6901](https://jira.greenpeace.org/browse/PLANET-6901) - Move Page Header metabox on the sidebar
- [PLANET-6872](https://jira.greenpeace.org/browse/PLANET-6872) - Add our custom margins to core Media & Text block
- [PLANET-6843](https://jira.greenpeace.org/browse/PLANET-6843) - Enforce Ajax submission in GF Forms
- [PLANET-4444](https://jira.greenpeace.org/browse/PLANET-4444) - Allow customization of Take Action Covers buttons text per Action

## 2.89.2 - 2022-10-12

### Features

- [PLANET-6913](https://jira.greenpeace.org/browse/PLANET-6913) - Show primary buttons for Actions in search results

### Bug Fixes

- [PLANET-6862](https://jira.greenpeace.org/browse/PLANET-6862) - Reusable Blocks menu not visible for Editors

## 2.89.1 - 2022-09-26

### Features

- [PLANET-6908](https://jira.greenpeace.org/browse/PLANET-6908) - Remove slide animation from the Cookie Box
- [PLANET-6891](https://jira.greenpeace.org/browse/PLANET-6891) - Actions: enable the Opengraph metabox
- [PLANET-6875](https://jira.greenpeace.org/browse/PLANET-6875) - Quick Links: Start from 9 items by default

### Bug Fixes

- [PLANET-6915](https://jira.greenpeace.org/browse/PLANET-6915) - GF Forms not embedded properly on Posts

## 2.89.0 - 2022-09-22

### Features

- [PLANET-6867](https://jira.greenpeace.org/browse/PLANET-6867) - Support File filed type on all forms
- [PLANET-6853](https://jira.greenpeace.org/browse/PLANET-6853) - Add a parallax effect to the Page Header pattern image
- [PLANET-6851](https://jira.greenpeace.org/browse/PLANET-6851) - Gravity Forms - Implement the admin settings for form share buttons
- [PLANET-6527](https://jira.greenpeace.org/browse/PLANET-6527) - Style the default Posts listing page (MVP)

### Bug Fixes

- [PLANET-6897](https://jira.greenpeace.org/browse/PLANET-6897) - On small screens, opening the side menu scrolls page back to top
- [PLANET-6859](https://jira.greenpeace.org/browse/PLANET-6859) - EN Form: Empty fields display as undefined
- [PLANET-6405](https://jira.greenpeace.org/browse/PLANET-6405) - PDF link/button icons not showing in later shown search results

### Infrastructure

- [PLANET-6894](https://jira.greenpeace.org/browse/PLANET-6894) - Update Cert-Manager
- [PLANET-6880](https://jira.greenpeace.org/browse/PLANET-6880) - Upgrade static charts to Helm3 
- [PLANET-6878](https://jira.greenpeace.org/browse/PLANET-6878) - Update Production Kubernetes cluster to 1.23
- [PLANET-6877](https://jira.greenpeace.org/browse/PLANET-6877) - Deploy Promtail to P4 clusters
- [PLANET-6856](https://jira.greenpeace.org/browse/PLANET-6856) - Update redis chart dependency
- [PLANET-6354](https://jira.greenpeace.org/browse/PLANET-6354) - Clean old container images from storage bucket to reduce costs

## 2.88.0 - 2022-09-14

### Features

- [PLANET-6890](https://jira.greenpeace.org/browse/PLANET-6890) - Actions: add option to hide title
- [PLANET-6839](https://jira.greenpeace.org/browse/PLANET-6839) - Deprecate new Navbar and Country Selector feature flags
- [PLANET-6808](https://jira.greenpeace.org/browse/PLANET-6808) - Gravity forms - Implement the front-end design for the 'thank you/share' message

### Bug Fixes

- [PLANET-6902](https://jira.greenpeace.org/browse/PLANET-6902) - Site name appears twice in html title tag

## 2.87.1 - 2022-08-31

### Features

- [PLANET-6895](https://jira.greenpeace.org/browse/PLANET-6895) - Use Opengraph title for title tag
- [PLANET-6876](https://jira.greenpeace.org/browse/PLANET-6876) - Header block pattern: allow 2 more lines of description text
- [PLANET-6861](https://jira.greenpeace.org/browse/PLANET-6861) - Add add helper text on Form Type field
- [PLANET-6854](https://jira.greenpeace.org/browse/PLANET-6854) - Disconnect Gravity Forms from external integrations on staging/dev sites

### Bug Fixes

- [PLANET-6873](https://jira.greenpeace.org/browse/PLANET-6873) - Visited links in the footer shouldn't be purple
- [PLANET-6828](https://jira.greenpeace.org/browse/PLANET-6828) - Covers carousel layout doesn't work in Safari

## 2.87.0 - 2022-08-22

### Features

- [PLANET-6868](https://jira.greenpeace.org/browse/PLANET-6868) - Improve block reports API responsiveness
- [PLANET-6738](https://jira.greenpeace.org/browse/PLANET-6738) - Create the Deep Dive Topic block pattern layout
- [PLANET-6666](https://jira.greenpeace.org/browse/PLANET-6666) - Ensure GravityForms scripts/styles are loaded only when a form in on page
- [PLANET-6528](https://jira.greenpeace.org/browse/PLANET-6528) - Create the Campaign block pattern layout
- [PLANET-6525](https://jira.greenpeace.org/browse/PLANET-6525) - Create the Take Action block pattern layout

## 2.86.0 - 2022-08-17

### Features

* [PLANET-6737](https://jira.greenpeace.org/browse/PLANET-6737) - Create the "High-level topic" block pattern layout
* [PLANET-6724](https://jira.greenpeace.org/browse/PLANET-6724) - Listing pages - implement UI design to pagination 🔑
* [PLANET-6569](https://jira.greenpeace.org/browse/PLANET-6569) - Create a setting for specifying form type for each form
* [PLANET-6529](https://jira.greenpeace.org/browse/PLANET-6529) - Create the "Action" block pattern layout
* [PLANET-6524](https://jira.greenpeace.org/browse/PLANET-6524) - Create the "Homepage" block pattern layout
* [PLANET-6680](https://jira.greenpeace.org/browse/PLANET-6680) - Create "Page Header" block patterns

## 2.84.2 - 2022-08-02

### Features

* [PLANET-6850](https://jira.greenpeace.org/browse/PLANET-6850) - Upgrade to Composer 2.3.x
* [PLANET-6698](https://jira.greenpeace.org/browse/PLANET-6698) - Remove the Donate button styles and classes

### Bug Fixes

* [PLANET-6846](https://jira.greenpeace.org/browse/PLANET-6846) - Articles: manual override not working on Posts

## 2.84.1 - 2022-07-19

### Features

* [PLANET-6847](https://jira.greenpeace.org/browse/PLANET-6847) - Patterns: Improve the Add Patterns Modal layout
* [PLANET-6841](https://jira.greenpeace.org/browse/PLANET-6841) - Exclude GF forms from prod > dev/stage sync script
* [PLANET-6817](https://jira.greenpeace.org/browse/PLANET-6817) - Create an animated hover state for rounded images

## 2.84.0 - 2022-07-13

### Features

* [PLANET-6837](https://jira.greenpeace.org/browse/PLANET-6837) - Image Archive API changes for new version
* [PLANET-6825](https://jira.greenpeace.org/browse/PLANET-6825) - Add integration for Page Create Patterns
* [PLANET-6803](https://jira.greenpeace.org/browse/PLANET-6803) - Add forms Capabilities for Editors
* [PLANET-6782](https://jira.greenpeace.org/browse/PLANET-6782) - Blocks Usage API: extend to track block patterns
* [PLANET-6645](https://jira.greenpeace.org/browse/PLANET-6645) - Listing pages: Add pagination to Post loops 🔑
* [PLANET-6523](https://jira.greenpeace.org/browse/PLANET-6523) - Create Get informed block pattern layout

### Bug Fixes

* [PLANET-6845](https://jira.greenpeace.org/browse/PLANET-6845) - Navigation Bar: max chars and multi line validation don't work on WPML sites
* [PLANET-6844](https://jira.greenpeace.org/browse/PLANET-6844) - Anti-flicker snippet does not load properly
* [PLANET-6832](https://jira.greenpeace.org/browse/PLANET-6832) - Articles block not loaded when page contains a GravityForm
* [PLANET-6829](https://jira.greenpeace.org/browse/PLANET-6829) - Some blocks are missing style previews

## 2.83.1 - 2022-06-30

### Features

* [PLANET-6833](https://jira.greenpeace.org/browse/PLANET-6833) - Upgrade WPML to 4.5.8
* [PLANET-6781](https://jira.greenpeace.org/browse/PLANET-6781) - Blocks Usage Report/API: extend to track block styles
* [PLANET-6723](https://jira.greenpeace.org/browse/PLANET-6723) - Allow Articles block in Posts

### Bug Fixes

* [PLANET-6794](https://jira.greenpeace.org/browse/PLANET-6794) - Language switcher overflows when many nav items exist
* [PLANET-6831](https://jira.greenpeace.org/browse/PLANET-6831) - Pdf attachment pages are missing image link to the asset

## 2.83.0 - 2022-06-27

### Features

* [PLANET-5913](https://jira.greenpeace.org/browse/PLANET-5913) - Test and upgrade wp-stateless to 3.2.x

### Bug Fixes

* [PLANET-6827](https://jira.greenpeace.org/browse/PLANET-6827) - Copy paste content in the EN Form add unexpected\
  in preview
* [PLANET-6802](https://jira.greenpeace.org/browse/PLANET-6802) - Copy-pasting a paragraph text preserves shows markup in the frontend
* [PLANET-6617](https://jira.greenpeace.org/browse/PLANET-6617) - Covers Carousel Layout: Implement resize handler

## 2.82.1 - 2022-06-21

### Features

* [PLANET-6811](https://jira.greenpeace.org/browse/PLANET-6811) - Upgrade to Wordpress 6.0
* [PLANET-6744](https://jira.greenpeace.org/browse/PLANET-6744) - Post type listing pages: make author name bold
* [PLANET-6520](https://jira.greenpeace.org/browse/PLANET-6520) - Create the "Quick links" block pattern

### Bug Fixes

* [PLANET-6822](https://jira.greenpeace.org/browse/PLANET-6822) - Author block looks weird with short bio info
* [PLANET-6819](https://jira.greenpeace.org/browse/PLANET-6819) - Navigation Bar: Clear button gets out of place on search input
* [PLANET-6325](https://jira.greenpeace.org/browse/PLANET-6325) - Fix overlapped content by the main header when there is no page title set

## 2.82.0 - 2022-06-15

### Features

* [PLANET-6797](https://jira.greenpeace.org/browse/PLANET-6797) - Search: show Actions in search results
* [PLANET-6778](https://jira.greenpeace.org/browse/PLANET-6778) - Add our custom margins to core Group block
* [PLANET-6773](https://jira.greenpeace.org/browse/PLANET-6773) - Ensure WP importer fetches media along with posts
* [PLANET-6534](https://jira.greenpeace.org/browse/PLANET-6534) - Create the deep dive topics block pattern

### Bug Fixes

* [PLANET-6789](https://jira.greenpeace.org/browse/PLANET-6789) - EN form block: text input fields blocked by label element
* [PLANET-6687](https://jira.greenpeace.org/browse/PLANET-6687) - Secondary buttons don't show placeholder in the editor
* [PLANET-6578](https://jira.greenpeace.org/browse/PLANET-6578) - Search page: Post Type filters not properly saved
* [PLANET-6340](https://jira.greenpeace.org/browse/PLANET-6340) - Covers block loads all images during page load

## 2.81.0 - 2022-06-06

### Features

* [PLANET-6801](https://jira.greenpeace.org/browse/PLANET-6801) - Tag pages: Add max-width of title and intro text on XXL screens

### Bug Fixes

* [PLANET-6800](https://jira.greenpeace.org/browse/PLANET-6800) - Tag pages: Fix width of title and intro text
* [PLANET-6619](https://jira.greenpeace.org/browse/PLANET-6619) - Tag pages using redirect page are available at 2 different URLs with the same content

### Infrastructure

* [PLANET-6790](https://jira.greenpeace.org/browse/PLANET-6790) - Migrate all charts to helm3
* [PLANET-4611](https://jira.greenpeace.org/browse/PLANET-4611) - Fix NRO name in domain name to be case insensitive
* [PLANET-4574](https://jira.greenpeace.org/browse/PLANET-4574) - Implement network security policies
* [PLANET-3944](https://jira.greenpeace.org/browse/PLANET-3944) - Create GCP IAM roles for developers, sysadmins, NRO service accounts

## 2.80.2 - 2022-05-24

### Features

* [PLANET-6788](https://jira.greenpeace.org/browse/PLANET-6788) - Harmonise our color palette and move it to theme.json
* [PLANET-6787](https://jira.greenpeace.org/browse/PLANET-6787) - Add white to our theme color palette
* [PLANET-6784](https://jira.greenpeace.org/browse/PLANET-6784) - Remove the WP core colors palette from core blocks

### Bug Fixes

* [PLANET-6771](https://jira.greenpeace.org/browse/PLANET-6771) - EN Form styles loaded twice
* [PLANET-6749](https://jira.greenpeace.org/browse/PLANET-6749) - Analytics & Tracking: Global Project menu is empty
* [PLANET-6720](https://jira.greenpeace.org/browse/PLANET-6720) - Articles block: Manual override returns no posts

## 2.80.1 - 2022-05-19

### Features

* [PLANET-6704](https://jira.greenpeace.org/browse/PLANET-6704) - Insert place holder images for the new block patterns

### Bug Fixes

* [PLANET-6776](https://jira.greenpeace.org/browse/PLANET-6776) - Languages menu: show the dropdown menu only if the NRO has more than 1 lang already set
* [PLANET-6775](https://jira.greenpeace.org/browse/PLANET-6775) - Languages menu: Add chevron icon to the languages nav
* [PLANET-6767](https://jira.greenpeace.org/browse/PLANET-6767) - Object Cache icons on dashboard are so big
* [PLANET-6748](https://jira.greenpeace.org/browse/PLANET-6748) - Covers block: Load more button doesn't pick up translation string

### Infrastructure

* [PLANET-6665](https://jira.greenpeace.org/browse/PLANET-6665) - www subdomain doesn't work on some alternative domains

## 2.80.0 - 2022-05-16

### Features

* [PLANET-6772](https://jira.greenpeace.org/browse/PLANET-6772) - Add Feature Flag on dev sites to opt out from montly data sync
* [PLANET-6725](https://jira.greenpeace.org/browse/PLANET-6725) - Listing pages: remove the background image 🔑
* [PLANET-6712](https://jira.greenpeace.org/browse/PLANET-6712) - Add the transparent button as a new style for P4 buttons
* [PLANET-6672](https://jira.greenpeace.org/browse/PLANET-6672) - Languages menu: Implement dropdown menu behavior

### Bug Fixes

* [PLANET-6756](https://jira.greenpeace.org/browse/PLANET-6756) - "OBJ" character appearing in post titles
* [PLANET-6755](https://jira.greenpeace.org/browse/PLANET-6755) - Form Builder: in-line fields expand beyond the form container
* [PLANET-6719](https://jira.greenpeace.org/browse/PLANET-6719) - Take Action Covers block: broken arrows
* [PLANET-6700](https://jira.greenpeace.org/browse/PLANET-6700) - Gallery slider block: broken arrows
* [PLANET-6699](https://jira.greenpeace.org/browse/PLANET-6699) - Remove purple visited state from Split Two Columns links
* [PLANET-6686](https://jira.greenpeace.org/browse/PLANET-6686) - Split Two Columns: crashes on editor after selecting issues/tags
* [PLANET-4993](https://jira.greenpeace.org/browse/PLANET-4993) - EN Form block: Content on side style has wrong fonts

## 2.79.2 - 2022-05-10

### Features

* [PLANET-6727](https://jira.greenpeace.org/browse/PLANET-6727) - Search results: UI enhancements on posts results
* [PLANET-6638](https://jira.greenpeace.org/browse/PLANET-6638) - Create "Issues" block pattern

## 2.79.1 - 2022-05-05

### Bug Fixes

* [PLANET-6765](https://jira.greenpeace.org/browse/PLANET-6765) - Mobile navbar menu: sticks to the left instead of the right in RTL sites
* [PLANET-6760](https://jira.greenpeace.org/browse/PLANET-6760) - Language menu displayed in the wrong place
* [PLANET-6697](https://jira.greenpeace.org/browse/PLANET-6697) - Consent Mode: Fire default consent before gtm starts

## 2.79.0 - 2022-05-03

### Features

* [PLANET-6747](https://jira.greenpeace.org/browse/PLANET-6747) - Posts: show category on breadcrumbs 🔑
* [PLANET-6652](https://jira.greenpeace.org/browse/PLANET-6652) - Rewrite Search filters to follow native taxonomies
* [PLANET-6553](https://jira.greenpeace.org/browse/PLANET-6553) - Install and make Gravity Forms available for all offices

### Bug Fixes

* [PLANET-6742](https://jira.greenpeace.org/browse/PLANET-6742) - Multiple core blocks not using proper image "sizes" attribute

## 2.78.1 - 2022-04-26

### Features

* [PLANET-6734](https://jira.greenpeace.org/browse/PLANET-6734) - Heading links should not follow standalone links styles
* [PLANET-6731](https://jira.greenpeace.org/browse/PLANET-6731) - EN block: create hook to allow altering submitted data
* [PLANET-6637](https://jira.greenpeace.org/browse/PLANET-6637) - Create a Reviewer user role
* [PLANET-6613](https://jira.greenpeace.org/browse/PLANET-6613) - Covers carousel layout: New card's width of XXL viewports

### Bug Fixes

* [PLANET-6740](https://jira.greenpeace.org/browse/PLANET-6740) - Lightbox cursor applied to whole Image block div even with small images
* [PLANET-6708](https://jira.greenpeace.org/browse/PLANET-6708) - Mobile tabs menu covers part of Carousel Header and Page Header image
* [PLANET-6695](https://jira.greenpeace.org/browse/PLANET-6695) - Cookies settings box: a scroll bar is missing on mobile

## 2.78.0 - 2022-04-19

### Features

* [PLANET-6730](https://jira.greenpeace.org/browse/PLANET-6730) - Load post page CSS only on post pages
* [PLANET-6728](https://jira.greenpeace.org/browse/PLANET-6728) - Feature Flags: make it visually clear which ones are available only on dev sites
* [PLANET-6705](https://jira.greenpeace.org/browse/PLANET-6705) - Treat "Last visited website" cookie (gp\_nro) as 1st party
* [PLANET-6694](https://jira.greenpeace.org/browse/PLANET-6694) - Articles Block: Various UI improvements
* [PLANET-6673](https://jira.greenpeace.org/browse/PLANET-6673) - Navigation Bar: drop down menus 🔑

### Bug Fixes

* [PLANET-6551](https://jira.greenpeace.org/browse/PLANET-6551) - New nav bar is broken on Ipad Pro

## 2.77.1 - 2022-04-12

### Features

* [PLANET-6721](https://jira.greenpeace.org/browse/PLANET-6721) - Remove Greenland from the countries list
* [PLANET-6717](https://jira.greenpeace.org/browse/PLANET-6717) - Remove google-sitemap-generator plugin
* [PLANET-6690](https://jira.greenpeace.org/browse/PLANET-6690) - Remove Table and Button core block code overrides
* [PLANET-6670](https://jira.greenpeace.org/browse/PLANET-6670) - Support full alignment on blocks
* [PLANET-6514](https://jira.greenpeace.org/browse/PLANET-6514) - Listing pages: Implement page header designs
* [PLANET-6154](https://jira.greenpeace.org/browse/PLANET-6154) - Disable sync of archived posts to ElasticSearch if archived posts are never included in search

### Bug Fixes

* [PLANET-6702](https://jira.greenpeace.org/browse/PLANET-6702) - Change default state color on Mobile Navigation
* [PLANET-6625](https://jira.greenpeace.org/browse/PLANET-6625) - Consent Mode Pilot: doesn't persist when navigation on pages

### Infrastructure

* [PLANET-6713](https://jira.greenpeace.org/browse/PLANET-6713) - Decommission of the Greenlandic P4 instance

## 2.77.0 - 2022-04-04

### Features

* [PLANET-6668](https://jira.greenpeace.org/browse/PLANET-6668) - Create "Highlighted CTA" block pattern
* [PLANET-6667](https://jira.greenpeace.org/browse/PLANET-6667) - Create "Reality Check" block pattern

### Bug Fixes

* [PLANET-6696](https://jira.greenpeace.org/browse/PLANET-6696) - Remove the purple visited states on buttons
* [PLANET-6682](https://jira.greenpeace.org/browse/PLANET-6682) - EN Form block: Network error on submission
* [PLANET-6664](https://jira.greenpeace.org/browse/PLANET-6664) - Secondary buttons use ellipsis overflow

### Infrastructure

* [PLANET-5511](https://jira.greenpeace.org/browse/PLANET-5511) - Force all p4 traffic to go through Cloudflare

## 2.76.0 - 2022-03-23

### Features

* [PLANET-6649](https://jira.greenpeace.org/browse/PLANET-6649) - Re-enable Global 404 page
* [PLANET-6583](https://jira.greenpeace.org/browse/PLANET-6583) - Upgrade to Wordpress 5.9.x
* [PLANET-6555](https://jira.greenpeace.org/browse/PLANET-6555) - Form Builder: fields follow design system and are mobile-friendly
* [PLANET-5972](https://jira.greenpeace.org/browse/PLANET-5972) - Prevent using PNG images for photographs

### Bug Fixes

* [PLANET-6654](https://jira.greenpeace.org/browse/PLANET-6654) - P4 block style examples broken on WP 5.9

## 2.75.1 - 2022-03-16

### Features

* [PLANET-6513](https://jira.greenpeace.org/browse/PLANET-6513) - Implement the new tag links design
* [PLANET-6465](https://jira.greenpeace.org/browse/PLANET-6465) - Comments: add opt-in checkbox for submitting the form

### Bug Fixes

* [PLANET-6663](https://jira.greenpeace.org/browse/PLANET-6663) - Password input goes off-screen in small screens
* [PLANET-6659](https://jira.greenpeace.org/browse/PLANET-6659) - Download file button not styled as expected
* [PLANET-6658](https://jira.greenpeace.org/browse/PLANET-6658) - Sometimes RTL direction is not applied in the editor

## 2.75.0 - 2022-03-09

### Features

* [PLANET-6636](https://jira.greenpeace.org/browse/PLANET-6636) - Install and make Gravity Forms available for pilot offices
* [PLANET-6624](https://jira.greenpeace.org/browse/PLANET-6624) - Covers: expand page limitation to Actions 🔑
* [PLANET-6623](https://jira.greenpeace.org/browse/PLANET-6623) - Take Action Boxout: expand page limitation to Actions 🔑
* [PLANET-6592](https://jira.greenpeace.org/browse/PLANET-6592) - Add minimal navigation option on Actions

### Bug Fixes

* [PLANET-6647](https://jira.greenpeace.org/browse/PLANET-6647) - Youtube Embed: block not showing in the editor

## 2.74.1 - 2022-03-02

### Features

* [PLANET-6616](https://jira.greenpeace.org/browse/PLANET-6616) - Create "Side image, Text & CTA" block pattern

### Bug Fixes

* [PLANET-6657](https://jira.greenpeace.org/browse/PLANET-6657) - CarouselHeader slide transitions are broken in RTL sites
* [PLANET-6656](https://jira.greenpeace.org/browse/PLANET-6656) - "Follow us" still shows in footer with no social media links
* [PLANET-6651](https://jira.greenpeace.org/browse/PLANET-6651) - Missing padding top on posts with new mobile tabs
* [PLANET-6650](https://jira.greenpeace.org/browse/PLANET-6650) - Hubspot Happy Point: Not always loading in time
* [PLANET-6545](https://jira.greenpeace.org/browse/PLANET-6545) - Carousel Header: all the titles of the slides are H1

## 2.74.0 - 2022-02-22

### Features

* [PLANET-6653](https://jira.greenpeace.org/browse/PLANET-6653) - \[CVE-2021-21708] Upgrade to PHP 7.4.28
* [PLANET-6644](https://jira.greenpeace.org/browse/PLANET-6644) - Cookies: Set default copy from Cookies Block data
* [PLANET-6515](https://jira.greenpeace.org/browse/PLANET-6515) - Create the Action page type and Action Type taxonomy 🔑
* [PLANET-6508](https://jira.greenpeace.org/browse/PLANET-6508) - Navigation Bar: add validation warnings on menu configuration
* [PLANET-6480](https://jira.greenpeace.org/browse/PLANET-6480) - Remove theme customizer from the Admin Panel
* [PLANET-6075](https://jira.greenpeace.org/browse/PLANET-6075) - Implement the new design of the Cookies bar including the settings

### Bug Fixes

* [PLANET-6648](https://jira.greenpeace.org/browse/PLANET-6648) - File Block: PDF Preview doesn't show on Posts
* [PLANET-6635](https://jira.greenpeace.org/browse/PLANET-6635) - EN Form: Custom Donate URL field is missing

## 2.73.1 - 2022-02-15

### Features

* [PLANET-6634](https://jira.greenpeace.org/browse/PLANET-6634) - Enhanced Block Usage Report experiment (Beta)
* [PLANET-6544](https://jira.greenpeace.org/browse/PLANET-6544) - Remove the auto-generated Tag Page functionality
* [PLANET-6510](https://jira.greenpeace.org/browse/PLANET-6510) - Navigation Bar: implement a tabs menu on mobile 🔑

### Bug Fixes

* [PLANET-6621](https://jira.greenpeace.org/browse/PLANET-6621) - Tags: a new custom page is being autogenerated every time description is updated
* [PLANET-6615](https://jira.greenpeace.org/browse/PLANET-6615) - The global project values in the analytics section are missing
* [PLANET-6440](https://jira.greenpeace.org/browse/PLANET-6440) - Articles block: Translation strings cannot be set or edited for title and button

## 2.73.0 - 2022-02-08

### Features

* [PLANET-6622](https://jira.greenpeace.org/browse/PLANET-6622) - Rename "Website Navigation Title" to "NRO Selector Title"
* [PLANET-6611](https://jira.greenpeace.org/browse/PLANET-6611) - Install Post Type Switcher plugin
* [PLANET-6594](https://jira.greenpeace.org/browse/PLANET-6594) - Enable WP Media & Text block
* [PLANET-6587](https://jira.greenpeace.org/browse/PLANET-6587) - Transfer Custom CSS code from Admin panel to child themes
* [PLANET-6502](https://jira.greenpeace.org/browse/PLANET-6502) - Enable the core Columns block
* [PLANET-6308](https://jira.greenpeace.org/browse/PLANET-6308) - Release EN Form WYSIWYG block

### Bug Fixes

* [PLANET-6614](https://jira.greenpeace.org/browse/PLANET-6614) - Page tags keep ordering in an alphabetical order on save
* [PLANET-6598](https://jira.greenpeace.org/browse/PLANET-6598) - Covers Block: Carousel Layout excessive width on two cards
* [PLANET-6590](https://jira.greenpeace.org/browse/PLANET-6590) - Handbook search: "0" results always pulled out whereas results are showing up
* [PLANET-6589](https://jira.greenpeace.org/browse/PLANET-6589) - Handbook search: content wrongly pulled out and not paginated
* [PLANET-6588](https://jira.greenpeace.org/browse/PLANET-6588) - Handbook search: filters not working and not applicable

## 2.72.0 - 2022-01-31

### Features

* [PLANET-6593](https://jira.greenpeace.org/browse/PLANET-6593) - Add reading time to listing pages
* [PLANET-6577](https://jira.greenpeace.org/browse/PLANET-6577) - Create a custom "search" event to add to the Hotjar tracking code
* [PLANET-6512](https://jira.greenpeace.org/browse/PLANET-6512) - Implement the new category links design
* [PLANET-6496](https://jira.greenpeace.org/browse/PLANET-6496) - HappyPoint: add option for Hubspot form embed
* [PLANET-6387](https://jira.greenpeace.org/browse/PLANET-6387) - Make import/export functionality work for all post types

### Bug Fixes

* [PLANET-6606](https://jira.greenpeace.org/browse/PLANET-6606) - Mobile navigation issues on Safari < 13 reported to iPhone 5s / 7s / iPad
* [PLANET-6599](https://jira.greenpeace.org/browse/PLANET-6599) - Covers Block: Carousel Layout scroll arrow is missing

### Infrastructure

* [PLANET-5065](https://jira.greenpeace.org/browse/PLANET-5065) - Migrate P4 ingresses to Nginx
* [PLANET-3910](https://jira.greenpeace.org/browse/PLANET-3910) - Reduce GCS bucket IAM permissions to reduce attack vector

## 2.71.3 - 2022-01-17

### Features

* [PLANET-6536](https://jira.greenpeace.org/browse/PLANET-6536) - Ensure WPML doesn't localize feature settings
* [PLANET-6522](https://jira.greenpeace.org/browse/PLANET-6522) - Remove option for enhanced Donate button
* [PLANET-6505](https://jira.greenpeace.org/browse/PLANET-6505) - Post Author avatars: hide on "author override"
* [PLANET-6432](https://jira.greenpeace.org/browse/PLANET-6432) - Add reading time length to post details

## 2.71.2 - 2022-01-13

### Features

* [PLANET-5761](https://jira.greenpeace.org/browse/PLANET-5761) - Remove jQuery from search.js

### Bug Fixes

* [PLANET-6542](https://jira.greenpeace.org/browse/PLANET-6542) - New search bar: icon should not be clickable (empty state)
* [PLANET-6000](https://jira.greenpeace.org/browse/PLANET-6000) - Images with links open the link in a new tab and the lightbox in the old tab simultaneously.

## 2.71.1 - 2022-01-11

### Bug Fixes

* [PLANET-6574](https://jira.greenpeace.org/browse/PLANET-6574) - Media Library: Images are missing from the Grid layout list and the Post picker
* [PLANET-6572](https://jira.greenpeace.org/browse/PLANET-6572) - Submenu: floats over main menu

## 2.71.0 - 2022-01-10

### Features

* [PLANET-6552](https://jira.greenpeace.org/browse/PLANET-6552) - Wordpress upgrade to 5.8.3
* [PLANET-6540](https://jira.greenpeace.org/browse/PLANET-6540) - Remove master.k8s from production sites
* [PLANET-6384](https://jira.greenpeace.org/browse/PLANET-6384) - Automate new release deployments trigger
* [PLANET-5758](https://jira.greenpeace.org/browse/PLANET-5758) - Remove jQuery from header.js

### Bug Fixes

* [PLANET-6549](https://jira.greenpeace.org/browse/PLANET-6549) - New Navbar: GA action attribute not correctly set for the Menu hamburger button
* [PLANET-6548](https://jira.greenpeace.org/browse/PLANET-6548) - New Navbar: site logo link is too wide in screens < 992px
* [PLANET-6338](https://jira.greenpeace.org/browse/PLANET-6338) - Search: Returning duplicate results

## 2.70.1 - 2022-01-04

### Features

* [PLANET-6257](https://jira.greenpeace.org/browse/PLANET-6257) - Implement the new country selector design
* [PLANET-6256](https://jira.greenpeace.org/browse/PLANET-6256) - Implement the new design of the navigation bar
* [PLANET-6106](https://jira.greenpeace.org/browse/PLANET-6106) - Use block examples for Covers WYSIWYG styles
* [PLANET-6007](https://jira.greenpeace.org/browse/PLANET-6007) - Navigation bar - Search bar design improvement

### Bug Fixes

* [PLANET-6538](https://jira.greenpeace.org/browse/PLANET-6538) - Light YouTube player not used if video is included with Media block
* [PLANET-6489](https://jira.greenpeace.org/browse/PLANET-6489) - Covers: blocks break on page when using the Content style
* [PLANET-6474](https://jira.greenpeace.org/browse/PLANET-6474) - Author description: space when showing more
* [PLANET-6372](https://jira.greenpeace.org/browse/PLANET-6372) - Some images disappear because they use a path on the server instead of the CDN URL
