---
description: >-
  This document tracks all notable changes to Planet 4 project, introduced on
  each release
---

# Changelog

{% hint style="info" %}
Items with a 🔑 icon are not enabled by default, but instead they are released with an admin option (feature flag) to opt-in.
{% endhint %}

## 2.117.0 - 2023-12-04

### Features

- [PLANET-7340](https://jira.greenpeace.org/browse/PLANET-7340) - Make Post title mandatory for publishing
- [PLANET-7196](https://jira.greenpeace.org/browse/PLANET-7196) - Upgrade WPML to 4.6.6
- [PLANET-7192](https://jira.greenpeace.org/browse/PLANET-7192) - Upgrade ElasticPress to 4.7.x

### Bug Fixes

- [PLANET-7349](https://jira.greenpeace.org/browse/PLANET-7349) - Category tag wrong order and the arrow points backwards in RTL sites
- [PLANET-7334](https://jira.greenpeace.org/browse/PLANET-7334) - Hubspot form button can be hidden behind footer in Happy Point 
- [PLANET-7333](https://jira.greenpeace.org/browse/PLANET-7333) - Profile picture URL is trimmed too much
- [PLANET-7329](https://jira.greenpeace.org/browse/PLANET-7329) - Take action boxout looks weird on smaller viewport
- [PLANET-7320](https://jira.greenpeace.org/browse/PLANET-7320) - Migrate old background and text colors
- [PLANET-7297](https://jira.greenpeace.org/browse/PLANET-7297) - Opening 2 slides at the same time in the editor makes CarouselHeader go wild

### Infrastructure

- [PLANET-7288](https://jira.greenpeace.org/browse/PLANET-7288) - Upgrade sqlproxy to a maintainable version

## 2.116.1 - 2023-11-21

### Features

- [PLANET-7308](https://jira.greenpeace.org/browse/PLANET-7308) - Automatically create a News & Stories page
- [PLANET-7275](https://jira.greenpeace.org/browse/PLANET-7275) - Update login button color to reflect new visual identity

### Bug Fixes

- [PLANET-7331](https://jira.greenpeace.org/browse/PLANET-7331) - Blocks report API times out
- [PLANET-7330](https://jira.greenpeace.org/browse/PLANET-7330) - Sorting manually the Actions does not work in Covers block
- [PLANET-7326](https://jira.greenpeace.org/browse/PLANET-7326) - Carousel Header in a reusable block does not load Hammer

## 2.116.0 - 2023-11-13

### Features

* [PLANET-7291](https://jira.greenpeace.org/browse/PLANET-7291) - Replace Twitter icon with X
* [PLANET-7285](https://jira.greenpeace.org/browse/PLANET-7285) - Align listing pages grid view with design system 🔑

### Bug Fixes

* [PLANET-7309](https://jira.greenpeace.org/browse/PLANET-7309) - Related Articles block missing from Posts
* [PLANET-7310](https://jira.greenpeace.org/browse/PLANET-7310) - Update the secondary buttons on the P4 Columns block, Tasks style on mobile devices

## 2.115.0 - 2023-11-01

### Bug Fixes

* [PLANET-7315](https://jira.greenpeace.org/browse/PLANET-7315) - Hubspot API breaking change: lifecycle stage in forms
* [PLANET-7313](https://jira.greenpeace.org/browse/PLANET-7313) - Fix PageHeader cut off texts

## 2.114.1 - 2023-10-24

### Features

* [PLANET-7250](https://jira.greenpeace.org/browse/PLANET-7250) - Add Actions List to Post Report
* [PLANET-7240](https://jira.greenpeace.org/browse/PLANET-7240) - Replace GP Sans with Source Sans 3 on Listing pages
* [PLANET-7239](https://jira.greenpeace.org/browse/PLANET-7239) - Unify Tag listing pages UI and refactor template code

### Bug Fixes

* [PLANET-7299](https://jira.greenpeace.org/browse/PLANET-7299) - Reduce image size imported from Media Archive

## 2.114.0 - 2023-10-18

### Features

* [PLANET-7268](https://jira.greenpeace.org/browse/PLANET-7268) - Add meta and opengraph html tags on listing pages
* [PLANET-7227](https://jira.greenpeace.org/browse/PLANET-7227) - Enable new Media Archive implementation
* [PLANET-7178](https://jira.greenpeace.org/browse/PLANET-7178) - Add footer settings under navigation

### Bug Fixes

* [PLANET-7287](https://jira.greenpeace.org/browse/PLANET-7287) - Social Media block crashes in the editor
* [PLANET-7281](https://jira.greenpeace.org/browse/PLANET-7281) - Add trailing slash to self assigned canonical URLs

## 2.113.0 - 2023-09-25

### Features

* [PLANET-5727](https://jira.greenpeace.org/browse/PLANET-5727) - Limit the number of Post revisions

### Bug Fixes

* [PLANET-7267](https://jira.greenpeace.org/browse/PLANET-7267) - Text links are not visible in the editor
* [PLANET-7262](https://jira.greenpeace.org/browse/PLANET-7262) - Refactor ENForm to not have h2 nested in h4
* [PLANET-7256](https://jira.greenpeace.org/browse/PLANET-7256) - Saved Post Types don't appear in Post editor
* [PLANET-7243](https://jira.greenpeace.org/browse/PLANET-7243) - The Active state of the secondary button still shows the old dark blue color

## 2.112.1 - 2023-09-13

### Features

* [PLANET-7072](https://jira.greenpeace.org/browse/PLANET-7072) - Set PageType for High Level & Deep Dive Topic pages

### Bug Fixes

* [PLANET-7252](https://jira.greenpeace.org/browse/PLANET-7252) - Incorrect typeface used for caption in Gallery Carousel block
* [PLANET-7247](https://jira.greenpeace.org/browse/PLANET-7247) - Tag listing page not showing all posts
* [PLANET-7242](https://jira.greenpeace.org/browse/PLANET-7242) - Header title: the text is covered by the background of the following lines

## 2.112.0 - 2023-09-04

### Features

* [PLANET-7241](https://jira.greenpeace.org/browse/PLANET-7241) - Submenu block: Replace the GP Sans typeface for links with Source Sans 3
* [PLANET-7035](https://jira.greenpeace.org/browse/PLANET-7035) - Add new Page Types to the Data Layer values

### Bug Fixes

* [PLANET-7246](https://jira.greenpeace.org/browse/PLANET-7246) - Donate submenu covers donate button
* [PLANET-7191](https://jira.greenpeace.org/browse/PLANET-7191) - Search: Action type or Content type filters toggle the same section
* [PLANET-6927](https://jira.greenpeace.org/browse/PLANET-6927) - Page header pattern excessive spacing on tablet and mobile devices

## 2.111.1 - 2023-08-30

### Features

* [PLANET-7215](https://jira.greenpeace.org/browse/PLANET-7215) - Apply the new design for the Submenu block
* [PLANET-6793](https://jira.greenpeace.org/browse/PLANET-6793) - Sitemap page for new IA: display pages following native taxonomies
* [PLANET-7219](https://jira.greenpeace.org/browse/PLANET-7219) - Apply new identity link styles to Author page/block and 404 page

### Bug Fixes

* [PLANET-7217](https://jira.greenpeace.org/browse/PLANET-7217) - Home page carousel header banner flickers when you swipe
* [PLANET-6855](https://jira.greenpeace.org/browse/PLANET-6855) - Covers block thumbnails are lower resolution than they should

## 2.111.0 - 2023-08-21

### Features

* [PLANET-7209](https://jira.greenpeace.org/browse/PLANET-7209) - Move Reading Time option to Reading settings
* [PLANET-7177](https://jira.greenpeace.org/browse/PLANET-7177) - Move Default P4 Post Type setting under Settings > Writing
* [PLANET-6677](https://jira.greenpeace.org/browse/PLANET-6677) - Move Comments option to Discussion settings

### Bug Fixes

* [PLANET-7222](https://jira.greenpeace.org/browse/PLANET-7222) - Donate button dropdown goes off screen in small desktop sizes

### Infrastructure

* [PLANET-6871](https://jira.greenpeace.org/browse/PLANET-6871) - Disable list view permission from public stateless buckets

## 2.110.0 - 2023-08-08

### Features

* [PLANET-7137](https://jira.greenpeace.org/browse/PLANET-7137) - Enable new Greenpeace visual identity
* [PLANET-7102](https://jira.greenpeace.org/browse/PLANET-7102) - Add categories DLV for tracking High Level topics on Posts
* [PLANET-7046](https://jira.greenpeace.org/browse/PLANET-7046) - Align Tag listing page with new design

## 2.109.0 - 2023-08-02

### Features

* [PLANET-7198](https://jira.greenpeace.org/browse/PLANET-7198) - Add self-reference canonical urls to listing pages
* [PLANET-7047](https://jira.greenpeace.org/browse/PLANET-7047) - Migrate Donate button setting to a menu
* [PLANET-7045](https://jira.greenpeace.org/browse/PLANET-7045) - Create settings options for new IA pages

### Bug Fixes

* [PLANET-7203](https://jira.greenpeace.org/browse/PLANET-7203) - Menu validation is repeated when checking options several times

## 2.108.0 - 2023-07-20

### Features

* [PLANET-7186](https://jira.greenpeace.org/browse/PLANET-7186) - Add setting for Hubspot tracking code
* [PLANET-7172](https://jira.greenpeace.org/browse/PLANET-7172) - Apply the new visual identity to the Handbook side menu
* [PLANET-7171](https://jira.greenpeace.org/browse/PLANET-7171) - Use WordPress Playwright E2E test utils package

### Bug Fixes

* [PLANET-7169](https://jira.greenpeace.org/browse/PLANET-7169) - Analytics Field tracking ID(i.e projectID) is not saved on add/edit of page/posts

## 2.107.2 - 2023-07-03

### Features

* [PLANET-7180](https://jira.greenpeace.org/browse/PLANET-7180) - Integrate Profile pictures from Google profile

### Bug Fixes

* [PLANET-7103](https://jira.greenpeace.org/browse/PLANET-7103) - Login text is overlapping the Leave your reply
* [PLANET-5789](https://jira.greenpeace.org/browse/PLANET-5789) - Hide Post Report from the Subscriber user

## 2.107.1 - 2023-06-26

### Bug Fixes

* [PLANET-7183](https://jira.greenpeace.org/browse/PLANET-7183) - Search: not all the results are clickable

## 2.107.0 - 2023-06-26

### Features

* [PLANET-7176](https://jira.greenpeace.org/browse/PLANET-7176) - Add GPSA into the footer country selector
* [PLANET-7131](https://jira.greenpeace.org/browse/PLANET-7131) - Change the sync mechanism for Global Project Standards (Analytics Field)
* [PLANET-7105](https://jira.greenpeace.org/browse/PLANET-7105) - Automatically fire data layer script on GF donation confirmation Pages

### Bug Fixes

* [PLANET-7179](https://jira.greenpeace.org/browse/PLANET-7179) - Blocks report API throws an exception in some websites

### Infrastructure

* [PLANET-7181](https://jira.greenpeace.org/browse/PLANET-7181) - Upgrade Ubuntu base image to 22.04

## 2.106.0 - 2023-06-12

### Features

* [PLANET-7154](https://jira.greenpeace.org/browse/PLANET-7154) - Form Builder: duplicate Feeds on form duplication
* [PLANET-7148](https://jira.greenpeace.org/browse/PLANET-7148) - Form Builder: Enforce data retention policy
* [PLANET-7147](https://jira.greenpeace.org/browse/PLANET-7147) - Form Builder: Enable integration with native export tool
* [PLANET-7146](https://jira.greenpeace.org/browse/PLANET-7146) - Form Builder: Disable IP address retention during submission
* [PLANET-6235](https://jira.greenpeace.org/browse/PLANET-6235) - Upgrade ElasticPress to 4.5.x

### Bug Fixes

* [PLANET-7156](https://jira.greenpeace.org/browse/PLANET-7156) - Strings in Gravity forms not translated

## 2.104.0 - 2023-05-16

### Features

* [PLANET-7157](https://jira.greenpeace.org/browse/PLANET-7157) - Harmonise search input clear buttons
* [PLANET-7111](https://jira.greenpeace.org/browse/PLANET-7111) - Upgrade to Wordpress 6.2

### Bug Fixes

* [PLANET-7149](https://jira.greenpeace.org/browse/PLANET-7149) - Form submit button lacks styling
* [PLANET-7143](https://jira.greenpeace.org/browse/PLANET-7143) - Paginated listing pages spacing issue in RTL sites

## 2.103.0 - 2023-05-04

### Features

* [PLANET-7124](https://jira.greenpeace.org/browse/PLANET-7124) - Fix gGoal values in Gravity Forms
* [PLANET-7109](https://jira.greenpeace.org/browse/PLANET-7109) - Remove the GFTrackEvent DLV event
* [PLANET-6975](https://jira.greenpeace.org/browse/PLANET-6975) - Disable Background updates check in Site health

### Bug Fixes

* [PLANET-7133](https://jira.greenpeace.org/browse/PLANET-7133) - Links in Primary / Secondary Footer don't open in a new tab

### Infrastructure

* [PLANET-7107](https://jira.greenpeace.org/browse/PLANET-7107) - Rotate Kubernetes Credentials

## 2.101.0 - 2023-04-04

### Features

* [PLANET-7075](https://jira.greenpeace.org/browse/PLANET-7075) - Add a new DLV that tracks which blocks are being used on a page
* [PLANET-7028](https://jira.greenpeace.org/browse/PLANET-7028) - Gravity Forms: Automatically add and populate Analytics Feed and DLV values
* [PLANET-7003](https://jira.greenpeace.org/browse/PLANET-7003) - Implement client-side dynamic population on form fields

## 2.100.0 - 2023-03-29

### Bug Fixes

* [PLANET-7000](https://jira.greenpeace.org/browse/PLANET-7000) - Posts report spinner file is not found
* [PLANET-6978](https://jira.greenpeace.org/browse/PLANET-6978) - YouTube embed fullscreen functionality not available on Chrome
* [PLANET-6970](https://jira.greenpeace.org/browse/PLANET-6970) - WPML option disabling access to WordPress admin panel
* [PLANET-6874](https://jira.greenpeace.org/browse/PLANET-6874) - Gallery Slider block style doesn't show in the frontend

## 2.99.0 - 2023-03-13

### Features

* [PLANET-7087](https://jira.greenpeace.org/browse/PLANET-7087) - Retire old Blocks report and move the new one out of Beta
* [PLANET-7020](https://jira.greenpeace.org/browse/PLANET-7020) - Create a feature toggle to activate the new identity styles
* [PLANET-7012](https://jira.greenpeace.org/browse/PLANET-7012) - Remove jQuery library from main theme
* [PLANET-6989](https://jira.greenpeace.org/browse/PLANET-6989) - Apply the new UI for the share buttons
* [PLANET-6984](https://jira.greenpeace.org/browse/PLANET-6984) - Apply the new grey color to headings + body text 🔑
* [PLANET-6977](https://jira.greenpeace.org/browse/PLANET-6977) - Disable option for WPML footer language switcher

### Bug Fixes

* [PLANET-7094](https://jira.greenpeace.org/browse/PLANET-7094) - Broken hover animation for rounded images in Safari
* [PLANET-7013](https://jira.greenpeace.org/browse/PLANET-7013) - Rounded images are distorted in certain viewports

## 2.98.1 - 2023-02-28

### Features

* [PLANET-7092](https://jira.greenpeace.org/browse/PLANET-7092) - Purge cache on pages that include a form when the form is updated
* [PLANET-7021](https://jira.greenpeace.org/browse/PLANET-7021) - Remove the core colors from the block patterns

### Bug Fixes

* [PLANET-7025](https://jira.greenpeace.org/browse/PLANET-7025) - Covers block "Load more" button text not translated on frontend

## 2.98.0 - 2023-02-20

### Features

* [PLANET-7055](https://jira.greenpeace.org/browse/PLANET-7055) - Integrate Playwright testing framework into our application repositories
* [PLANET-7044](https://jira.greenpeace.org/browse/PLANET-7044) - Create a feature toggle that enables all the IA features
* [PLANET-7005](https://jira.greenpeace.org/browse/PLANET-7005) - Refactor Analytics sidebar option to use native settings panel UI

### Bug Fixes

* [PLANET-7077](https://jira.greenpeace.org/browse/PLANET-7077) - Featured img not picked up / missing when sharing on socials
* [PLANET-7073](https://jira.greenpeace.org/browse/PLANET-7073) - Posts listing page pagination redirects to an article that has a title which starts with the same number
* [PLANET-7041](https://jira.greenpeace.org/browse/PLANET-7041) - Search not working properly in Thai
* [PLANET-7033](https://jira.greenpeace.org/browse/PLANET-7033) - Lists block: Adding new items with Enter key does not work
* [PLANET-6473](https://jira.greenpeace.org/browse/PLANET-6473) - Checkbox doesn't show focus state

## 2.97.0 - 2023-02-06

### Features

* [PLANET-7029](https://jira.greenpeace.org/browse/PLANET-7029) - Create default Action type: petitions
* [PLANET-6982](https://jira.greenpeace.org/browse/PLANET-6982) - Implement GF plugin translations workflow
* [PLANET-6964](https://jira.greenpeace.org/browse/PLANET-6964) - Remove listing pages background image
* [PLANET-6864](https://jira.greenpeace.org/browse/PLANET-6864) - Implement localization support for js file translatable strings in Master theme

### Bug Fixes

* [PLANET-7056](https://jira.greenpeace.org/browse/PLANET-7056) - Form submissions are not enforced as Ajax

## 2.96.0 - 2023-01-26

### Features

* [PLANET-7038](https://jira.greenpeace.org/browse/PLANET-7038) - Render line breaks in Spreadsheet Block
* [PLANET-7011](https://jira.greenpeace.org/browse/PLANET-7011) - Action post type should only have one action type
* [PLANET-6965](https://jira.greenpeace.org/browse/PLANET-6965) - Add Actions pattern layout to Actions post type
* [PLANET-6963](https://jira.greenpeace.org/browse/PLANET-6963) - Enable navigation dropdown submenus
* [PLANET-6957](https://jira.greenpeace.org/browse/PLANET-6957) - Remove action-type string from Action Type permalink url
* [PLANET-6956](https://jira.greenpeace.org/browse/PLANET-6956) - Use Action Type slug on Actions permalink url

### Bug Fixes

* [PLANET-7027](https://jira.greenpeace.org/browse/PLANET-7027) - Tag listing page not behaving as expected
* [PLANET-6923](https://jira.greenpeace.org/browse/PLANET-6923) - Image credit missing when importing from media library

## 2.95.0 - 2023-01-11

### Features

* [PLANET-6983](https://jira.greenpeace.org/browse/PLANET-6983) - Actions: remove tags from header
* [PLANET-6968](https://jira.greenpeace.org/browse/PLANET-6968) - Move typography settings to theme.json
* [PLANET-6960](https://jira.greenpeace.org/browse/PLANET-6960) - Add sidebar option to define canonical link
* [PLANET-6936](https://jira.greenpeace.org/browse/PLANET-6936) - Remove jQuery on the frontend
