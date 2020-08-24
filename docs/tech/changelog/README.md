---
description: >-
  This document tracks all notable changes to Planet 4 project, introduced on
  each release
---

# Changelog

## 2.38.0 - 2020-08-24

### Features

- [PLANET-5414](https://jira.greenpeace.org/browse/PLANET-5414) - Implement data attributes on Articles Lists (on post type pages)
- [PLANET-5227](https://jira.greenpeace.org/browse/PLANET-5227) - Counter Block accessibility: improve screen reader markup
- [PLANET-5206](https://jira.greenpeace.org/browse/PLANET-5206) - Implement data attributes on Country Selector
- [PLANET-5200](https://jira.greenpeace.org/browse/PLANET-5200) - Implement data attributes on Carousel Header
- [PLANET-4803](https://jira.greenpeace.org/browse/PLANET-4803) - Convert Cookies Block to WYSIWYG

### Bug Fixes

- [PLANET-5407](https://jira.greenpeace.org/browse/PLANET-5407) - Failed assets builds don't make the pipeline fail
- [PLANET-5400](https://jira.greenpeace.org/browse/PLANET-5400) - Articles editor CSS rule scope is not specific enough
- [PLANET-5344](https://jira.greenpeace.org/browse/PLANET-5344) - Video block is displayed on top of other blocks in the editor

### Infrastructure

- [PLANET-5425](https://jira.greenpeace.org/browse/PLANET-5425) - Deploy ElasticSearch JVM settings in Prod
- [PLANET-5391](https://jira.greenpeace.org/browse/PLANET-5391) - Deploy ElasticSearch via CircleCI

## 2.37.0 - 2020-08-12

### Features

* [PLANET-5362](https://jira.greenpeace.org/browse/PLANET-5362) - Change link color for the Plastics theme
* [PLANET-5351](https://jira.greenpeace.org/browse/PLANET-5351) - Implement data attribute on Post Type Tag \(on the post header\)
* [PLANET-5204](https://jira.greenpeace.org/browse/PLANET-5204) - Implement data attributes on Articles Block
* [PLANET-5189](https://jira.greenpeace.org/browse/PLANET-5189) - Refactor Medialibrary plugin and integrate into master theme

### Bug Fixes

* [PLANET-5392](https://jira.greenpeace.org/browse/PLANET-5392) - Changes to the UI when toggling features not reflected in WP menu after save, requires additional refresh
* [PLANET-5376](https://jira.greenpeace.org/browse/PLANET-5376) - Broken dates in Articles block in Safari
* [PLANET-5235](https://jira.greenpeace.org/browse/PLANET-5235) - Header Carousel: Header text cuts off at 32 characters

### Infrastructure

* [PLANET-5379](https://jira.greenpeace.org/browse/PLANET-5379) - Apply missing tags for app alerting in New Relic
* [PLANET-5375](https://jira.greenpeace.org/browse/PLANET-5375) - Update GCP cost estimates based on new compute
* [PLANET-5365](https://jira.greenpeace.org/browse/PLANET-5365) - Script to safely restart P4 workloads to allow draining of single node
* [PLANET-5358](https://jira.greenpeace.org/browse/PLANET-5358) - Fix Traefik SSL certificate renewal in Dev
* [PLANET-5355](https://jira.greenpeace.org/browse/PLANET-5355) - Reduce node pool count and monitor in Dev
* [PLANET-5352](https://jira.greenpeace.org/browse/PLANET-5352) - Reduce node pool count and monitor in prod
* [PLANET-5328](https://jira.greenpeace.org/browse/PLANET-5328) - Fix Traefik SSL certificate renewal in production

## 2.36.2 - 2020-08-03

### Bug Fixes

* [PLANET-5371](https://jira.greenpeace.org/browse/PLANET-5371) - Translations not working in Articles header and load more text defaults
* [PLANET-5296](https://jira.greenpeace.org/browse/PLANET-5296) - Posts: Empty TA Card when TA Page is archived

## 2.36.1.2 - 2020-07-29

### Features

* [PLANET-5346](https://jira.greenpeace.org/browse/PLANET-5346) - Decrease cookie expiration value for last visited NRO
* [PLANET-4801](https://jira.greenpeace.org/browse/PLANET-4801) - Convert Articles block to WYSIWYG

### Bug Fixes

* [PLANET-5294](https://jira.greenpeace.org/browse/PLANET-5294) - Apply typography rules to numbered lists
* [PLANET-5276](https://jira.greenpeace.org/browse/PLANET-5276) - EN Form: Country Field appears always in English
* [PLANET-5230](https://jira.greenpeace.org/browse/PLANET-5230) - Plastics theme links have wrong colour and hover state
* [PLANET-5187](https://jira.greenpeace.org/browse/PLANET-5187) - Plastics theme buttons have the wrong colour text
* [PLANET-5161](https://jira.greenpeace.org/browse/PLANET-5161) - Plastic theme Column block titles missing bold weight

## 2.36.0 - 2020-07-23

### Features

* [PLANET-5307](https://jira.greenpeace.org/browse/PLANET-5307) - Exclude landing page from search results
* [PLANET-5274](https://jira.greenpeace.org/browse/PLANET-5274) - Landing Page: Redirect on last visited NRO based on cookie
* [PLANET-5193](https://jira.greenpeace.org/browse/PLANET-5193) - Create Acceptance test for the Campaign Importer
* [PLANET-4799](https://jira.greenpeace.org/browse/PLANET-4799) - Convert Counter Block to WYSIWYG

### Bug Fixes

* [PLANET-5269](https://jira.greenpeace.org/browse/PLANET-5269) - Fix footer on mobile

### Infrastructure

* [PLANET-5278](https://jira.greenpeace.org/browse/PLANET-5278) - Update utility versions in base circleci image
* [PLANET-5277](https://jira.greenpeace.org/browse/PLANET-5277) - Replace rocketchat with slack notifications in \#p4-infra-ci

## 2.35.1 - 2020-07-21

### Features

* [PLANET-5272](https://jira.greenpeace.org/browse/PLANET-5272) - Add hreflang tags to the homepage of all NROs
* [PLANET-5225](https://jira.greenpeace.org/browse/PLANET-5225) - Carousel Header: remove Zoom and slide to gray style
* [PLANET-5222](https://jira.greenpeace.org/browse/PLANET-5222) - Create a "Planet 4" sidebar entry on wp-admin and group the settings

### Bug Fixes

* [PLANET-5319](https://jira.greenpeace.org/browse/PLANET-5319) - Carousel Header block: Failing to edit page because when image source is missing
* [PLANET-5263](https://jira.greenpeace.org/browse/PLANET-5263) - Decrease H1 size on mobile

## 2.35.0 - 2020-07-15

### Features

* [PLANET-5142](https://jira.greenpeace.org/browse/PLANET-5142) - Implement Cloudflare's Image Optimization on Carousel block
* [PLANET-4795](https://jira.greenpeace.org/browse/PLANET-4795) - Add Campaign Page types to posts report

### Bug Fixes

* [PLANET-5306](https://jira.greenpeace.org/browse/PLANET-5306) - Post type doesn't appear on single post pages
* [PLANET-5305](https://jira.greenpeace.org/browse/PLANET-5305) - Column block: non-linked Header styles broken

## 2.34.3 - 2020-07-07

### Features

* [PLANET-5293](https://jira.greenpeace.org/browse/PLANET-5293) - EN Form: Make "Goal" field mandatory
* [PLANET-5151](https://jira.greenpeace.org/browse/PLANET-5151) - Migrate the EN Form plugin as a block to Blocks plugin

## 2.34.2 - 2020-07-06

### Features

* [PLANET-5199](https://jira.greenpeace.org/browse/PLANET-5199) - Implement data attributes on Columns Block
* [PLANET-5116](https://jira.greenpeace.org/browse/PLANET-5116) - Fix all the remaining vertical spacing issues.
* [PLANET-4987](https://jira.greenpeace.org/browse/PLANET-4987) - Prevent sync of non-pdf attachments to ElasticSearch

### Bug Fixes

* [PLANET-5285](https://jira.greenpeace.org/browse/PLANET-5285) - EN Form Block not firing gGoal dataLayer value
* [PLANET-5231](https://jira.greenpeace.org/browse/PLANET-5231) - On PDF links remove External Link icon

### Infrastructure

* [PLANET-5271](https://jira.greenpeace.org/browse/PLANET-5271) - Reduce cpu and memory requests for static chart
* [PLANET-5260](https://jira.greenpeace.org/browse/PLANET-5260) - Reduce cpu and memory requests for wordpress containers

## 2.34.1 - 2020-06-30

### Features

* [PLANET-5233](https://jira.greenpeace.org/browse/PLANET-5233) - Don't enforce Google login on aliases
* [PLANET-5202](https://jira.greenpeace.org/browse/PLANET-5202) - Fix the data-ga-action on the Search Page
* [PLANET-5201](https://jira.greenpeace.org/browse/PLANET-5201) - Implement data attributes on Header \(pages, posts, campaigns\)
* [PLANET-5099](https://jira.greenpeace.org/browse/PLANET-5099) - Implement PSR-4 autoloading in master theme
* [PLANET-5082](https://jira.greenpeace.org/browse/PLANET-5082) - Accessibility change red based greys to blue based ones.

## 2.34.0 - 2020-06-25

### Features

* [PLANET-5190](https://jira.greenpeace.org/browse/PLANET-5190) - Update and re-enable EN Form acceptance tests
* [PLANET-5114](https://jira.greenpeace.org/browse/PLANET-5114) - Adding css variables for common child theme overrides
* [PLANET-5080](https://jira.greenpeace.org/browse/PLANET-5080) - Apply same typography across all P4 blocks
* [PLANET-5036](https://jira.greenpeace.org/browse/PLANET-5036) - Reset the colors palette for P4
* [PLANET-4818](https://jira.greenpeace.org/browse/PLANET-4818) - P4 message board on all sites dashboard
* [PLANET-4536](https://jira.greenpeace.org/browse/PLANET-4536) - Perfomance: reduce unused dependencies from bootstrap in code

### Bug Fixes

* [PLANET-5203](https://jira.greenpeace.org/browse/PLANET-5203) - Enhanced mobile donate button causing a few rendering problems
* [PLANET-5186](https://jira.greenpeace.org/browse/PLANET-5186) - Spreadsheet block doesn't appear on frontend after being saved

## 2.33.1 - 2020-06-22

### Features

* [PLANET-5215](https://jira.greenpeace.org/browse/PLANET-5215) - Allow customization of tag page redirect handling
* [PLANET-5141](https://jira.greenpeace.org/browse/PLANET-5141) - Simplify NRO & Base CI configuration
* [PLANET-5079](https://jira.greenpeace.org/browse/PLANET-5079) - Adjust in-line link colour for better accessibility
* [PLANET-4998](https://jira.greenpeace.org/browse/PLANET-4998) - Measure PHP test coverage
* [PLANET-4891](https://jira.greenpeace.org/browse/PLANET-4891) - Enforce Google Login for users with greenpeace.org email

### Bug Fixes

* [PLANET-5192](https://jira.greenpeace.org/browse/PLANET-5192) - Acceptance tests not running for blocks and EN plugin
* [PLANET-4323](https://jira.greenpeace.org/browse/PLANET-4323) - EN form block: fix checkbox styling of form on a side style

### Infrastructure

* [PLANET-4977](https://jira.greenpeace.org/browse/PLANET-4977) - Upgrade k8 nodes
* [PLANET-4976](https://jira.greenpeace.org/browse/PLANET-4976) - Redis deployment using 100% CPU in k8 1.13 & 1.14
* [PLANET-4577](https://jira.greenpeace.org/browse/PLANET-4577) - Limit redis pod memory resources

## 2.33.0 - 2020-06-15

### Features

* [PLANET-5185](https://jira.greenpeace.org/browse/PLANET-5185) - Add permalink to the blocks usage overview
* [PLANET-5128](https://jira.greenpeace.org/browse/PLANET-5128) - Expand images lazy-loading on Image block
* [PLANET-4782](https://jira.greenpeace.org/browse/PLANET-4782) - Check if there are still campaigns that have the old \_campaign\_page\_template attribute

### Bug Fixes

* [PLANET-5057](https://jira.greenpeace.org/browse/PLANET-5057) - Search: Excerpt cuts off at 25 words

### Infrastructure

* [PLANET-4957](https://jira.greenpeace.org/browse/PLANET-4957) - Don't upgrade automatically to latest WP version
* [PLANET-5125](https://jira.greenpeace.org/browse/PLANET-5125) - Integrate planet4-circleci-config into planet4-nro-generator
* [PLANET-5112](https://jira.greenpeace.org/browse/PLANET-5112) - Perform backstop-history and build-branch in parallel in all envs

## 2.32.2 - 2020-06-09

### Features

* [PLANET-5126](https://jira.greenpeace.org/browse/PLANET-5126) - Take Action Boxout: Simplify passive state of cards on desktop and mobile
* [PLANET-5081](https://jira.greenpeace.org/browse/PLANET-5081) - Add option for enhanced mobile Donate button in settings
* [PLANET-5060](https://jira.greenpeace.org/browse/PLANET-5060) - Simplify passive state of Take Action cards on  desktop and mobile
* [PLANET-5017](https://jira.greenpeace.org/browse/PLANET-5017) - Re-implement Spreadsheet block frontend in React
* [PLANET-4914](https://jira.greenpeace.org/browse/PLANET-4914) - Spreadsheet block: Sticky header and sorting UX

### Bug Fixes

* [PLANET-5166](https://jira.greenpeace.org/browse/PLANET-5166) - Integration with Smartsheet API is not working
* [PLANET-5160](https://jira.greenpeace.org/browse/PLANET-5160) - Search seems broken, always no result \(in admin\)
* [PLANET-5145](https://jira.greenpeace.org/browse/PLANET-5145) - Search 500 error when post type is deleted
* [PLANET-5088](https://jira.greenpeace.org/browse/PLANET-5088) - Search box: magnifier overlaps 'x' button
* [PLANET-5034](https://jira.greenpeace.org/browse/PLANET-5034) - Archive label text shown outside of label for Japan

## 2.32.1 - 2020-06-03

### Features

* [PLANET-5071](https://jira.greenpeace.org/browse/PLANET-5071) - Implement data attributes on Covers Block
* [PLANET-2209](https://jira.greenpeace.org/browse/PLANET-2209) - P4 settings: Display "Settings saved" notification after changes applied

### Bug Fixes

* [PLANET-5101](https://jira.greenpeace.org/browse/PLANET-5101) - Submenu block: Dash breaks anchor link
* [PLANET-5062](https://jira.greenpeace.org/browse/PLANET-5062) - Saving a Take Action Boxout on Posts with code editor doesn't preserve page selection

## 2.32.0 - 2020-05-28

### Features

* [PLANET-5111](https://jira.greenpeace.org/browse/PLANET-5111) - Rename "Analytics Local Smartsheet ID" to "Local Projects Smartsheet ID"
* [PLANET-5078](https://jira.greenpeace.org/browse/PLANET-5078) - Create post-deploy script to cleanup duplicate metadata
* [PLANET-5058](https://jira.greenpeace.org/browse/PLANET-5058) - Table block: implement color styles
* [PLANET-5033](https://jira.greenpeace.org/browse/PLANET-5033) - Replace main theme background colours pale blue and cream with white
* [PLANET-5022](https://jira.greenpeace.org/browse/PLANET-5022) - Spreadsheet block: Change description of the block
* [PLANET-4923](https://jira.greenpeace.org/browse/PLANET-4923) - Search query is executed twice on each initial search page load
* [PLANET-4868](https://jira.greenpeace.org/browse/PLANET-4868) - Update Timber to 1.16.0
* [PLANET-4641](https://jira.greenpeace.org/browse/PLANET-4641) - P4 settings: reorder options
* [PLANET-4143](https://jira.greenpeace.org/browse/PLANET-4143) - All blocks: Add https:// validation error for url fields

### Bug Fixes

* [PLANET-5035](https://jira.greenpeace.org/browse/PLANET-5035) - Author bio: text box is longer than the image on M screens
* [PLANET-5032](https://jira.greenpeace.org/browse/PLANET-5032) - Filtering on pages returns 0 results for Italy
* [PLANET-5025](https://jira.greenpeace.org/browse/PLANET-5025) - EN Form: Social buttons not aligned on Thank You message
* [PLANET-4926](https://jira.greenpeace.org/browse/PLANET-4926) - PDF icon not shown in CTA when URL includes GA UTM code
* [PLANET-4511](https://jira.greenpeace.org/browse/PLANET-4511) - Separator Block not rendering the default style

## 2.31.2 - 2020-05-19

### Features

* [PLANET-5037](https://jira.greenpeace.org/browse/PLANET-5037) - Spreadsheet block: implement color styles
* [PLANET-4965](https://jira.greenpeace.org/browse/PLANET-4965) - Change Shedding Light header gradient colour

### Bug Fixes

* [PLANET-5089](https://jira.greenpeace.org/browse/PLANET-5089) - Take action element on the wrong side on RTL sites
* [PLANET-5063](https://jira.greenpeace.org/browse/PLANET-5063) - Navigation: Donate button hover color is not visible
* [PLANET-5029](https://jira.greenpeace.org/browse/PLANET-5029) - Alignment of text wrapped around images is off
* [PLANET-4955](https://jira.greenpeace.org/browse/PLANET-4955) - Search: TA pages low in search results
* [PLANET-4928](https://jira.greenpeace.org/browse/PLANET-4928) - GPI Media Library: Import button fails to load
* [PLANET-4774](https://jira.greenpeace.org/browse/PLANET-4774) - Investigate why certain attachments have many duplicate metadata records.

## 2.31.1 - 2020-05-13

### Features

* [PLANET-4969](https://jira.greenpeace.org/browse/PLANET-4969) - Implement data attributes on Search Page
* [PLANET-5050](https://jira.greenpeace.org/browse/PLANET-5050) - Upgrade WPML to 4.3.12

### Bug Fixes

* [PLANET-4695](https://jira.greenpeace.org/browse/PLANET-4695) - Exception: Cannot use object of type WP\_Error as array
* [PLANET-5027](https://jira.greenpeace.org/browse/PLANET-5027) - Submenu block: Padding missing

## 2.31.0 - 2020-05-11

### Features

* [PLANET-4970](https://jira.greenpeace.org/browse/PLANET-4970) - Implement data attributes on Navigation Bar
* [PLANET-4967](https://jira.greenpeace.org/browse/PLANET-4967) - Securely deploy Smartsheet's API key in all Planet 4 instances

### Bug Fixes

* [PLANET-4700](https://jira.greenpeace.org/browse/PLANET-4700) - TA boxout excerpt is copied to post excerpt
* [PLANET-4653](https://jira.greenpeace.org/browse/PLANET-4653) - Remove Spacer override and use a different method to position the Take Action Boxout

## 2.30.1 - 2020-05-06

### Features

* [PLANET-4971](https://jira.greenpeace.org/browse/PLANET-4971) - Implement data attributes on Footer

### Bug Fixes

* [PLANET-5048](https://jira.greenpeace.org/browse/PLANET-5048) - Image thumbs in the Search page loading huge images
* [PLANET-4937](https://jira.greenpeace.org/browse/PLANET-4937) - Search results post type should use an a tag instead of a button that behaves like an a tag
* [PLANET-5001](https://jira.greenpeace.org/browse/PLANET-5001) - Footer primary + Disclaimer message links colours on child theme get overridden
* [PLANET-5000](https://jira.greenpeace.org/browse/PLANET-5000) - Rollover color of primary navigation \(footer and header\) links is wrong 
* [PLANET-5015](https://jira.greenpeace.org/browse/PLANET-5015) - Blocks report API doesn't report Carousel Header accurately
* [PLANET-4853](https://jira.greenpeace.org/browse/PLANET-4853) - Covers block: Rows displayed shows all on mobile

## 2.30.0 - 2020-04-29

### Features

* [PLANET-4797](https://jira.greenpeace.org/browse/PLANET-4797) - Remove Shortcode UI plugin
* [PLANET-4968](https://jira.greenpeace.org/browse/PLANET-4968) - Hide Scope dropdown from Analytics & Tracking fields
* [PLANET-4163](https://jira.greenpeace.org/browse/PLANET-4163) - Include excerpt in mobile search results
* [PLANET-4946](https://jira.greenpeace.org/browse/PLANET-4946) - Edit selection in Gallery Block
* [PLANET-4878](https://jira.greenpeace.org/browse/PLANET-4878) - Make Campaign data layer field mandatory for Campaign pages
* [PLANET-4913](https://jira.greenpeace.org/browse/PLANET-4913) - Spreadsheet block: Fix size and add scrolling

### Bug Fixes

* [PLANET-4920](https://jira.greenpeace.org/browse/PLANET-4920) - Evergreen Pages: Some Opengraph metadata are empty
* [PLANET-4723](https://jira.greenpeace.org/browse/PLANET-4723) - Author bio block is missing "Read more" link when too long - broken for M screens
* [PLANET-5018](https://jira.greenpeace.org/browse/PLANET-5018) - Spreadsheet block: missing from Campaigns
* [PLANET-4919](https://jira.greenpeace.org/browse/PLANET-4919) - Ensure automatically selected options are correctly shown in the Preview when switching themes
* [PLANET-4335](https://jira.greenpeace.org/browse/PLANET-4335) - EN Form: Country field label appears twice on front-end
* [PLANET-4887](https://jira.greenpeace.org/browse/PLANET-4887) - Text that is \#000000 should be \#1A1A1A
* [PLANET-4862](https://jira.greenpeace.org/browse/PLANET-4862) - Load more button doesn't work on some pages / devices

## 2.29 - 2020-04-22

### Features

* [PLANET-4857](https://jira.greenpeace.org/browse/PLANET-4857) - Add a new parameter 'projectID' to the dataLayer
* [PLANET-4859](https://jira.greenpeace.org/browse/PLANET-4859) - Pull "Local Project" values from each NRO's Smartsheet table 
* [PLANET-4855](https://jira.greenpeace.org/browse/PLANET-4855) - Pull "Global Project" values from Smartsheet to campaign dropdowns \(dataLayer\)
* [PLANET-4924](https://jira.greenpeace.org/browse/PLANET-4924) - Re-enable the native buttons block

### Bug Fixes

* [PLANET-4990](https://jira.greenpeace.org/browse/PLANET-4990) - Error upon logging in via Google
* [PLANET-4901](https://jira.greenpeace.org/browse/PLANET-4901) - P4CG Campaign Sidebar: Ensure fields with dependencies get the right defaults
* [PLANET-4953](https://jira.greenpeace.org/browse/PLANET-4953) - Uncaught TypeError: Return value of P4\_User::name\(\) must be of the type string...
* [PLANET-4738](https://jira.greenpeace.org/browse/PLANET-4738) - Search ErrorException: Warning: Invalid argument supplied for foreach\(\)
* [PLANET-4975](https://jira.greenpeace.org/browse/PLANET-4975) - Non-pdf attachments are returned by search
* [PLANET-4927](https://jira.greenpeace.org/browse/PLANET-4927) - Page, Evergreen: Spacing issue when using background image
* [PLANET-4705](https://jira.greenpeace.org/browse/PLANET-4705) - Header Carousel: icon to delete image is not shown

## 2.28 - 2020-04-15

### Features

* [PLANET-4827](https://jira.greenpeace.org/browse/PLANET-4827) - Create importer for archive files into elastic search and include in search result
* [PLANET-4864](https://jira.greenpeace.org/browse/PLANET-4864) - Remove pre-defined background color from Campaign themes

### Bug Fixes

* [PLANET-4895](https://jira.greenpeace.org/browse/PLANET-4895) - ErrorException: Warning: array\_merge\(\): Argument \#2 is not an array

## 2.27 - 2020-04-08

### Features

* [PLANET-4858](https://jira.greenpeace.org/browse/PLANET-4858) - Add a new parameter 'gPlatform' to the dataLayer
* [PLANET-4906](https://jira.greenpeace.org/browse/PLANET-4906) - Create UI for Whatsapp share button

### Bug Fixes

* [PLANET-4779](https://jira.greenpeace.org/browse/PLANET-4779) - Author bio: Not visible on Post
* [PLANET-4846](https://jira.greenpeace.org/browse/PLANET-4846) - EN Form: Bottom vertical space is off
* [PLANET-4820](https://jira.greenpeace.org/browse/PLANET-4820) - Campaigns: Footer color should not be applied when "Main website navigation" is selected

## 2.26 - 2020-03-26

### Features

* [PLANET-4889](https://jira.greenpeace.org/browse/PLANET-4889) - Add new value to campaign dataLayer dropdown \(Covid-19\)

### Bug Fixes

* [PLANET-4623](https://jira.greenpeace.org/browse/PLANET-4623) - Some Code Included in the Social Media Share Excerpt
* [PLANET-4822](https://jira.greenpeace.org/browse/PLANET-4822) - Gallery block: image selector not visible

## 2.25 - 2020-03-25

### Features

* [PLANET-4869](https://jira.greenpeace.org/browse/PLANET-4869) - Update login page UI for the new version of the plugin
* [PLANET-4833](https://jira.greenpeace.org/browse/PLANET-4833) - Campaigns: Add language selector to minimal navigation
* [PLANET-4710](https://jira.greenpeace.org/browse/PLANET-4710) - Columns block: Align CTA buttons in P4CG
* [PLANET-4561](https://jira.greenpeace.org/browse/PLANET-4561) - Make sure P4 Spreadsheet embed \(New Block\) respects all Campaign Styles 
* [PLANET-4838](https://jira.greenpeace.org/browse/PLANET-4838) - Multilingual sites - Apply main site WPML configuration to Campaign pages 

### Bug Fixes

* [PLANET-4844](https://jira.greenpeace.org/browse/PLANET-4844) - Pages: Open Graph/Social fields not pulled
* [PLANET-4845](https://jira.greenpeace.org/browse/PLANET-4845) - JS Error: Unable to edit background image in pages
* [PLANET-4806](https://jira.greenpeace.org/browse/PLANET-4806) - Covers Block: Manual Override not finding posts
* [PLANET-4880](https://jira.greenpeace.org/browse/PLANET-4880) - Increase timeout value of the Optimize anti-flicker snippet

## 2.24 - 2020-03-18

### Bug Fixes

* [PLANET-4680](https://jira.greenpeace.org/browse/PLANET-4680) - The font size on the photo caption is huge
* [PLANET-4860](https://jira.greenpeace.org/browse/PLANET-4860) - ErrorException: Catchable Fatal Error: Object of class stdClass could not be converted to string
* [PLANET-4842](https://jira.greenpeace.org/browse/PLANET-4842) - Mobile screens - Homepage Carousel Header scrolling issue

## 2.23.1 - 2020-03-12

### Bug Fixes

* [PLANET-4840](https://jira.greenpeace.org/browse/PLANET-4840) - Hide page title doesn't hide the title on Campaigs

## 2.23 - 2020-03-11

### Features

* [PLANET-4745](https://jira.greenpeace.org/browse/PLANET-4745) - Campaigns CSS: EN form block title and CTA style
* [PLANET-4767](https://jira.greenpeace.org/browse/PLANET-4767) - Spreadsheet block: Adjust vertical spacing 
* [PLANET-4750](https://jira.greenpeace.org/browse/PLANET-4750) - Campaigns customiser - Adjust Header primary font options
* [PLANET-4751](https://jira.greenpeace.org/browse/PLANET-4751) - Refactor campaign exporter

### Bug Fixes

* [PLANET-4821](https://jira.greenpeace.org/browse/PLANET-4821) - Gallery block: only first image is being displayed
* [PLANET-4766](https://jira.greenpeace.org/browse/PLANET-4766) - Align icons in social media share button
* [PLANET-4804](https://jira.greenpeace.org/browse/PLANET-4804) - Articles Block: Sorting order using Manual Override feature
* [PLANET-4776](https://jira.greenpeace.org/browse/PLANET-4776) - Campaigns Arctic theme: CTA buttons are broken \(Image style\) 
* [PLANET-3427](https://jira.greenpeace.org/browse/PLANET-3427) - Preview mode: Not showing CPP templates and customized designs

## 2.22 - 2020-03-04

### Features

* [PLANET-4712](https://jira.greenpeace.org/browse/PLANET-4712) - Support multi page campaigns

### Bug Fixes

* [PLANET-4741](https://jira.greenpeace.org/browse/PLANET-4741) - Tags and Share buttons not visible
* [PLANET-4798](https://jira.greenpeace.org/browse/PLANET-4798) - Engaging Networks form thank you page text alignment.
* [PLANET-4775](https://jira.greenpeace.org/browse/PLANET-4775) - Campaigns: wrong green color on footer links
* [PLANET-4703](https://jira.greenpeace.org/browse/PLANET-4703) - Storytelling: Checkboxes displayed as bullet points

## 2.21 - 2020-02-26

### Features

* [PLANET-4740](https://jira.greenpeace.org/browse/PLANET-4740) - CSS: Remove :not\(\#hidecookie\) rule
* [PLANET-4759](https://jira.greenpeace.org/browse/PLANET-4759) - Spreadsheet block: Search bar / Column sorting not available in posts 
* [PLANET-4749](https://jira.greenpeace.org/browse/PLANET-4749) - Investigate: Adding content type to P4 All sites usage spreadsheet
* [PLANET-4746](https://jira.greenpeace.org/browse/PLANET-4746) - Campaigns CSS: EN form background overlay
* [PLANET-4747](https://jira.greenpeace.org/browse/PLANET-4747) - Campaigns CSS: Columns block CTA should follow main CTA style
* [PLANET-4626](https://jira.greenpeace.org/browse/PLANET-4626) - Update master-theme test configuration to match plugins

### Bug Fixes

* [PLANET-4773](https://jira.greenpeace.org/browse/PLANET-4773) - Prevent certain export files from being huge
* [PLANET-4768](https://jira.greenpeace.org/browse/PLANET-4768) - EN Form Block: Not all forms are listed when editing block
* [PLANET-4753](https://jira.greenpeace.org/browse/PLANET-4753) - Featured image not showing in Latest Updates

## 2.20 - 2020-02-19

### Features

* [PLANET-4742](https://jira.greenpeace.org/browse/PLANET-4742) - Allow option to disable styles of campaign pages
* [PLANET-4735](https://jira.greenpeace.org/browse/PLANET-4735) - Improve UX navigation options in the campaign customizer
* [PLANET-4737](https://jira.greenpeace.org/browse/PLANET-4737) - Improve UX footer options in the Campaign customizer
* [PLANET-4699](https://jira.greenpeace.org/browse/PLANET-4699) - Spreadsheet embed block: allow in Posts 
* [PLANET-4698](https://jira.greenpeace.org/browse/PLANET-4698) - Spreadsheet embed block: allow in Pages 

### Bug Fixes

* [PLANET-4655](https://jira.greenpeace.org/browse/PLANET-4655) - EN Form background image does not fit in on mobile

## 2.19 - 2020-02-12

### Features

* [PLANET-4603](https://jira.greenpeace.org/browse/PLANET-4603) - Migrate campaign configuration fields to a sidebar
* [PLANET-4532](https://jira.greenpeace.org/browse/PLANET-4532) - Perf: Investigate lazy-loading solution across P4 \(incl. all browsers\) 

### Bug Fixes

* [PLANET-4688](https://jira.greenpeace.org/browse/PLANET-4688) - Carousel Header MENA: Double-check all possible interactions

## 2.18 - 2020-02-06

### Bug Fixes

* [PLANET-4674](https://jira.greenpeace.org/browse/PLANET-4674) - Table Block: Background colours not changing 
* [PLANET-4683](https://jira.greenpeace.org/browse/PLANET-4683) - ErrorException: Warning: Invalid argument supplied for foreach\(\)
* [PLANET-4685](https://jira.greenpeace.org/browse/PLANET-4685) - Campaigns: Import feature creates Tags of the source site \(from the .xml file\) in the destination site
* [PLANET-4157](https://jira.greenpeace.org/browse/PLANET-4157) - Author bio block is missing "Read more" link when too long
* [PLANET-4666](https://jira.greenpeace.org/browse/PLANET-4666) - Header Color &gt; set to default
* [PLANET-4439](https://jira.greenpeace.org/browse/PLANET-4439) - Articles Block: Manual Override not finding stories

## 2.17 - 2020-01-30

### Features

* [PLANET-4690](https://jira.greenpeace.org/browse/PLANET-4690) - Change language for Turkey in the country selector and landing page

## 2.16 - 2020-01-22

### Features

* [PLANET-4533](https://jira.greenpeace.org/browse/PLANET-4533) - Perf: Investigate pre-connection with external domains \(through Reg. test\) 
* [PLANET-3870](https://jira.greenpeace.org/browse/PLANET-3870) - Blocks Titles and Descriptions: insert characters limit counter

### Bug Fixes

* [PLANET-4654](https://jira.greenpeace.org/browse/PLANET-4654) - Carousel Header not sliding automatically 
* [PLANET-4486](https://jira.greenpeace.org/browse/PLANET-4486) - MENA: Cookies text and buttons are not aligned or resized properly \(Tablet and Desktop\)
* [PLANET-4456](https://jira.greenpeace.org/browse/PLANET-4456) - Campaigns: Import/export - some special characters get incorrectly converted
* [PLANET-4624](https://jira.greenpeace.org/browse/PLANET-4624) - Carousel Header: flash of white background in RTL sites
* [PLANET-4658](https://jira.greenpeace.org/browse/PLANET-4658) - Submenu block: Not working when header includes link to open externally
* [PLANET-4659](https://jira.greenpeace.org/browse/PLANET-4659) - Campaigns: Export campaign - code refactoring
* [PLANET-4221](https://jira.greenpeace.org/browse/PLANET-4221) - Image transition in slider and carousel is in the wrong direction in right to left domains
* [PLANET-4331](https://jira.greenpeace.org/browse/PLANET-4331) - EN Form: EN Type GEN label appears twice
* [PLANET-4075](https://jira.greenpeace.org/browse/PLANET-4075) - EN Form: Thank you screen not responsive for "Page body-text" and "Full page width" styles 

## 2.15 - 2020-01-15

### Features

* [PLANET-4560](https://jira.greenpeace.org/browse/PLANET-4560) - Campaigns Spreadsheet block: Adjust to respect campaign styleguides
* [PLANET-4599](https://jira.greenpeace.org/browse/PLANET-4599) - EN Form block: rework "DONATE" options of thank you message
* [PLANET-4515](https://jira.greenpeace.org/browse/PLANET-4515) - Include Authors data in Search results \(if corresponding\)
* [PLANET-4569](https://jira.greenpeace.org/browse/PLANET-4569) - Campaigns: Disable Submenu block

### Bug Fixes

* [PLANET-4677](https://jira.greenpeace.org/browse/PLANET-4677) - Submenu: arrow link to scroll up is gone when not accepting the cookies
* [PLANET-4481](https://jira.greenpeace.org/browse/PLANET-4481) - Handbook: Submenu arrow to go back up is gone 
* [PLANET-4454](https://jira.greenpeace.org/browse/PLANET-4454) - Posts: Anchor link extends beyond the body column
* [PLANET-4524](https://jira.greenpeace.org/browse/PLANET-4524) - Campaigns: Rogue space at top of page
* [PLANET-4441](https://jira.greenpeace.org/browse/PLANET-4441) - Text wrapping around image doesn't work
* [PLANET-4473](https://jira.greenpeace.org/browse/PLANET-4473) - Button block: insert error message when broken style 
* [PLANET-4429](https://jira.greenpeace.org/browse/PLANET-4429) - Author: not visible for editor level access
* [PLANET-4650](https://jira.greenpeace.org/browse/PLANET-4650) - JS Error on Gallery - Slider renders block unusable
* [PLANET-4566](https://jira.greenpeace.org/browse/PLANET-4566) - Posts: Image embed caption misaligned on mobile

## 2.14 - 2020-01-08

### Features

* [PLANET-4587](https://jira.greenpeace.org/browse/PLANET-4587) - Create Acceptance tests for all Counter block styles

### Bug Fixes

* [PLANET-4644](https://jira.greenpeace.org/browse/PLANET-4644) - Country Selector: fix GPSK address
* [PLANET-4597](https://jira.greenpeace.org/browse/PLANET-4597) - Fix campaign dataLayer script on P4 Posts
* [PLANET-4510](https://jira.greenpeace.org/browse/PLANET-4510) - Fix PHP Notice: Notice level error produces when building local env. with make command
