---
description: >-
  This document tracks all notable changes to Planet 4 project, introduced on
  each release
---

# Changelog

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

## 2.13.1 - 2019-12-23

### Features

* [PLANET-4562](https://jira.greenpeace.org/browse/PLANET-4562) - CPP \(Oceans Declaration\): Integrate Search feature to solution on P4 Spreadsheet embed \(New Block?\)
* [PLANET-4540](https://jira.greenpeace.org/browse/PLANET-4540) - Social Media Card Block: improve "Share on Facebook" functionality

### Bug Fixes

* [PLANET-4607](https://jira.greenpeace.org/browse/PLANET-4607) - Country Selector: remove trailing slash in GPAP address
* [PLANET-4553](https://jira.greenpeace.org/browse/PLANET-4553) - The title and subtitle font sizes don't not scale down properly on mobile
* [PLANET-4567](https://jira.greenpeace.org/browse/PLANET-4567) - Gallery block: navigation indicators are elongated
* [PLANET-4505](https://jira.greenpeace.org/browse/PLANET-4505) - Campaigns Plastics: Mobile CSS fixes

## 2.13 - 2019-12-18

### Features

* [PLANET-4520](https://jira.greenpeace.org/browse/PLANET-4520) - Split and clean up js dependencies
* [PLANET-4551](https://jira.greenpeace.org/browse/PLANET-4551) - Remove Gallery formatting for Oceans campaign
* [PLANET-4546](https://jira.greenpeace.org/browse/PLANET-4546) - Campaigns: Disable Split Two Columns from Campaign pages
* [PLANET-4591](https://jira.greenpeace.org/browse/PLANET-4591) - Fix visitor WP login status information in dataLayer 
* [PLANET-4240](https://jira.greenpeace.org/browse/PLANET-4240) - EN Form: Add dropdown field

### Bug Fixes

* [PLANET-4455](https://jira.greenpeace.org/browse/PLANET-4455) - Gallery Block \(Grid Style\) : thumbnails get massively Zoomed in
* [PLANET-4589](https://jira.greenpeace.org/browse/PLANET-4589) - Campaigns: Minor frontend issues introduced
* [PLANET-4526](https://jira.greenpeace.org/browse/PLANET-4526) - GP Israel: Capital letters not rendered in frontend \(Country Selector - Copyright\)

## 2.12 - 2019-12-11

### Features

* [PLANET-4531](https://jira.greenpeace.org/browse/PLANET-4531) - Rename "Socialshare" with "Social Media Cards" 
* [PLANET-4527](https://jira.greenpeace.org/browse/PLANET-4527) - Implement API endpoint for Blocks Usage
* [PLANET-4400](https://jira.greenpeace.org/browse/PLANET-4400) - Campaigns: Call to action buttons typography
* [PLANET-4399](https://jira.greenpeace.org/browse/PLANET-4399) - Campaigns: Investigate primary and secondary button usage across blocks
* [PLANET-4539](https://jira.greenpeace.org/browse/PLANET-4539) - Social Media Card Block: improve "Share on Twitter" functionality
* [PLANET-4395](https://jira.greenpeace.org/browse/PLANET-4395) - Recreate Git hooks Gulp task in NPM

### Bug Fixes

* [PLANET-4552](https://jira.greenpeace.org/browse/PLANET-4552) - Search: CTA buttons are broken
* [PLANET-4389](https://jira.greenpeace.org/browse/PLANET-4389) - Credit line for media disappeared 
* [PLANET-4516](https://jira.greenpeace.org/browse/PLANET-4516) - Gallery+Carousel Header block: Images get massively zoomed in for no reason
* [PLANET-4336](https://jira.greenpeace.org/browse/PLANET-4336) - EN Form: CtA Button disappears in Campaigns oceans template

## 2.11 - 2019-12-04

### Features

* [PLANET-4427](https://jira.greenpeace.org/browse/PLANET-4427) - Investigate building assets on CI
* [PLANET-4467](https://jira.greenpeace.org/browse/PLANET-4467) - Campaigns: Remove campaign formatting from Gallery - 3 columns blocks
* [PLANET-4466](https://jira.greenpeace.org/browse/PLANET-4466) - Campaigns Oil and Climate Emergency templates: Remove B&W filters from
* [PLANET-4465](https://jira.greenpeace.org/browse/PLANET-4465) - Campaigns Oil template Columns block Icons style: Change icon background to red
* [PLANET-4470](https://jira.greenpeace.org/browse/PLANET-4470) - Campaigns Oil and Climate Emergency template: Gallery - Slider indicator should be red
* [PLANET-4503](https://jira.greenpeace.org/browse/PLANET-4503) - Campaigns En Form block: Accessibility of legal text under CTA button
* [PLANET-4504](https://jira.greenpeace.org/browse/PLANET-4504) - Campaigns Columns block: Tasks style alignment to left on all templates
* [PLANET-4432](https://jira.greenpeace.org/browse/PLANET-4432) - Search results: Add label to P3 Archives and Campaign pages
* [PLANET-4417](https://jira.greenpeace.org/browse/PLANET-4417) - Campaigns Columns block Icons style Plastics template: Remove background image

### Bug Fixes

* [PLANET-4401](https://jira.greenpeace.org/browse/PLANET-4401) - Campaigns: Disable Take action and Split block
* [PLANET-4264](https://jira.greenpeace.org/browse/PLANET-4264) - Meetup embed not working in posts
* [PLANET-4471](https://jira.greenpeace.org/browse/PLANET-4471) - EN form block: Rename fields
* [PLANET-4447](https://jira.greenpeace.org/browse/PLANET-4447) - EN form: After sign up, in the thank you EN block the share on Twitter button does not appear
* [PLANET-4113](https://jira.greenpeace.org/browse/PLANET-4113) - Authors share buttons are broken
* [PLANET-4431](https://jira.greenpeace.org/browse/PLANET-4431) - EN form block css is off 
* [PLANET-4251](https://jira.greenpeace.org/browse/PLANET-4251) - Gallery Block: Not able to remove images individually within the block editor

## 2.10 - 2019-11-27

### Features

* [PLANET-4428](https://jira.greenpeace.org/browse/PLANET-4428) - Webpack: Source maps don't work
* [PLANET-4448](https://jira.greenpeace.org/browse/PLANET-4448) - Finalize the Social Share block
* [PLANET-4375](https://jira.greenpeace.org/browse/PLANET-4375) - Campaigns: Style the "Campaign Page Type" in Search results 
* [PLANET-4415](https://jira.greenpeace.org/browse/PLANET-4415) - Campaigns Columns block No Image style Climate Emergency: Description width is smaller than on other templates
* [PLANET-4438](https://jira.greenpeace.org/browse/PLANET-4438) - Block usage report: Add NRO custom blocks

### Bug Fixes

* [PLANET-4449](https://jira.greenpeace.org/browse/PLANET-4449) - Carousel Header: review initialization code
* [PLANET-4425](https://jira.greenpeace.org/browse/PLANET-4425) - Columns bock-Task style: Links not opening in a new tab
* [PLANET-4402](https://jira.greenpeace.org/browse/PLANET-4402) - Campaigns: Image import/export not working
* [PLANET-4443](https://jira.greenpeace.org/browse/PLANET-4443) - Gallery Slider: Caption is broken on mobile devices
* [PLANET-4458](https://jira.greenpeace.org/browse/PLANET-4458) - Gallery Block: error when loading images renders the block unusable
* [PLANET-4414](https://jira.greenpeace.org/browse/PLANET-4414) - Campaigns: Footer legal text is not fixed on all Campaign templates
* [PLANET-4411](https://jira.greenpeace.org/browse/PLANET-4411) - Austria as country selection refers to wrong local homepage
* [PLANET-4274](https://jira.greenpeace.org/browse/PLANET-4274) - EN settings - admin form preview not working

## 2.9 - 2019-11-20

### Features

* [PLANET-4404](https://jira.greenpeace.org/browse/PLANET-4404) - FILE Block: Button padding seems off
* [PLANET-4360](https://jira.greenpeace.org/browse/PLANET-4360) - Optimize Campaign assets - chunk into separate files
* [PLANET-4340](https://jira.greenpeace.org/browse/PLANET-4340) - Posts: Change tag and post type field to accept only existing content
* [PLANET-4397](https://jira.greenpeace.org/browse/PLANET-4397) - Campaigns: Adjust campaign logo files to remove space around the graphics
* [PLANET-4398](https://jira.greenpeace.org/browse/PLANET-4398) - Campaigns EN Form block: Check spacing between Title and Description
* [PLANET-4275](https://jira.greenpeace.org/browse/PLANET-4275) - Campaigns EN Form block: Logo max height
* [PLANET-4233](https://jira.greenpeace.org/browse/PLANET-4233) - Campaigns Column block Icons style: Icons not always visible
* [PLANET-4235](https://jira.greenpeace.org/browse/PLANET-4235) - Campaigns Covers block Content covers: Images need to be portrait
* [PLANET-4409](https://jira.greenpeace.org/browse/PLANET-4409) - EN plugin: Sync translations
* [PLANET-4367](https://jira.greenpeace.org/browse/PLANET-4367) - Refactor EN Gutenberg plugin
* [PLANET-4268](https://jira.greenpeace.org/browse/PLANET-4268) - Add Block report in Gutenberg \(Gutenberg native Blocks\)
* [PLANET-4077](https://jira.greenpeace.org/browse/PLANET-4077) - Search results: include "Campaign" as Content Type filter 

### Bug Fixes

* [PLANET-4408](https://jira.greenpeace.org/browse/PLANET-4408) - WP Dashboard - "Check Engaging Networks" option missing in Planet 4 Control panel
* [PLANET-4279](https://jira.greenpeace.org/browse/PLANET-4279) - Submenu block: front-end content cut off
* [PLANET-4410](https://jira.greenpeace.org/browse/PLANET-4410) - EN Form: Check boxes should allow for a conditional response
* [PLANET-4351](https://jira.greenpeace.org/browse/PLANET-4351) - Campaigns: External link symbols missing
* [PLANET-4380](https://jira.greenpeace.org/browse/PLANET-4380) - The columns block styles are broken on screens under 892px wide
* [PLANET-4382](https://jira.greenpeace.org/browse/PLANET-4382) - Can't edit/add items of Carousel header
* [PLANET-4342](https://jira.greenpeace.org/browse/PLANET-4342) - Gallery P4 block: Focus point not working

## 2.8 - 2019-11-13

### Features

* [PLANET-4232](https://jira.greenpeace.org/browse/PLANET-4232) - Campaigns: EN form block - Oil template CTA button should be red
* [PLANET-4154](https://jira.greenpeace.org/browse/PLANET-4154) - FILE Block: adjust button style and functionality 

### Bug Fixes

* [PLANET-4182](https://jira.greenpeace.org/browse/PLANET-4182) - Columns block images are not set in block back end
* [PLANET-4387](https://jira.greenpeace.org/browse/PLANET-4387) - Articles blocks in category pages seems to have forgotten the tags selected
* [PLANET-4384](https://jira.greenpeace.org/browse/PLANET-4384) - Video's do not have the proper width when using Gutenberg YouTube embed

## 2.7.1 - 2019-11-11

### Features

* [PLANET-4365](https://jira.greenpeace.org/browse/PLANET-4365) - Feasiblity Check about Changing Country/Region Setting of GPEA
* [PLANET-4373](https://jira.greenpeace.org/browse/PLANET-4373) - Plastics CSS changes
* [PLANET-4377](https://jira.greenpeace.org/browse/PLANET-4377) - Country selector arrow icon is not visible
* [PLANET-4289](https://jira.greenpeace.org/browse/PLANET-4289) - Campaigns: Add new value to campaign dataLayer dropdown \(Plastics\)

### Bug Fixes

* [PLANET-4230](https://jira.greenpeace.org/browse/PLANET-4230) - Campaigns: EN Form block - Grey bar under header
* [PLANET-4371](https://jira.greenpeace.org/browse/PLANET-4371) - Cookie notice background image is not displayed

## 2.6.1 - 2019-11-01

### Features

* [PLANET-4357](https://jira.greenpeace.org/browse/PLANET-4357) - Adjust plastic campaign page styling

## 2.7 - 2019-11-06

### Features

* [PLANET-3659](https://jira.greenpeace.org/browse/PLANET-3659) - Gutenberg implementation rollout

## 2.6 - 2019-10-23

### Features

* [PLANET-3749](https://jira.greenpeace.org/browse/PLANET-3749) - Iterate Cookies bar \(resized version\)
* [PLANET-4060](https://jira.greenpeace.org/browse/PLANET-4060) - EN Form: Check boxes should allow for a conditional response

### Bug Fixes

* [PLANET-4184](https://jira.greenpeace.org/browse/PLANET-4184) - Remove external link icon in Buttons 
* [PLANET-4185](https://jira.greenpeace.org/browse/PLANET-4185) - Search: Close Filter selections
* [PLANET-4241](https://jira.greenpeace.org/browse/PLANET-4241) - Campaigns: Page Header Fields and background image are not displaying on front-end

## 2.5 - 2019-10-16

### Features

* [PLANET-4101](https://jira.greenpeace.org/browse/PLANET-4101) - Pages: if "Hide page title" command is ticked, space between header Nav and body should be removed
* [PLANET-4206](https://jira.greenpeace.org/browse/PLANET-4206) - Align navigation bar items

### Bug Fixes

* [PLANET-4166](https://jira.greenpeace.org/browse/PLANET-4166) - Strip html markup from Open Graph description field
* [PLANET-4176](https://jira.greenpeace.org/browse/PLANET-4176) - External link icons should be preceded by a non-breaking space
* [PLANET-4172](https://jira.greenpeace.org/browse/PLANET-4172) - Country Selector - Indonesian is mispelled

## 2.4 - 2019-10-02

### Features

* [PLANET-4131](https://jira.greenpeace.org/browse/PLANET-4131) - Campaigns: Enable Gutenberg editor on Campaigns content type
* [PLANET-4112](https://jira.greenpeace.org/browse/PLANET-4112) - Add GP Peru site to global navigation
* [PLANET-4139](https://jira.greenpeace.org/browse/PLANET-4139) - Alignment of social media icons in all footers
* [PLANET-4050](https://jira.greenpeace.org/browse/PLANET-4050) - Campaigner capabilities assignment refactoring
* [PLANET-3852](https://jira.greenpeace.org/browse/PLANET-3852) - Add external link icon next to links in text

### Bug Fixes

* [PLANET-4082](https://jira.greenpeace.org/browse/PLANET-4082) - Campaigns: Incorrect and inconsistent counter numbers
* [PLANET-4061](https://jira.greenpeace.org/browse/PLANET-4061) - Campaign Page: Accessibility of Climate Emergency theme

## 2.3 - 2019-09-25

### Features

* [PLANET-4088](https://jira.greenpeace.org/browse/PLANET-4088) - Add missing fields to Posts and Campaign edit pages
* [PLANET-4103](https://jira.greenpeace.org/browse/PLANET-4103) - Take Action Boxout - add error message when custom url does not start with http://
* [PLANET-4081](https://jira.greenpeace.org/browse/PLANET-4081) - Campaigns: Imported pages inherit the status of the original page - but they should be imported as Draft
* [PLANET-4080](https://jira.greenpeace.org/browse/PLANET-4080) - Campaigns: Hide Categories and Tags under Campaigns menu item
* [PLANET-4084](https://jira.greenpeace.org/browse/PLANET-4084) - Campaigns: Campaigner role should have permission to import campaign page
* [PLANET-3992](https://jira.greenpeace.org/browse/PLANET-3992) - EN Form: sharing buttons do not pick up the "Open Graph / Social fields" information 
* [PLANET-3995](https://jira.greenpeace.org/browse/PLANET-3995) - Rename "Media library" to "GPI Media Library" to avoid confusion P4 / GPI media Library 

### Bug Fixes

* [PLANET-4089](https://jira.greenpeace.org/browse/PLANET-4089) - CEv2 - Last Paragraph has incorrect VS and a rouge indent.
* [PLANET-4062](https://jira.greenpeace.org/browse/PLANET-4062) - TA Box not disappearing
* [PLANET-4063](https://jira.greenpeace.org/browse/PLANET-4063) - Posts: Image spacing
* [PLANET-4065](https://jira.greenpeace.org/browse/PLANET-4065) - Search: Space below Read More

## 2.2 - 2019-09-18

### Features

* [PLANET-4016](https://jira.greenpeace.org/browse/PLANET-4016) - Campaigns: Implement Hotjar javascript tracking on form success and fail submissions
* [PLANET-4051](https://jira.greenpeace.org/browse/PLANET-4051) - CPP: Climate Emergency adjust spacing of paragraph
* [PLANET-4023](https://jira.greenpeace.org/browse/PLANET-4023) - Allow "Take Action" boxout in Posts 
* [PLANET-4024](https://jira.greenpeace.org/browse/PLANET-4024) - Take Action boxouts: Order pages alphabetically 
* [PLANET-3946](https://jira.greenpeace.org/browse/PLANET-3946) - EN Form: Apply redesign for MENA \(for the 3 styles\)
* [PLANET-3875](https://jira.greenpeace.org/browse/PLANET-3875) - Evergreen/Default : The ability to hide the title block from the user whilst still having the title in the system

### Bug Fixes

* [PLANET-4079](https://jira.greenpeace.org/browse/PLANET-4079) - EN Form block: Scroll on top doesn't work as expected on mobile
* [PLANET-3933](https://jira.greenpeace.org/browse/PLANET-3933) - Search: Media Results displaying image files
* [PLANET-4039](https://jira.greenpeace.org/browse/PLANET-4039) - User Roles: Editors and Authors do not have access to Campaign pages
* [PLANET-4025](https://jira.greenpeace.org/browse/PLANET-4025) - Visibility: Password protection not working for campaign pages
* [PLANET-4000](https://jira.greenpeace.org/browse/PLANET-4000) - MENA: "Convert Blocks" command not working on 3rd Language
* [PLANET-4026](https://jira.greenpeace.org/browse/PLANET-4026) - Cookies bar button has no padding and different style

## 2.1 - 2019-09-11

### Features

* [PLANET-4041](https://jira.greenpeace.org/browse/PLANET-4041) - Make campaign post type available in editor menu
* [PLANET-4033](https://jira.greenpeace.org/browse/PLANET-4033) - EN Form block - add option to remove Donate button from Thank you page
* [PLANET-4034](https://jira.greenpeace.org/browse/PLANET-4034) - Campaigns: Full configuration options for social media icons in minimal footer
* [PLANET-4032](https://jira.greenpeace.org/browse/PLANET-4032) - EN Form block - Rename placeholder text in Country field
* [PLANET-4036](https://jira.greenpeace.org/browse/PLANET-4036) - Campaigns: Reorder customizer options in the backend
* [PLANET-4005](https://jira.greenpeace.org/browse/PLANET-4005) - Plugin-blocks: Fix security warnings from RIPS report 
* [PLANET-4004](https://jira.greenpeace.org/browse/PLANET-4004) - Master-theme: Fix security warnings from RIPS report
* [PLANET-3973](https://jira.greenpeace.org/browse/PLANET-3973) - Media Library Restriction do not appear on P4 Media Library
* [PLANET-3874](https://jira.greenpeace.org/browse/PLANET-3874) - Campaigns: Add Open Graph / Social section for campaign pages
* [PLANET-4038](https://jira.greenpeace.org/browse/PLANET-4038) - Campaigns Climate Emergency: css changes to the counter block
* [PLANET-4040](https://jira.greenpeace.org/browse/PLANET-4040) - Campaigns: Minimal footer - Add missing copyright text
* [PLANET-3838](https://jira.greenpeace.org/browse/PLANET-3838) - Customise Take Action boxout block to allow custom URLs
* [PLANET-4028](https://jira.greenpeace.org/browse/PLANET-4028) - EN Form block - After signing the petition the page needs to scroll up

### Bug Fixes

* [PLANET-4029](https://jira.greenpeace.org/browse/PLANET-4029) - EN Form setup - choosing "P4 field type" clears the values added in "Label" field

## 2.0 - 2019-09-04

### Features

* [PLANET-4035](https://jira.greenpeace.org/browse/PLANET-4035) - Campaigns: Minimal footer - Legal text should be the same as on the Default footer
* [PLANET-4018](https://jira.greenpeace.org/browse/PLANET-4018) - Quick Fix: Update logo and remove uppercase for title
* [PLANET-4008](https://jira.greenpeace.org/browse/PLANET-4008) - Fix broken EN test
* [PLANET-3999](https://jira.greenpeace.org/browse/PLANET-3999) - P4CG - Climate Emergency theme css changes
* [PLANET-3796](https://jira.greenpeace.org/browse/PLANET-3796) - Blocks in Posts: Media block
* [PLANET-3994](https://jira.greenpeace.org/browse/PLANET-3994) - Adjust space between main section and footer on Climate Emergency page

### Bug Fixes

* [PLANET-3932](https://jira.greenpeace.org/browse/PLANET-3932) - Search: Media Results not accommodating special characters
* [PLANET-3881](https://jira.greenpeace.org/browse/PLANET-3881) - Password-Protected pages have header fields appearing

## 1.66 - 2019-08-28

### Features

* [PLANET-3965](https://jira.greenpeace.org/browse/PLANET-3965) - Campaigns: Create a new Climate Emergency theme
* [PLANET-3908](https://jira.greenpeace.org/browse/PLANET-3908) - Campaigns: Customize social media links in the footer
* [PLANET-3872](https://jira.greenpeace.org/browse/PLANET-3872) - EN Form: Adjust sharing buttons of "Thank you" screens to behave like Posts and Take Action pages
* [PLANET-3805](https://jira.greenpeace.org/browse/PLANET-3805) - Implement plugin for duplication of Posts/Pages
* [PLANET-3956](https://jira.greenpeace.org/browse/PLANET-3956) - Campaigns: Add new value and reorganize the Campaign Standards \(dataLayer\) dropdown values
* [PLANET-3975](https://jira.greenpeace.org/browse/PLANET-3975) - Ensure frontend facing assets are loaded for all Gutenberg blocks
* [PLANET-3854](https://jira.greenpeace.org/browse/PLANET-3854) - EN Form: Re-style body size width style \(incl. text below CtA\)

## 1.65 - 2019-08-21

### Features

* [PLANET-3873](https://jira.greenpeace.org/browse/PLANET-3873) - Update countries URL in Country selector 

### Bug Fixes

* [PLANET-3927](https://jira.greenpeace.org/browse/PLANET-3927) - Automatically created pages for \#tags do not maintain background image 
* [PLANET-3823](https://jira.greenpeace.org/browse/PLANET-3823) - Campaigns: Within the EN block, the Submit button needs to be full width.
* [PLANET-3857](https://jira.greenpeace.org/browse/PLANET-3857) - Automatically generated tag pages should be excluded from Elastic Search results
* [PLANET-3894](https://jira.greenpeace.org/browse/PLANET-3894) - Campaigns: EN - En lefthand form block vertical spacing is not correct.

## 1.64 - 2019-08-14

### Features

* [PLANET-3864](https://jira.greenpeace.org/browse/PLANET-3864) - Install an anti-flicker snippet on all P4 websites
* [PLANET-3794](https://jira.greenpeace.org/browse/PLANET-3794) - Blocks in Posts: Columns
* [PLANET-3721](https://jira.greenpeace.org/browse/PLANET-3721) - Apply Vertical Spacing based on style guide.
* [PLANET-3902](https://jira.greenpeace.org/browse/PLANET-3902) - Columns: Remove compulsory state for column header
* [PLANET-3901](https://jira.greenpeace.org/browse/PLANET-3901) - JS: Unify closure method on remaing js code

### Bug Fixes

* [PLANET-3783](https://jira.greenpeace.org/browse/PLANET-3783) - Gallery Block: Grid & 3 Column styles are not consistent with the Slider style
* [PLANET-3782](https://jira.greenpeace.org/browse/PLANET-3782) - Gallery Block: Grid style wrong aspect ration when used in Posts
* [PLANET-3900](https://jira.greenpeace.org/browse/PLANET-3900) - ENBlock Question-Checkbox value is not submitting to EN.
* [PLANET-3868](https://jira.greenpeace.org/browse/PLANET-3868) - Campaign dataLayer: Values reset to null
* [PLANET-3896](https://jira.greenpeace.org/browse/PLANET-3896) - Campaigns: 'Full Width' Carousel Block. Text doesn't change colour on re-size.
* [PLANET-3897](https://jira.greenpeace.org/browse/PLANET-3897) - Campaigns: Too Much space between navigation bar and Left hand title text. 
* [PLANET-3880](https://jira.greenpeace.org/browse/PLANET-3880) - EN Form: lefthand form block breaks in M & S templates.

## 1.63 - 2019-08-07

### Features

* [PLANET-3863](https://jira.greenpeace.org/browse/PLANET-3863) - Upload Cookie's Bar background image to live environment
* [PLANET-3865](https://jira.greenpeace.org/browse/PLANET-3865) - Landing Page: Minor text changes
* [PLANET-3849](https://jira.greenpeace.org/browse/PLANET-3849) - EN Form: sort alphabetically Fields/Question/optin lists and add color-code for non-tagged ones
* [PLANET-3825](https://jira.greenpeace.org/browse/PLANET-3825) - Campaigns: Remove compulsory state for column block title.
* [PLANET-3824](https://jira.greenpeace.org/browse/PLANET-3824) - Campaigns: Rename elements in customizer to avoid confusion and where ever possible, provide instruction text
* [PLANET-3809](https://jira.greenpeace.org/browse/PLANET-3809) - Password-protected content have the excerpt visible when shared in Skype \(IM\) or Twitter \(Social Media\)
* [PLANET-3793](https://jira.greenpeace.org/browse/PLANET-3793) - Blocks in Posts: Timeline
* [PLANET-3792](https://jira.greenpeace.org/browse/PLANET-3792) - Add new Red/Orange for Oil campaign
* [PLANET-3638](https://jira.greenpeace.org/browse/PLANET-3638) - JS: Use the same closure method for all js code
* [PLANET-3819](https://jira.greenpeace.org/browse/PLANET-3819) - Campaigns: In-block styling for 'Full Width' Carousel block.
* [PLANET-3818](https://jira.greenpeace.org/browse/PLANET-3818) - Campaigns: In-block styling for EN Form block. 
* [PLANET-3816](https://jira.greenpeace.org/browse/PLANET-3816) - Campaigns: Hide title section
* [PLANET-3822](https://jira.greenpeace.org/browse/PLANET-3822) - Campaigns: EN block add styling to Petition Counter number
* [PLANET-3817](https://jira.greenpeace.org/browse/PLANET-3817) - Campaigns: Add white color to customiser for Minimal naviagtion bar & Footer background color
* [PLANET-3820](https://jira.greenpeace.org/browse/PLANET-3820) - Campaigns: Remove link from heading text Columns: Images style
* [PLANET-3701](https://jira.greenpeace.org/browse/PLANET-3701) - Include predefined set for font sizes in CSS Styleguide

### Bug Fixes

* [PLANET-3808](https://jira.greenpeace.org/browse/PLANET-3808) - Password-protected content not working on evergreen page template
* [PLANET-3781](https://jira.greenpeace.org/browse/PLANET-3781) - Gallery Block: Grid style focus point not working when used in Posts
* [PLANET-3837](https://jira.greenpeace.org/browse/PLANET-3837) - Plan Du Site \(French Sitemap\) Headers are in English
* [PLANET-3841](https://jira.greenpeace.org/browse/PLANET-3841) - Columns block: font \(and size\) changing when adding paragraph in block descriptions

## 1.62 - 2019-07-24

### Features

* [PLANET-3748](https://jira.greenpeace.org/browse/PLANET-3748) - Campaigns: Create "Campaigner" role so it fits campaigner's needs
* [PLANET-3688](https://jira.greenpeace.org/browse/PLANET-3688) - Donate page: add rollover colours 
* [PLANET-3740](https://jira.greenpeace.org/browse/PLANET-3740) - Campaigns: Disable layout versions of Covers block in Campaign content type
* [PLANET-3727](https://jira.greenpeace.org/browse/PLANET-3727) - Implement pre-check setting for opt-ins/questions \(checkbox\)
* [PLANET-3712](https://jira.greenpeace.org/browse/PLANET-3712) - EN Form: add option to customize non opt-in "Radio" field type
* [PLANET-3804](https://jira.greenpeace.org/browse/PLANET-3804) - EN Form: Rename new fields to thank you screen \(in-page\)
* [PLANET-3736](https://jira.greenpeace.org/browse/PLANET-3736) - Create script that creates an actual tag page \(for easy migration\)
* [PLANET-2101](https://jira.greenpeace.org/browse/PLANET-2101) - Blocks: Allow Editor to control link behaviour

### Bug Fixes

* [PLANET-3812](https://jira.greenpeace.org/browse/PLANET-3812) - Logging into password protected pages/posts on multilanguage sites produces 404 error
* [PLANET-3813](https://jira.greenpeace.org/browse/PLANET-3813) - Improve formating report of blocks usage
* [PLANET-3784](https://jira.greenpeace.org/browse/PLANET-3784) - Articles block: Featured Image not scaling to full width
* [PLANET-3798](https://jira.greenpeace.org/browse/PLANET-3798) - Form validations mis-firing
* [PLANET-3801](https://jira.greenpeace.org/browse/PLANET-3801) - Meta Description does not take the excerpt
* [PLANET-3780](https://jira.greenpeace.org/browse/PLANET-3780) - Gallery Block: 3 Column style not accommodating Portrait images when used in Posts

## 1.61 - 2019-07-17

### Features

* [PLANET-3770](https://jira.greenpeace.org/browse/PLANET-3770) - Remove "Subheader" block from list of elements
* [PLANET-3702](https://jira.greenpeace.org/browse/PLANET-3702) - Apply styling to thank you screen \(in-page\) of petition form
* [PLANET-3686](https://jira.greenpeace.org/browse/PLANET-3686) - Add light and dark Greenpeace logo to CPP customizer
* [PLANET-3639](https://jira.greenpeace.org/browse/PLANET-3639) - JS: Use let and const, instead of var.
* [PLANET-3744](https://jira.greenpeace.org/browse/PLANET-3744) - Campaigns: CSS changes to hide call to action buttons in all blocks in Campaign content type
* [PLANET-3741](https://jira.greenpeace.org/browse/PLANET-3741) - Campaigns: Submenu block should not be available in Campaign content type
* [PLANET-3711](https://jira.greenpeace.org/browse/PLANET-3711) - EN Form: add option to customize non opt-in "Checkbox" field type 
* [PLANET-3715](https://jira.greenpeace.org/browse/PLANET-3715) - Replace old Greenpeace logo with new Greenpeace logo
* [PLANET-3689](https://jira.greenpeace.org/browse/PLANET-3689) - Update icons block to accomodate full column width images
* [PLANET-3728](https://jira.greenpeace.org/browse/PLANET-3728) - Cookies block: make cookies description field expandable 

### Bug Fixes

* [PLANET-3734](https://jira.greenpeace.org/browse/PLANET-3734) - Gallery block: Grid & 3 Column style images are blurry when used in Posts
* [PLANET-3747](https://jira.greenpeace.org/browse/PLANET-3747) - Campaigns: CSS changes to links and tags in Articles block if content type is Campaign
* [PLANET-3738](https://jira.greenpeace.org/browse/PLANET-3738) - In the EN Form there is too much bottom padding on the country selector.
* [PLANET-3739](https://jira.greenpeace.org/browse/PLANET-3739) - Safari adds styling to country selector in the EN form.

## 1.60 - 2019-07-10

### Features

* [PLANET-3710](https://jira.greenpeace.org/browse/PLANET-3710) - EN Form: allow text option below the CtA button
* [PLANET-3714](https://jira.greenpeace.org/browse/PLANET-3714) - Non-English sites: add engaging-networks plugin to LOCO 
* [PLANET-3619](https://jira.greenpeace.org/browse/PLANET-3619) - Change youtube domain to privacy enabled one in embedded content

### Bug Fixes

* [PLANET-3717](https://jira.greenpeace.org/browse/PLANET-3717) - The Arabic Menu is distorted when adding 3rd language
* [PLANET-3704](https://jira.greenpeace.org/browse/PLANET-3704) - Gallery block: Grid style is not adjusting based on image height
* [PLANET-3634](https://jira.greenpeace.org/browse/PLANET-3634) - Columns block: vertical space of body text is misaligned
* [PLANET-3726](https://jira.greenpeace.org/browse/PLANET-3726) - Flush Object Cache prompt issue
* [PLANET-3737](https://jira.greenpeace.org/browse/PLANET-3737) - PDF icon not available in NRO master theme

## 1.59 - 2019-07-03

### Features

* [PLANET-3613](https://jira.greenpeace.org/browse/PLANET-3613) - IdeaPush: include ideas \(Post\_Type=idea\) in Handbook Author profile pages 
* [PLANET-3635](https://jira.greenpeace.org/browse/PLANET-3635) - Make the Progress Bar match the Call To Action color when the counter is inside the form block

### Bug Fixes

* [PLANET-3718](https://jira.greenpeace.org/browse/PLANET-3718) - Fix notice level error of login\_headertitle deprecated function 
* [PLANET-3656](https://jira.greenpeace.org/browse/PLANET-3656) - Blocks update command: rename fields 
* [PLANET-3654](https://jira.greenpeace.org/browse/PLANET-3654) - Articles Block behaving differently in Custom Tag pages
* [PLANET-3618](https://jira.greenpeace.org/browse/PLANET-3618) - Encoding issues with dataLayer values \(gCampaign and gBasket\)
* [PLANET-3617](https://jira.greenpeace.org/browse/PLANET-3617) - DataLayer event is fired even when form submission is not completed
* [PLANET-3666](https://jira.greenpeace.org/browse/PLANET-3666) - Articles block: load more button not loading results 
* [PLANET-3631](https://jira.greenpeace.org/browse/PLANET-3631) - Columns block: vertical space sans button
* [PLANET-3626](https://jira.greenpeace.org/browse/PLANET-3626) - Covers block: vertical alignment of button

## 1.58 - 2019-06-26

### Features

* [PLANET-3685](https://jira.greenpeace.org/browse/PLANET-3685) - Allow counter and gallery blocks in Posts
* [PLANET-3615](https://jira.greenpeace.org/browse/PLANET-3615) - Meta data: Include meta title and meta description in head
* [PLANET-3611](https://jira.greenpeace.org/browse/PLANET-3611) - Implement filter by post type in posts overview backend

### Bug Fixes

* [PLANET-3632](https://jira.greenpeace.org/browse/PLANET-3632) - Media block: excessive vertical space below block
* [PLANET-3633](https://jira.greenpeace.org/browse/PLANET-3633) - Media Block: Title is misaligned
* [PLANET-3630](https://jira.greenpeace.org/browse/PLANET-3630) - Engaging Networks Forms: Hidden Opt In field should have editable value
* [PLANET-2880](https://jira.greenpeace.org/browse/PLANET-2880) - Articles block showing thumbnails in different sizes
* [PLANET-2649](https://jira.greenpeace.org/browse/PLANET-2649) - Post: Author block image

## 1.57 - 2019-06-12

### Features

* [PLANET-3624](https://jira.greenpeace.org/browse/PLANET-3624) - Country dropdown - get rid of language identifiers for Nordic P4 sites 
* [PLANET-3599](https://jira.greenpeace.org/browse/PLANET-3599) - Media block: Change youtube domain to privacy enabled one
* [PLANET-3589](https://jira.greenpeace.org/browse/PLANET-3589) - Rename commands in EN form Block edit mode
* [PLANET-3620](https://jira.greenpeace.org/browse/PLANET-3620) - Rename fields in the EN Form block backend
* [PLANET-3596](https://jira.greenpeace.org/browse/PLANET-3596) - EN form: make "Content Title" and "Content Description" only available for "Form on side" style
* [PLANET-3623](https://jira.greenpeace.org/browse/PLANET-3623) - Make text in EN form more readable

## 1.56 - 2019-06-05

### Features

* [PLANET-3556](https://jira.greenpeace.org/browse/PLANET-3556) - Timeline Block: UI improvements
* [PLANET-3581](https://jira.greenpeace.org/browse/PLANET-3581) - EN Form Block: Fields not appearing in edit mode when Element is inserted 
* [PLANET-3577](https://jira.greenpeace.org/browse/PLANET-3577) - Remove default\_value setting for enform fields of type 'Text'
* [PLANET-3576](https://jira.greenpeace.org/browse/PLANET-3576) - Auto-add Email field in new EN Forms
* [PLANET-3550](https://jira.greenpeace.org/browse/PLANET-3550) - Plugin Engaging networks: Add regex validator on text fields
* [PLANET-3539](https://jira.greenpeace.org/browse/PLANET-3539) - Master Theme: Load services only in the pages that are needed.
* [PLANET-3592](https://jira.greenpeace.org/browse/PLANET-3592) - Fix Phpcs, ESlint errors on EN v2 release branch
* [PLANET-3594](https://jira.greenpeace.org/browse/PLANET-3594) - Fix Stylelint errors on EN v2 release branch
* [PLANET-3586](https://jira.greenpeace.org/browse/PLANET-3586) - Show Counter Bar Inside side style EN form
* [PLANET-3583](https://jira.greenpeace.org/browse/PLANET-3583) - Add a column in the posts list that displays the post type taxonomy \(Story, Press Release, ...\)
* [PLANET-3548](https://jira.greenpeace.org/browse/PLANET-3548) - Display non-tagged fields in enform add/create page 
* [PLANET-3543](https://jira.greenpeace.org/browse/PLANET-3543) - EN Form Block: Opt in questions should get the text from the EN Api
* [PLANET-3037](https://jira.greenpeace.org/browse/PLANET-3037) - Counter Block: add title and description
* [PLANET-2843](https://jira.greenpeace.org/browse/PLANET-2843) - Donate page: disable the Next Button and show errors
* [PLANET-2723](https://jira.greenpeace.org/browse/PLANET-2723) - Search: Remove date from Page results

### Bug Fixes

* [PLANET-3578](https://jira.greenpeace.org/browse/PLANET-3578) - Remove checkbox background and align submit button
* [PLANET-3582](https://jira.greenpeace.org/browse/PLANET-3582) - Content title and description are not visible in the frontend
* [PLANET-3554](https://jira.greenpeace.org/browse/PLANET-3554) - EN form Block: Opt in hidden with default value don't get commited to EN
* [PLANET-3585](https://jira.greenpeace.org/browse/PLANET-3585) - The Arabic Menu is distorted when adding 3rd language
* [PLANET-3584](https://jira.greenpeace.org/browse/PLANET-3584) - Fix campaign exporter SQL creation
* [PLANET-2576](https://jira.greenpeace.org/browse/PLANET-2576) - IdeaPush: fix attachement image \(Not resized\)

## 1.55 - 2019-05-29

### Features

* [PLANET-3557](https://jira.greenpeace.org/browse/PLANET-3557) - Counter Block: Implement design changes
* [PLANET-3558](https://jira.greenpeace.org/browse/PLANET-3558) - Add Title and Description to Media block
* [PLANET-3559](https://jira.greenpeace.org/browse/PLANET-3559) - Add Title and Description to Timeline block
* [PLANET-3566](https://jira.greenpeace.org/browse/PLANET-3566) - Plugins Report: Add columns for different usage of Tag functionality
* [PLANET-3567](https://jira.greenpeace.org/browse/PLANET-3567) - Articles block: Add class names for tags in the article
* [PLANET-3565](https://jira.greenpeace.org/browse/PLANET-3565) - Counter Block: Add API Url for completed number
* [PLANET-3563](https://jira.greenpeace.org/browse/PLANET-3563) - Create responsive spacing for blocks
* [PLANET-2474](https://jira.greenpeace.org/browse/PLANET-2474) - Rename 'Page types' in menu to 'Post types'
* [PLANET-2435](https://jira.greenpeace.org/browse/PLANET-2435) - Gallery block: allow for portrait images
* [PLANET-1884](https://jira.greenpeace.org/browse/PLANET-1884) - Rename description of settings fields

### Bug Fixes

* [PLANET-3551](https://jira.greenpeace.org/browse/PLANET-3551) - GDPR Comments - consent button disappeared
* [PLANET-3530](https://jira.greenpeace.org/browse/PLANET-3530) - 2 columns split: focus point not working
* [PLANET-3293](https://jira.greenpeace.org/browse/PLANET-3293) - Unable to reattribute comments
* [PLANET-2919](https://jira.greenpeace.org/browse/PLANET-2919) - Media Library tab: inconsistent behavior

## 1.54 - 2019-05-22

### Features

* [PLANET-3541](https://jira.greenpeace.org/browse/PLANET-3541) - Plugin Blocks: Allow overide of templates by child theme
* [PLANET-3536](https://jira.greenpeace.org/browse/PLANET-3536) - Apply new spacing rules to all blocks
* [PLANET-3320](https://jira.greenpeace.org/browse/PLANET-3320) - Add a new dataLayer field \(Goal\) on Form Block backend
* [PLANET-3533](https://jira.greenpeace.org/browse/PLANET-3533) - Blocks vertical spacing consistency

### Bug Fixes

* [PLANET-3507](https://jira.greenpeace.org/browse/PLANET-3507) - Search: limit results to full-text matches
* [PLANET-3293](https://jira.greenpeace.org/browse/PLANET-3293) - Unable to reattribute comments

## 1.53 - 2019-05-15

### Features

* [PLANET-3525](https://jira.greenpeace.org/browse/PLANET-3525) - Vertical alignnment between elements within blocks
* [PLANET-3524](https://jira.greenpeace.org/browse/PLANET-3524) - Top & Bottom Margin rules on blocks.
* [PLANET-3520](https://jira.greenpeace.org/browse/PLANET-3520) - Code cleanup: Uncaught Exception
* [PLANET-3526](https://jira.greenpeace.org/browse/PLANET-3526) - Consistancey of block heading & intro paragraph
* [PLANET-3320](https://jira.greenpeace.org/browse/PLANET-3320) - Add a new dataLayer field \(Goal\) on Form Block backend
* [PLANET-3518](https://jira.greenpeace.org/browse/PLANET-3518) - Code cleanup: Dynamic SQL Query
* [PLANET-3517](https://jira.greenpeace.org/browse/PLANET-3517) - Code cleanup: Http parameter polution
* [PLANET-3519](https://jira.greenpeace.org/browse/PLANET-3519) - Code cleanup: Missing Default Case
* [PLANET-3515](https://jira.greenpeace.org/browse/PLANET-3515) - Remove vendor and autoload scripts from plugin-engagingnetworks
* [PLANET-2906](https://jira.greenpeace.org/browse/PLANET-2906) - Automatic test: Check page\_type pages for author url link

### Bug Fixes

* [PLANET-3527](https://jira.greenpeace.org/browse/PLANET-3527) - Menu automatically drops down at 992px width
* [PLANET-3355](https://jira.greenpeace.org/browse/PLANET-3355) - Fix ‘pageType’ dataLayer push

## 1.52 - 2019-05-08

### Features

* [PLANET-3501](https://jira.greenpeace.org/browse/PLANET-3501) - Regression: Tables in pages are not responsive
* [PLANET-3393](https://jira.greenpeace.org/browse/PLANET-3393) - Campaigns: Review color swatch options for the customizer
* [PLANET-3508](https://jira.greenpeace.org/browse/PLANET-3508) - Split Two Column: Design on left column button/link is broken
* [PLANET-2849](https://jira.greenpeace.org/browse/PLANET-2849) - Remove vendor and autoload scripts from plugin-blocks
* [PLANET-2668](https://jira.greenpeace.org/browse/PLANET-2668) - Automate testing of new vesions of plugins using RIPPs on the cloud
* [PLANET-2658](https://jira.greenpeace.org/browse/PLANET-2658) - Image export/import

### Bug Fixes

* [PLANET-3420](https://jira.greenpeace.org/browse/PLANET-3420) - Campaigns: Page header fields - Open header button link in new tab not working
* [PLANET-3499](https://jira.greenpeace.org/browse/PLANET-3499) - Social menu: the 5th icon is not aligned
* [PLANET-3506](https://jira.greenpeace.org/browse/PLANET-3506) - Fix php7.2 count\(\) warning
* [PLANET-3504](https://jira.greenpeace.org/browse/PLANET-3504) - Feedback button covers slide-left button
* [PLANET-3156](https://jira.greenpeace.org/browse/PLANET-3156) - Header CTA button is not responsive on Take action pages
* [PLANET-2954](https://jira.greenpeace.org/browse/PLANET-2954) - Search results page - Inconsistent behavior on post type links
* [PLANET-2715](https://jira.greenpeace.org/browse/PLANET-2715) - Posts/Pages: Password protection affect design
* [PLANET-2717](https://jira.greenpeace.org/browse/PLANET-2717) - Page Visibility: Password protection option not working
* [PLANET-2693](https://jira.greenpeace.org/browse/PLANET-2693) - GPI Media library: Images not loading for the carousel header block 
* [PLANET-2402](https://jira.greenpeace.org/browse/PLANET-2402) - Admin: Posts Report not loading properly

## 1.51 - 2019-04-24

### Features

* [PLANET-3503](https://jira.greenpeace.org/browse/PLANET-3503) - Fix GPSEA link in country selector
* [PLANET-3419](https://jira.greenpeace.org/browse/PLANET-3419) - Improve twig rendering times in search results 2. Enable Timber template caching
* [PLANET-3498](https://jira.greenpeace.org/browse/PLANET-3498) - Dev Report in P4 admin pages
* [PLANET-3435](https://jira.greenpeace.org/browse/PLANET-3435) - Restructure P4\_Master\_Site class code

### Bug Fixes

* [PLANET-3495](https://jira.greenpeace.org/browse/PLANET-3495) - Fix JS error on P4 admin section due to country selector
* [PLANET-3469](https://jira.greenpeace.org/browse/PLANET-3469) - Take Action Page Selector - Campaign in Article
* [PLANET-3434](https://jira.greenpeace.org/browse/PLANET-3434) - Timeline block: Description text should use Lora font
* [PLANET-3433](https://jira.greenpeace.org/browse/PLANET-3433) - Sitemap - Alphabetical order
* [PLANET-3432](https://jira.greenpeace.org/browse/PLANET-3432) - Timeline block: image size too small
* [PLANET-3370](https://jira.greenpeace.org/browse/PLANET-3370) - CSS glitch on the EN Form Block
* [PLANET-3467](https://jira.greenpeace.org/browse/PLANET-3467) - Submenu block: problems with styles
* [PLANET-3347](https://jira.greenpeace.org/browse/PLANET-3347) - Having multiple carousels in a post some may seem unresponsive to manual scroll 

## 1.50 - 2019-04-17

### Features

* [PLANET-3430](https://jira.greenpeace.org/browse/PLANET-3430) - Change spelling of Slovenia in country selector
* [PLANET-3418](https://jira.greenpeace.org/browse/PLANET-3418) - Campaigns: Support Columns Block
* [PLANET-3396](https://jira.greenpeace.org/browse/PLANET-3396) - Insert datalayer fields on the campaign content \(CPP\) backend
* [PLANET-3431](https://jira.greenpeace.org/browse/PLANET-3431) - Restructure Plugin Blocks code for Commands
* [PLANET-3424](https://jira.greenpeace.org/browse/PLANET-3424) - Campaigns: Logo color selector should update footer element colors too
* [PLANET-3425](https://jira.greenpeace.org/browse/PLANET-3425) - Campaigns: Limited availability
* [PLANET-3389](https://jira.greenpeace.org/browse/PLANET-3389) - Bug: Carousel header is truncating at 30 chars instead of 32
* [PLANET-3386](https://jira.greenpeace.org/browse/PLANET-3386) - Review and clean up the master-theme Campaings PR
* [PLANET-3371](https://jira.greenpeace.org/browse/PLANET-3371) - Admin login page visual customisation
* [PLANET-3380](https://jira.greenpeace.org/browse/PLANET-3380) - Deliver the "convert old blocks to new blocks" as admin functionality
* [PLANET-3379](https://jira.greenpeace.org/browse/PLANET-3379) - Break down the blocks.css of the campaigns site to smaller parts
* [PLANET-3357](https://jira.greenpeace.org/browse/PLANET-3357) - Minimal header and footer

### Bug Fixes

* [PLANET-3422](https://jira.greenpeace.org/browse/PLANET-3422) - Main content in Campaign pages is attached to the bottom of the browser.
* [PLANET-3398](https://jira.greenpeace.org/browse/PLANET-3398) - Campaigns: Fix Secondary button colors across all blocks
* [PLANET-3394](https://jira.greenpeace.org/browse/PLANET-3394) - Campaigns: Default template is using the Antarctica styleguide template
* [PLANET-3423](https://jira.greenpeace.org/browse/PLANET-3423) - White gradient in campaign pages becomes grey in safari.
* [PLANET-3417](https://jira.greenpeace.org/browse/PLANET-3417) - Take Action card is not following scrolling in some Posts.
* [PLANET-3412](https://jira.greenpeace.org/browse/PLANET-3412) - Languague selection vertical bars
* [PLANET-3387](https://jira.greenpeace.org/browse/PLANET-3387) - Campaigns: Take action block buttons have incorrect colors
* [PLANET-3391](https://jira.greenpeace.org/browse/PLANET-3391) - Campaigns: "Default template" missing from campaign template options dropdown
* [PLANET-3311](https://jira.greenpeace.org/browse/PLANET-3311) - Improve twig rendering times in search results
* [PLANET-3383](https://jira.greenpeace.org/browse/PLANET-3383) - Campaigns: Carousel block resizing based on caption length
* [PLANET-3382](https://jira.greenpeace.org/browse/PLANET-3382) - Timeline block \(Outlandish\) - 'Start at end' checkbox not working

## 1.49 - 2019-04-03

### Features

* [PLANET-3372](https://jira.greenpeace.org/browse/PLANET-3372) - Blocks report: Add reporting on different styles of Carousel Header
* [PLANET-3335](https://jira.greenpeace.org/browse/PLANET-3335) - Add asterisk to required form fields
* [PLANET-3332](https://jira.greenpeace.org/browse/PLANET-3332) - Use the countries json file to render countries dropdown menu
* [PLANET-3343](https://jira.greenpeace.org/browse/PLANET-3343) - Explore client side validation options on form field entries
* [PLANET-3324](https://jira.greenpeace.org/browse/PLANET-3324) - Move campaign fields \(dataLayer\) to the P4 page backend 
* [PLANET-3329](https://jira.greenpeace.org/browse/PLANET-3329) - Store last visited NRO on 'greenpeace' cookie 
* [PLANET-2745](https://jira.greenpeace.org/browse/PLANET-2745) - Timeline Block

### Bug Fixes

* [PLANET-3376](https://jira.greenpeace.org/browse/PLANET-3376) - NewCovers: Publications dont show correct link
* [PLANET-3346](https://jira.greenpeace.org/browse/PLANET-3346) - Gallery Block, Three columns style: Uses full images instead of thumbnails

## 1.48 - 2019-03-27

### Features

* [PLANET-3286](https://jira.greenpeace.org/browse/PLANET-3286) - Split blocks UI code into separate objects and compose them.
* [PLANET-3308](https://jira.greenpeace.org/browse/PLANET-3308) - Select and review GDPR-safe Comment plugin  
* [PLANET-3305](https://jira.greenpeace.org/browse/PLANET-3305) - Make phpcs tests in master-theme and plugin-blocks use the image of PLANET-3255
* [PLANET-3264](https://jira.greenpeace.org/browse/PLANET-3264) - Write conversion scripts for old blocks-&gt;new blocks
* [PLANET-3277](https://jira.greenpeace.org/browse/PLANET-3277) - New Carousel header - let webbies choose if they want to autoplay slides animation
* [PLANET-3256](https://jira.greenpeace.org/browse/PLANET-3256) - Add "Open in a new tab" for Page Header Link fields 

### Bug Fixes

* [PLANET-3334](https://jira.greenpeace.org/browse/PLANET-3334) - New Carousel Header - Fix the No Carousel version
* [PLANET-3310](https://jira.greenpeace.org/browse/PLANET-3310) - Fix E\_USER\_WARNING errors by removing deprecated post.permalink references
* [PLANET-3298](https://jira.greenpeace.org/browse/PLANET-3298) - EN Form: Thank you page URL field needs editor prompt
* [PLANET-2978](https://jira.greenpeace.org/browse/PLANET-2978) - Articles block: article count allowing for minus numbers

## 1.47 - 2019-03-20

### Features

* [PLANET-3271](https://jira.greenpeace.org/browse/PLANET-3271) - Check character truncation caused by the button width difference between the two homepage carousels 
* [PLANET-3265](https://jira.greenpeace.org/browse/PLANET-3265) - Optimize search page loading time \(including the Filter counters feature\).
* [PLANET-3267](https://jira.greenpeace.org/browse/PLANET-3267) - Add Google Metadata on Planet4 websites

### Bug Fixes

* [PLANET-3297](https://jira.greenpeace.org/browse/PLANET-3297) - EN Form block: move fields introductory text to the right place 
* [PLANET-3292](https://jira.greenpeace.org/browse/PLANET-3292) - Image and text alignment on column block M & S templates
* [PLANET-3268](https://jira.greenpeace.org/browse/PLANET-3268) - Clearing cache automatically after page publication not working

## 1.46.0 - 2019-03-13

### Features

* [PLANET-3275](https://jira.greenpeace.org/browse/PLANET-3275) - New Carousel header - autoplay slides animation
* [PLANET-3276](https://jira.greenpeace.org/browse/PLANET-3276) - New Carousel header - display character number limitation on Wordpress.
* [PLANET-3279](https://jira.greenpeace.org/browse/PLANET-3279) - Mobile secondary buttons wrong size.

### Bug Fixes

* [PLANET-3282](https://jira.greenpeace.org/browse/PLANET-3282) - Carousel \(not "carousel header"\) indicators off-centered.
* [PLANET-3274](https://jira.greenpeace.org/browse/PLANET-3274) - New Carousel header S \(mobile\) - reduce padding between text and CTA, and page controller
* [PLANET-3260](https://jira.greenpeace.org/browse/PLANET-3260) - Media Library Image Credit missing
* [PLANET-3254](https://jira.greenpeace.org/browse/PLANET-3254) - Apply text rules from Mavel doc

## 1.45 - 2019-03-06

### Features

* [PLANET-3266](https://jira.greenpeace.org/browse/PLANET-3266) - Switch to ElasticSearch
* [PLANET-3237](https://jira.greenpeace.org/browse/PLANET-3237) - Set a 'no\_track' cookie if user manually disables all trackings
* [PLANET-3236](https://jira.greenpeace.org/browse/PLANET-3236) - Add dataLayer event to Cookies Bar 
* [PLANET-3210](https://jira.greenpeace.org/browse/PLANET-3210) - Add animations to new Carousel Header design
* [PLANET-3184](https://jira.greenpeace.org/browse/PLANET-3184) - EN Form Block: allow markup / HTML in description 
* [PLANET-1068](https://jira.greenpeace.org/browse/PLANET-1068) - Help button in admin that leads to GP specific content documentation

### Bug Fixes

* [PLANET-3244](https://jira.greenpeace.org/browse/PLANET-3244) - Oversized button in EN form block 
* [PLANET-3252](https://jira.greenpeace.org/browse/PLANET-3252) - Secondary buttons have wrong type size
* [PLANET-3251](https://jira.greenpeace.org/browse/PLANET-3251) - Carousel white space spills down into next block
* [PLANET-3239](https://jira.greenpeace.org/browse/PLANET-3239) - Country dropdown menu: Alphabet header obstructed

## 1.44 - 2019-02-27

### Features

* [PLANET-3242](https://jira.greenpeace.org/browse/PLANET-3242) - Write codeception tests for the new blocks \(carousel header new style and columns\)
* [PLANET-3232](https://jira.greenpeace.org/browse/PLANET-3232) - CSS blockquote apply css
* [PLANET-2981](https://jira.greenpeace.org/browse/PLANET-2981) - Automate clearing cache after page publication 
* [PLANET-3234](https://jira.greenpeace.org/browse/PLANET-3234) - New Carousel header - Make the image overlay darker
* [PLANET-3238](https://jira.greenpeace.org/browse/PLANET-3238) - New Carousel header - image focus point not working
* [PLANET-3222](https://jira.greenpeace.org/browse/PLANET-3222) - Navigation changes for MENA
* [PLANET-3033](https://jira.greenpeace.org/browse/PLANET-3033) - Homepage carousel header: change h2 tag &gt; h1

### Bug Fixes

* [PLANET-3228](https://jira.greenpeace.org/browse/PLANET-3228) - Columns block: Space too big on mobile
* [PLANET-3218](https://jira.greenpeace.org/browse/PLANET-3218) - Fix double vertical spacing between blocks
* [PLANET-3250](https://jira.greenpeace.org/browse/PLANET-3250) - Carousel nav markers duplicated on L & XL
* [PLANET-3253](https://jira.greenpeace.org/browse/PLANET-3253) - Ships slide show markers and content area off
* [PLANET-3235](https://jira.greenpeace.org/browse/PLANET-3235) - New Carousel header - Fix image height on mobile
* [PLANET-3224](https://jira.greenpeace.org/browse/PLANET-3224) - Carousel header \(with 1 only image\) disappears on mobile when sliding through it
* [PLANET-3211](https://jira.greenpeace.org/browse/PLANET-3211) - Sitemap: About Greenpeace section missing pages

## 1.43 - 2019-02-20

### Features

* [PLANET-3227](https://jira.greenpeace.org/browse/PLANET-3227) - Plugin blocks: Remove from interface older blocks
* [PLANET-3231](https://jira.greenpeace.org/browse/PLANET-3231) - Export Blocks Usage report data as json
* [PLANET-3205](https://jira.greenpeace.org/browse/PLANET-3205) - Column Blocks: Rename Call To Action button and text 
* [PLANET-3223](https://jira.greenpeace.org/browse/PLANET-3223) - New Carousel block corrections
* [PLANET-3208](https://jira.greenpeace.org/browse/PLANET-3208) - Insert dropdown fields on the Form Block backend
* [PLANET-3209](https://jira.greenpeace.org/browse/PLANET-3209) - Push dataLayer values on page load 
* [PLANET-3034](https://jira.greenpeace.org/browse/PLANET-3034) - Reorder the blocks naming and order in the "Plugin Blocks usage"

### Bug Fixes

* [PLANET-3214](https://jira.greenpeace.org/browse/PLANET-3214) - Carousel header focus point not working
* [PLANET-3213](https://jira.greenpeace.org/browse/PLANET-3213) - Country selector dropdown: style lost on Firefox
* [PLANET-3198](https://jira.greenpeace.org/browse/PLANET-3198) - Broken Translation: 'By' string below post title
* [PLANET-3190](https://jira.greenpeace.org/browse/PLANET-3190) - Alignment of related articles shifts in a very specific condition \(Browser dependent\)
* [PLANET-3194](https://jira.greenpeace.org/browse/PLANET-3194) - Columns Block: issues with No Image and Icons styles
* [PLANET-3206](https://jira.greenpeace.org/browse/PLANET-3206) - PHP Warning: Empty string at class-submenu-controller.php on line 220

## 1.42 - 2019-02-13

### Features

* [PLANET-3179](https://jira.greenpeace.org/browse/PLANET-3179) - Implement new Carousel Header design
* [PLANET-3022](https://jira.greenpeace.org/browse/PLANET-3022) - MENA center search icon 
* [PLANET-3188](https://jira.greenpeace.org/browse/PLANET-3188) - Add dataLayer event and variables to the Form Block
* [PLANET-3172](https://jira.greenpeace.org/browse/PLANET-3172) - Tags redirection
* [PLANET-3175](https://jira.greenpeace.org/browse/PLANET-3175) - Columns Block: rename title and description
* [PLANET-3160](https://jira.greenpeace.org/browse/PLANET-3160) - EN plugin: Make the front end submition of forms to use js, session token and Frontend API key

### Bug Fixes

* [PLANET-3201](https://jira.greenpeace.org/browse/PLANET-3201) - Submenu block: Fix ordering of columns vs rows
* [PLANET-3178](https://jira.greenpeace.org/browse/PLANET-3178) - Gallery block: Description field not displaying
* [PLANET-3169](https://jira.greenpeace.org/browse/PLANET-3169) - Tasks block: description and button misaligned on Mobile
* [PLANET-3189](https://jira.greenpeace.org/browse/PLANET-3189) - Columns Block: Description not appearing in "Icons" style
* [PLANET-3157](https://jira.greenpeace.org/browse/PLANET-3157) - P4 Mena - Arabic Website Image Header Carrousel Button
* [PLANET-3158](https://jira.greenpeace.org/browse/PLANET-3158) - Explore page spacing off after split two col block
* [PLANET-2364](https://jira.greenpeace.org/browse/PLANET-2364) - Search: Don't display 'Show 5 more' button when there are less than 5 results

## 1.41 - 2019-01-30

### Features

* [PLANET-3164](https://jira.greenpeace.org/browse/PLANET-3164) - Apply blockquote styling site wide so it includes Pages
* [PLANET-3059](https://jira.greenpeace.org/browse/PLANET-3059) - Implement new gutter system on master-theme scss code
* [PLANET-3159](https://jira.greenpeace.org/browse/PLANET-3159) - EN plugin: Create fields for second API user
* [PLANET-3161](https://jira.greenpeace.org/browse/PLANET-3161) - SCSS refactor: Use gutter variables in Blocks and EN plugins

### Bug Fixes

* [PLANET-3091](https://jira.greenpeace.org/browse/PLANET-3091) - 2-column split block: arrow icon is missing on mobile
* [PLANET-3088](https://jira.greenpeace.org/browse/PLANET-3088) - Images: zoom in not displaying full photo 

## 1.40 - 2019-01-23

### Features

* [PLANET-3071](https://jira.greenpeace.org/browse/PLANET-3071) - EN plugin: Make the API secret show as asteriscs \(html type password\)
* [PLANET-3072](https://jira.greenpeace.org/browse/PLANET-3072) - Submenu block: Update and finish to original expectations
* [PLANET-3063](https://jira.greenpeace.org/browse/PLANET-3063) - Font sizes on happy point
* [PLANET-3064](https://jira.greenpeace.org/browse/PLANET-3064) - Remove line breaks
* [PLANET-3058](https://jira.greenpeace.org/browse/PLANET-3058) - Fix master-theme phpcs errors
* [PLANET-3040](https://jira.greenpeace.org/browse/PLANET-3040) - Restructure plugin-blocks scss codebase
* [PLANET-2984](https://jira.greenpeace.org/browse/PLANET-2984) - Synchronize phpcs and coding standards with that of plugin-blocks
* [PLANET-3061](https://jira.greenpeace.org/browse/PLANET-3061) - Error message
* [PLANET-1491](https://jira.greenpeace.org/browse/PLANET-1491) - Build the Column Block

### Bug Fixes

* [PLANET-3077](https://jira.greenpeace.org/browse/PLANET-3077) - EN Form: Add more context \(Title and Description\) to fields of form details
* [PLANET-3074](https://jira.greenpeace.org/browse/PLANET-3074) - EN form: typos and edit captions
* [PLANET-3075](https://jira.greenpeace.org/browse/PLANET-3075) - EN form: default fields should be flagged
* [PLANET-3073](https://jira.greenpeace.org/browse/PLANET-3073) - EN form: Rename style forms
* [PLANET-2841](https://jira.greenpeace.org/browse/PLANET-2841) - Refined Results: wrong URL path
* [PLANET-3079](https://jira.greenpeace.org/browse/PLANET-3079) - EN Form: redo the CTA Button and the "Thank you" fields in the Block Form Details 
* [PLANET-3080](https://jira.greenpeace.org/browse/PLANET-3080) - EN form: Make the EN Live Pages field mandatory
* [PLANET-3078](https://jira.greenpeace.org/browse/PLANET-3078) - EN Form: move the "Background image" field under the Form Style selection and add description
* [PLANET-3069](https://jira.greenpeace.org/browse/PLANET-3069) - The "Got It" button in P4 MENA - Cookies Pop-Up Banner
* [PLANET-2995](https://jira.greenpeace.org/browse/PLANET-2995) - Happy point: space between happy point and footer 
* [PLANET-2767](https://jira.greenpeace.org/browse/PLANET-2767) - enable bilingual author profiles

## 1.39.0 - 2019-01-16

### Features

* [PLANET-3060](https://jira.greenpeace.org/browse/PLANET-3060) - Fix buttons active state
* [PLANET-2866](https://jira.greenpeace.org/browse/PLANET-2866) - Happy point: fix subscribe rollover color
* [PLANET-2842](https://jira.greenpeace.org/browse/PLANET-2842) - Evergreen template: Restrict paragraph length not container
* [PLANET-3020](https://jira.greenpeace.org/browse/PLANET-3020) - Style blockquotes
* [PLANET-2503](https://jira.greenpeace.org/browse/PLANET-2503) - Remove home page background image
* [PLANET-2479](https://jira.greenpeace.org/browse/PLANET-2479) - Build the Gallery Block

### Bug Fixes

* [PLANET-2921](https://jira.greenpeace.org/browse/PLANET-2921) - Yellow tag movement on mouse over the image
* [PLANET-2920](https://jira.greenpeace.org/browse/PLANET-2920) - Some weird code at the bottom of the page
* [PLANET-3046](https://jira.greenpeace.org/browse/PLANET-3046) - Search filter box - visual bug on close icon 

## 1.38.0 - 2019-01-09

### Features

* [PLANET-3014](https://jira.greenpeace.org/browse/PLANET-3014) - Block: develop Counter / Statistics block
* [PLANET-2818](https://jira.greenpeace.org/browse/PLANET-2818) - Social block \(Ex named: Video Block\): Expand functionality and change the name
* [PLANET-3054](https://jira.greenpeace.org/browse/PLANET-3054) - Standard updates: Timber, sitemap generator, wordpress to 5.0.2
* [PLANET-3035](https://jira.greenpeace.org/browse/PLANET-3035) - Add alt text to background image of happy point block
* [PLANET-2955](https://jira.greenpeace.org/browse/PLANET-2955) - Restructure master-theme scss codebase

### Bug Fixes

* [PLANET-3042](https://jira.greenpeace.org/browse/PLANET-3042) - Country selector: update MENA
* [PLANET-3013](https://jira.greenpeace.org/browse/PLANET-3013) - Social icons not aligned properly on Windows
* [PLANET-2916](https://jira.greenpeace.org/browse/PLANET-2916) - Search filters box - Title overlaps close button

## 1.37.0 - 2018-12-19

### Features

* [PLANET-2964](https://jira.greenpeace.org/browse/PLANET-2964) - Use svg icons instead of font icons
* [PLANET-3027](https://jira.greenpeace.org/browse/PLANET-3027) - MENA: Adjust 3 column details block to right-to-left 
* [PLANET-3008](https://jira.greenpeace.org/browse/PLANET-3008) - Remove blocks: Take Action, Campaign Thumbnails and 4 columns blocks
* [PLANET-1362](https://jira.greenpeace.org/browse/PLANET-1362) - Images: Allow for zoom on mobile devices

### Bug Fixes

* [PLANET-3005](https://jira.greenpeace.org/browse/PLANET-3005) - Happy point: cut on desktop on tag pages
* [PLANET-3007](https://jira.greenpeace.org/browse/PLANET-3007) - Translation: missing strings
* [PLANET-2990](https://jira.greenpeace.org/browse/PLANET-2990) - Bug with the audio player

## 1.36.0 - 2018-12-12

### Features

* [PLANET-3001](https://jira.greenpeace.org/browse/PLANET-3001) - Change font on Japan's site
* [PLANET-3004](https://jira.greenpeace.org/browse/PLANET-3004) - Japan excerpt showing all content of post by default
* [PLANET-2922](https://jira.greenpeace.org/browse/PLANET-2922) - HP carousel - Put the main CTA above page controller 
* [PLANET-2579](https://jira.greenpeace.org/browse/PLANET-2579) - Search bar: apply adjusted design 

### Bug Fixes

* [PLANET-2968](https://jira.greenpeace.org/browse/PLANET-2968) - Happy point: cut on M and S screens
* [PLANET-2747](https://jira.greenpeace.org/browse/PLANET-2747) - Search: Load More button
* [PLANET-2941](https://jira.greenpeace.org/browse/PLANET-2941) - Articles block: load more button displays same result twice
* [PLANET-2858](https://jira.greenpeace.org/browse/PLANET-2858) - Posts: User Profile not rendering HTML in bio
* [PLANET-2857](https://jira.greenpeace.org/browse/PLANET-2857) - User Profile: HTML not appearing correctly on mobile devices \(M,S\)

## 1.35.0 - 2018-12-05

### Features

* [PLANET-2989](https://jira.greenpeace.org/browse/PLANET-2989) - RTL: Reverse background gradients
* [PLANET-2979](https://jira.greenpeace.org/browse/PLANET-2979) - Radio buttons disappeared from Form
* [PLANET-2948](https://jira.greenpeace.org/browse/PLANET-2948) - Standard updates: Timber to 1.8.3, ngix at 2.0.1
* [PLANET-2963](https://jira.greenpeace.org/browse/PLANET-2963) - Explore how to give P4 editors the "flush cache" command 
* [PLANET-1799](https://jira.greenpeace.org/browse/PLANET-1799) - Add wrapper to default template

### Bug Fixes

* [PLANET-2930](https://jira.greenpeace.org/browse/PLANET-2930) - Pages: Load More button is wrong size
* [PLANET-2928](https://jira.greenpeace.org/browse/PLANET-2928) - Pages: Load More button is wrong colour
* [PLANET-2933](https://jira.greenpeace.org/browse/PLANET-2933) - Articles block: Load More button is wrong colour
* [PLANET-2929](https://jira.greenpeace.org/browse/PLANET-2929) - Covers block: Load More button has an ellipsis
* [PLANET-2910](https://jira.greenpeace.org/browse/PLANET-2910) - Take Action covers are sorted oldest to newest 
* [PLANET-2848](https://jira.greenpeace.org/browse/PLANET-2848) - No space between campaign covers rows
* [PLANET-2927](https://jira.greenpeace.org/browse/PLANET-2927) - Author Profile page: Load More button is wrong  colour
* [PLANET-2926](https://jira.greenpeace.org/browse/PLANET-2926) - Author Profile page: Load More button is wrong  size
* [PLANET-2915](https://jira.greenpeace.org/browse/PLANET-2915) - PageS: Results appearance
* [PLANET-2574](https://jira.greenpeace.org/browse/PLANET-2574) - IdeaPush: Fix TAG page

## 1.34.1 - 2018-11-22

### Bug Fixes

* [PLANET-2932](https://jira.greenpeace.org/browse/PLANET-2932) - Articles block not showing all Posts
* [PLANET-2931](https://jira.greenpeace.org/browse/PLANET-2931) - Pages: showing wrong content
* [PLANET-2943](https://jira.greenpeace.org/browse/PLANET-2943) - Articles block: hovering over the image does not underlines the title
* [PLANET-2944](https://jira.greenpeace.org/browse/PLANET-2944) - Author bios disappeared from every site except handbook
* [PLANET-2942](https://jira.greenpeace.org/browse/PLANET-2942) - Articles block: load more button - featured image misaligned

## 1.34.0 - 2018-11-21

### Features

* [PLANET-2903](https://jira.greenpeace.org/browse/PLANET-2903) - RTL: Lang switcher is off on mobile
* [PLANET-2559](https://jira.greenpeace.org/browse/PLANET-2559) - Articles block: change Read More button to Load More

### Bug Fixes

* [PLANET-2846](https://jira.greenpeace.org/browse/PLANET-2846) - Media: Upload from GPI Media Library button not working
* [PLANET-2891](https://jira.greenpeace.org/browse/PLANET-2891) - Download button display bug
* [PLANET-2873](https://jira.greenpeace.org/browse/PLANET-2873) - Articles block in tag pages: wrong URL in the `read more` button
* [PLANET-2822](https://jira.greenpeace.org/browse/PLANET-2822) - Refined results missing posts
* [PLANET-2637](https://jira.greenpeace.org/browse/PLANET-2637) - Author Profile: missing posts
* [PLANET-2395](https://jira.greenpeace.org/browse/PLANET-2395) - Tasks block: hover behaviour when using multiple blocks
* [PLANET-2189](https://jira.greenpeace.org/browse/PLANET-2189) - Search: `Apply filters` button is off centre

## 1.33.0 - 2018-11-14

### Features

* [PLANET-2886](https://jira.greenpeace.org/browse/PLANET-2886) - Show default post thumbnail for missing post image on Page type page
* [PLANET-2890](https://jira.greenpeace.org/browse/PLANET-2890) - Regular updates: Akismet to 4.1 and Stateless to 2.1.9
* [PLANET-2882](https://jira.greenpeace.org/browse/PLANET-2882) - NavMenu: Change url of link for Hungary
* [PLANET-2810](https://jira.greenpeace.org/browse/PLANET-2810) - Search results: paragraph font should be lora
* [PLANET-2611](https://jira.greenpeace.org/browse/PLANET-2611) - Media block: delete

### Bug Fixes

* [PLANET-2874](https://jira.greenpeace.org/browse/PLANET-2874) - Blocks: design broken in the backend
* [PLANET-2776](https://jira.greenpeace.org/browse/PLANET-2776) - Sound player prevents from scrolling
* [PLANET-2739](https://jira.greenpeace.org/browse/PLANET-2739) - Fix Carousel Controller for php7.2
* [PLANET-2820](https://jira.greenpeace.org/browse/PLANET-2820) - Author Override does not match
* [PLANET-2573](https://jira.greenpeace.org/browse/PLANET-2573) - Post: Take Action card issue

## 1.32.0 - 2018-11-07

### Features

* [PLANET-2840](https://jira.greenpeace.org/browse/PLANET-2840) - Update language template files for master theme
* [PLANET-2834](https://jira.greenpeace.org/browse/PLANET-2834) - Add 'Luxembourg \(Deutsch\)' to country selector
* [PLANET-2821](https://jira.greenpeace.org/browse/PLANET-2821) - Remove "Page Types" string from page title on Page Types pages
* [PLANET-2731](https://jira.greenpeace.org/browse/PLANET-2731) - Adjust all PHPCS linting errors
* [PLANET-2636](https://jira.greenpeace.org/browse/PLANET-2636) - User Profile: allow for HTML in bio

### Bug Fixes

* [PLANET-2808](https://jira.greenpeace.org/browse/PLANET-2808) - Date format in shown articles block not following site's settings
* [PLANET-2726](https://jira.greenpeace.org/browse/PLANET-2726) - String translation: Comments 
* [PLANET-2819](https://jira.greenpeace.org/browse/PLANET-2819) - Author URL
* [PLANET-2650](https://jira.greenpeace.org/browse/PLANET-2650) - Media: Upload from GPI Media Library button not working in all situations
* [PLANET-2638](https://jira.greenpeace.org/browse/PLANET-2638) - Pages: Images cut on small screens
* [PLANET-2523](https://jira.greenpeace.org/browse/PLANET-2523) - Menu: fix typo in Slovakia
* [PLANET-2505](https://jira.greenpeace.org/browse/PLANET-2505) - String translation: 'Search' on 404 page
* [PLANET-2494](https://jira.greenpeace.org/browse/PLANET-2494) - Social Share: Facebook exerpt getting cut if there are special characters
* [PLANET-2172](https://jira.greenpeace.org/browse/PLANET-2172) - Pages: Images not resizing on mobile
* [PLANET-2193](https://jira.greenpeace.org/browse/PLANET-2193) - Media Library: Search not working in List view

## 1.31.0 - 2018-10-30

### Features

* [PLANET-2729](https://jira.greenpeace.org/browse/PLANET-2729) - Update to Timber 1.8.1
* [PLANET-2816](https://jira.greenpeace.org/browse/PLANET-2816) - Regular updates: SearchWP to 2.9.17, wordfence to 7.1.6
* [PLANET-2614](https://jira.greenpeace.org/browse/PLANET-2614) - Refined results page
* [PLANET-2616](https://jira.greenpeace.org/browse/PLANET-2616) - Add radio button styles
* [PLANET-2476](https://jira.greenpeace.org/browse/PLANET-2476) - Meta Data: allow for editable fields
* [PLANET-2472](https://jira.greenpeace.org/browse/PLANET-2472) - Youtube Video block: Expand functionality to include GP Media Library videos

### Bug Fixes

* [PLANET-2798](https://jira.greenpeace.org/browse/PLANET-2798) - Link colour
* [PLANET-2777](https://jira.greenpeace.org/browse/PLANET-2777) - In Plugins usage report, rename "Covers" to "Take action Covers" and add the new "Covers"
* [PLANET-2758](https://jira.greenpeace.org/browse/PLANET-2758) - Wrong link in 'Read more' button in tag pages - multilingual sites
* [PLANET-2749](https://jira.greenpeace.org/browse/PLANET-2749) - Cookies: Block not functioning properly
* [PLANET-2604](https://jira.greenpeace.org/browse/PLANET-2604) - Media Library: upload button
* [PLANET-2588](https://jira.greenpeace.org/browse/PLANET-2588) - Content 4 Column block: style fixes
* [PLANET-2506](https://jira.greenpeace.org/browse/PLANET-2506) - Media Library: Sometimes the loading image gets disapear on image search
* [PLANET-2417](https://jira.greenpeace.org/browse/PLANET-2417) - Page: Background image

## 1.30.0 - 2018-10-16

### Features

* [PLANET-2737](https://jira.greenpeace.org/browse/PLANET-2737) - Fix master-theme error: in\_array\(\) expects parameter 2 to be array, null given
* [PLANET-2481](https://jira.greenpeace.org/browse/PLANET-2481) - Covers Block: create new

### Bug Fixes

* [PLANET-2755](https://jira.greenpeace.org/browse/PLANET-2755) - Fix Submenu icon
* [PLANET-2332](https://jira.greenpeace.org/browse/PLANET-2332) - Cookies: text not adjusting

## 1.29.0 - 2018-10-10

### Features

* [PLANET-2615](https://jira.greenpeace.org/browse/PLANET-2615) - Tidy up buttons
* [PLANET-2517](https://jira.greenpeace.org/browse/PLANET-2517) - Investigate how the creation of the style.css \(and javascript files\) can be done in the plugin instead of composer
* [PLANET-2513](https://jira.greenpeace.org/browse/PLANET-2513) - Search: Remove grey slug from results
* [PLANET-2156](https://jira.greenpeace.org/browse/PLANET-2156) - Send user form data \(frontend\) to engaging networks api

### Bug Fixes

* [PLANET-2654](https://jira.greenpeace.org/browse/PLANET-2654) - Unify breadcrumbs styling
* [PLANET-2647](https://jira.greenpeace.org/browse/PLANET-2647) - Search page: Zero results typo
* [PLANET-2632](https://jira.greenpeace.org/browse/PLANET-2632) - Posts: dateline style
* [PLANET-2625](https://jira.greenpeace.org/browse/PLANET-2625) - Articles block: URL from search results breaks the block
* [PLANET-2612](https://jira.greenpeace.org/browse/PLANET-2612) - Articles block: manual override functionality

## 1.28.0 - 2018-09-11

### Features

* [PLANET-2607](https://jira.greenpeace.org/browse/PLANET-2607) - FB Instant Articles: Enable
* [PLANET-2526](https://jira.greenpeace.org/browse/PLANET-2526) - Create JavaScript code to extract \#Tags in DOM
* [PLANET-2441](https://jira.greenpeace.org/browse/PLANET-2441) - Author: Enable link to profile page
* [PLANET-2430](https://jira.greenpeace.org/browse/PLANET-2430) - Tag page: fix UI
* [PLANET-2368](https://jira.greenpeace.org/browse/PLANET-2368) - Author: Create profile page

### Bug Fixes

* [PLANET-2628](https://jira.greenpeace.org/browse/PLANET-2628) - Regular updates: SearchWP to 2.9.15 and Redirection 3.4.1
* [PLANET-2606](https://jira.greenpeace.org/browse/PLANET-2606) - Enable the correct plugin-blocks report
* [PLANET-2602](https://jira.greenpeace.org/browse/PLANET-2602) - Post: Image gallery style
* [PLANET-2554](https://jira.greenpeace.org/browse/PLANET-2554) - Submenu: 'Back to top' in Default template

## 1.27.0 - 2018-09-04

### Features

* [PLANET-2537](https://jira.greenpeace.org/browse/PLANET-2537) - Standard updates: WPML to 4.06
* [PLANET-2446](https://jira.greenpeace.org/browse/PLANET-2446) - Media: create Attachment Details panel
* [PLANET-2411](https://jira.greenpeace.org/browse/PLANET-2411) - Handbook: Make navigation responsive
* [PLANET-2304](https://jira.greenpeace.org/browse/PLANET-2304) - Media: add additional fields to Attachment Details panel

### Bug Fixes

* [PLANET-2590](https://jira.greenpeace.org/browse/PLANET-2590) - Tasks block: Description should allow html
* [PLANET-2581](https://jira.greenpeace.org/browse/PLANET-2581) - PHP Notice: Master theme github issue 551
* [PLANET-2532](https://jira.greenpeace.org/browse/PLANET-2532) - Search: 5th story auto-opening
* [PLANET-2491](https://jira.greenpeace.org/browse/PLANET-2491) - Content four column: should load all content
* [PLANET-2084](https://jira.greenpeace.org/browse/PLANET-2084) - Tasks block: not displaying photos correctly

## 1.26.0 - 2018-08-28

### Features

* [PLANET-2571](https://jira.greenpeace.org/browse/PLANET-2571) - Add dns-prefetch for happy-point form
* [PLANET-2570](https://jira.greenpeace.org/browse/PLANET-2570) - Standard updates: Wordfence to 7.1.11
* [PLANET-2546](https://jira.greenpeace.org/browse/PLANET-2546) - Submenu block: apply missing style elements
* [PLANET-2550](https://jira.greenpeace.org/browse/PLANET-2550) - Articles block: Improve webbie UI
* [PLANET-2341](https://jira.greenpeace.org/browse/PLANET-2341) - Change teal color on search

### Bug Fixes

* [PLANET-2556](https://jira.greenpeace.org/browse/PLANET-2556) - Search: bar misaligned 
* [PLANET-2552](https://jira.greenpeace.org/browse/PLANET-2552) - The happy point has shifted down and is no longer fully visible
* [PLANET-2388](https://jira.greenpeace.org/browse/PLANET-2388) - Page type: special characters encoded
* [PLANET-2369](https://jira.greenpeace.org/browse/PLANET-2369) - Evergreen template: background color

## 1.25.0 - 2018-08-14

### Features

* [PLANET-2538](https://jira.greenpeace.org/browse/PLANET-2538) - Standard updates: Wordpress to 4.9.8 and Wordfence to 7.1.10 , stateles to 2.17
* [PLANET-2510](https://jira.greenpeace.org/browse/PLANET-2510) - Articles block: Add description
* [PLANET-2473](https://jira.greenpeace.org/browse/PLANET-2473) - GPEU: Change donate button string to 'Contact Us'
* [PLANET-2457](https://jira.greenpeace.org/browse/PLANET-2457) - Consistency: clean up
* [PLANET-2438](https://jira.greenpeace.org/browse/PLANET-2438) - Search: Tighten spacing 
* [PLANET-2412](https://jira.greenpeace.org/browse/PLANET-2412) - Articles block: Add override
* [PLANET-2080](https://jira.greenpeace.org/browse/PLANET-2080) - Pages: Back to top functionality

### Bug Fixes

* [PLANET-2531](https://jira.greenpeace.org/browse/PLANET-2531) - Articles block: button moved
* [PLANET-2528](https://jira.greenpeace.org/browse/PLANET-2528) - Tasks Block: fix colour on Mobile
* [PLANET-2527](https://jira.greenpeace.org/browse/PLANET-2527) - Tasks Block: font
* [PLANET-2520](https://jira.greenpeace.org/browse/PLANET-2520) - Strings for screen readers not translatable
* [PLANET-2471](https://jira.greenpeace.org/browse/PLANET-2471) - Default template: image alignment
* [PLANET-2454](https://jira.greenpeace.org/browse/PLANET-2454) - Static Four Column: font
* [PLANET-2453](https://jira.greenpeace.org/browse/PLANET-2453) - Campaign Thumbnail: font
* [PLANET-2375](https://jira.greenpeace.org/browse/PLANET-2375) - Posts: word 'comments' not displayed
* [PLANET-2358](https://jira.greenpeace.org/browse/PLANET-2358) - Happy point: image stretched
* [PLANET-2351](https://jira.greenpeace.org/browse/PLANET-2351) - Footer: spacing issue

## 1.24.0 - 2018-07-23

### Features

* [PLANET-2450](https://jira.greenpeace.org/browse/PLANET-2450) - GTM: Investigate why script not loading when 'Enforce Cookies' is enabled
* [PLANET-2429](https://jira.greenpeace.org/browse/PLANET-2429) - GPI Media Library: add credit to alt field
* [PLANET-2426](https://jira.greenpeace.org/browse/PLANET-2426) - Covers block: should use smaller image size

### Bug Fixes

* [PLANET-2490](https://jira.greenpeace.org/browse/PLANET-2490) - Breadcrumb: design broken
* [PLANET-2398](https://jira.greenpeace.org/browse/PLANET-2398) - Posts: Photo caption pulled as excerpt

## 1.23.0 - 2018-07-16

### Features

* [PLANET-2462](https://jira.greenpeace.org/browse/PLANET-2462) - Upgrade to Wordpress 4.9.7
* [PLANET-2456](https://jira.greenpeace.org/browse/PLANET-2456) - Country selector: add MENA
* [PLANET-2436](https://jira.greenpeace.org/browse/PLANET-2436) - Sitemap.xml: re-add
* [PLANET-2413](https://jira.greenpeace.org/browse/PLANET-2413) - Add gp Media Library option in images selection in blocks- part 2
* [PLANET-2318](https://jira.greenpeace.org/browse/PLANET-2318) - Separation of master-theme and plugin-blocks: Move css to the plugin
* [PLANET-2167](https://jira.greenpeace.org/browse/PLANET-2167) - Add gp Media Library option in images selection in blocks
* [PLANET-2150](https://jira.greenpeace.org/browse/PLANET-2150) - Make the shortcode use as input the fields it should use
* [PLANET-2149](https://jira.greenpeace.org/browse/PLANET-2149) - Register a new shortcode for engaging networks forms

### Bug Fixes

* [PLANET-2434](https://jira.greenpeace.org/browse/PLANET-2434) - Default template: image alignment
* [PLANET-2416](https://jira.greenpeace.org/browse/PLANET-2416) - Four Column block: Featured image thumbnail not autoscaling
* [PLANET-2418](https://jira.greenpeace.org/browse/PLANET-2418) - Tasks block: buttons misaligned on Mobile
* [PLANET-2390](https://jira.greenpeace.org/browse/PLANET-2390) - Carousel header: Throws error when only one image used
* [PLANET-2356](https://jira.greenpeace.org/browse/PLANET-2356) - Articles block: Featured image thumbnail not autoscaling
* [PLANET-2353](https://jira.greenpeace.org/browse/PLANET-2353) - Carousel: Images not resizing on mobile

## 1.22.0 - 2018-07-02

### Features

* [PLANET-2408](https://jira.greenpeace.org/browse/PLANET-2408) - Implement security patch for unpatched WP security issue \(June 2018\)
* [PLANET-2377](https://jira.greenpeace.org/browse/PLANET-2377) - Ol, ul, td's should be Lora
* [PLANET-2162](https://jira.greenpeace.org/browse/PLANET-2162) - Articles block: move read more button
* [PLANET-2246](https://jira.greenpeace.org/browse/PLANET-2246) - GPI Media Library UX: Move Loading symbol to the top of the panel
* [PLANET-2387](https://jira.greenpeace.org/browse/PLANET-2387) - Open Graph Markup: edit Twitter card

### Bug Fixes

* [PLANET-2394](https://jira.greenpeace.org/browse/PLANET-2394) - Fix google login cookie hook parameters
* [PLANET-2399](https://jira.greenpeace.org/browse/PLANET-2399) - Take action cards: card modifies height when hovering over on desktop
* [PLANET-2386](https://jira.greenpeace.org/browse/PLANET-2386) - Submenu block: not displaying special characters properly
* [PLANET-2350](https://jira.greenpeace.org/browse/PLANET-2350) - Netherlands site: Tag pages don't include the publications block
* [PLANET-1977](https://jira.greenpeace.org/browse/PLANET-1977) - Greek site: Opening PDF documents redirects to Act page
* [PLANET-2245](https://jira.greenpeace.org/browse/PLANET-2245) - Media Library Integration: Alt tag not pre-filled on Page

## 1.21.0 - 2018-06-25

### Features

* [PLANET-2385](https://jira.greenpeace.org/browse/PLANET-2385) - Fix google login cookie hook
* [PLANET-2373](https://jira.greenpeace.org/browse/PLANET-2373) - Modify GP Media Library API address
* [PLANET-2347](https://jira.greenpeace.org/browse/PLANET-2347) - Apply solution for better image compression to master theme
* [PLANET-2327](https://jira.greenpeace.org/browse/PLANET-2327) - Remove clouds background from master theme
* [PLANET-2328](https://jira.greenpeace.org/browse/PLANET-2328) - Make background image on home page smaller
* [PLANET-2312](https://jira.greenpeace.org/browse/PLANET-2312) - Search results: remove border radius on search results page
* [PLANET-2260](https://jira.greenpeace.org/browse/PLANET-2260) - Change Search icon color
* [PLANET-2261](https://jira.greenpeace.org/browse/PLANET-2261) - Take Action Tasks Block: Change number color
* [PLANET-2128](https://jira.greenpeace.org/browse/PLANET-2128) - Handbook: h tags should be Roboto

### Bug Fixes

* [PLANET-2378](https://jira.greenpeace.org/browse/PLANET-2378) - Tasks block: Button alignment
* [PLANET-2372](https://jira.greenpeace.org/browse/PLANET-2372) - Clicking on PageType on specific languages leads to search in both languages
* [PLANET-2355](https://jira.greenpeace.org/browse/PLANET-2355) - Tasks: Cursor as hand on hover
* [PLANET-2317](https://jira.greenpeace.org/browse/PLANET-2317) - Carousel: image height on mobile
* [PLANET-2314](https://jira.greenpeace.org/browse/PLANET-2314) - Category link not clickable in articles block
* [PLANET-2207](https://jira.greenpeace.org/browse/PLANET-2207) - Featured images: missing
* [PLANET-2087](https://jira.greenpeace.org/browse/PLANET-2087) - Instagram embed: not pulling description on front end
* [PLANET-2083](https://jira.greenpeace.org/browse/PLANET-2083) - Static Four Column Details: title not available on front end

## 1.20.0 - 2018-06-13

### Features

* [PLANET-2338](https://jira.greenpeace.org/browse/PLANET-2338) - remove document icon from search result PDFs
* [PLANET-2337](https://jira.greenpeace.org/browse/PLANET-2337) - Change colors of fly out menu on mobile
* [PLANET-2326](https://jira.greenpeace.org/browse/PLANET-2326) - 4 column block: change link colors
* [PLANET-2263](https://jira.greenpeace.org/browse/PLANET-2263) - Posts: Change background colour
* [PLANET-2262](https://jira.greenpeace.org/browse/PLANET-2262) - Change comment box colors
* [PLANET-2274](https://jira.greenpeace.org/browse/PLANET-2274) - Remove demo page from Media library plugin
* [PLANET-2258](https://jira.greenpeace.org/browse/PLANET-2258) - Change Navigation colors
* [PLANET-1719](https://jira.greenpeace.org/browse/PLANET-1719) - On Home: the hit area of prev/next buttons on the normal carousel is too large
* [PLANET-1835](https://jira.greenpeace.org/browse/PLANET-1835) - Differentiate backend from front end translatable messages
* [PLANET-1554](https://jira.greenpeace.org/browse/PLANET-1554) - add Adobe PDF icon to CSS

### Bug Fixes

* [PLANET-2305](https://jira.greenpeace.org/browse/PLANET-2305) - PHP warning in planet4-plugin-blocks
* [PLANET-2176](https://jira.greenpeace.org/browse/PLANET-2176) - Campaign Thumbnail: image height

## 1.19.0 - 2018-06-06

### Features

* [PLANET-2240](https://jira.greenpeace.org/browse/PLANET-2240) - Disable cookies in the frontend until user consent
* [PLANET-2236](https://jira.greenpeace.org/browse/PLANET-2236) - Privacy cookie: Make it expire after 1 year from acceptance
* [PLANET-2224](https://jira.greenpeace.org/browse/PLANET-2224) - Happy Point: Add a field for iframe override
* [PLANET-2210](https://jira.greenpeace.org/browse/PLANET-2210) - Navigation bar: Change NZ redirector to www.greenpeace.org/new-zealand
* [PLANET-2216](https://jira.greenpeace.org/browse/PLANET-2216) - Checkbox styling
* [PLANET-2311](https://jira.greenpeace.org/browse/PLANET-2311) - Author override not working for media pages
* [PLANET-2307](https://jira.greenpeace.org/browse/PLANET-2307) - Block: Split two column does not generate srcset
* [PLANET-2222](https://jira.greenpeace.org/browse/PLANET-2222) - Minify child theme css
* [PLANET-2220](https://jira.greenpeace.org/browse/PLANET-2220) - Cookies: User Story
* [PLANET-2219](https://jira.greenpeace.org/browse/PLANET-2219) - Cookies: Web Editor Story
* [PLANET-2257](https://jira.greenpeace.org/browse/PLANET-2257) - Multilanguage Option: Change pipe to slash
* [PLANET-2229](https://jira.greenpeace.org/browse/PLANET-2229) - Multilingual: Theme functionality that selects content should only select content of the current language
* [PLANET-2192](https://jira.greenpeace.org/browse/PLANET-2192) - Social Share: Adapt to NZ

### Bug Fixes

* [PLANET-2272](https://jira.greenpeace.org/browse/PLANET-2272) - Editors not able to take over when posts being edited
* [PLANET-2194](https://jira.greenpeace.org/browse/PLANET-2194) - Search: Special characters are appearing encoded
* [PLANET-2182](https://jira.greenpeace.org/browse/PLANET-2182) - Carousel: image height
* [PLANET-2016](https://jira.greenpeace.org/browse/PLANET-2016) - Post page: URLs cut on mobile

## 1.18.0 - 2018-05-21

### Features

* [PLANET-2223](https://jira.greenpeace.org/browse/PLANET-2223) - Add the copyright symbol automatically to the credit in images
* [PLANET-2228](https://jira.greenpeace.org/browse/PLANET-2228) - Upgrade wordpress to v4.9.6 and searchWP to v2.9.13
* [PLANET-2191](https://jira.greenpeace.org/browse/PLANET-2191) - Sitemap: Returns error if there are no evergreen pages
* [PLANET-2127](https://jira.greenpeace.org/browse/PLANET-2127) - Submenu Block: Add z-index
* [PLANET-2146](https://jira.greenpeace.org/browse/PLANET-2146) - Move language switcher to header \(from footer\)

### Bug Fixes

* [PLANET-2226](https://jira.greenpeace.org/browse/PLANET-2226) - Change popper js version
* [PLANET-2187](https://jira.greenpeace.org/browse/PLANET-2187) - Articles block: tags assigned to Page are not being picked up 
* [PLANET-2178](https://jira.greenpeace.org/browse/PLANET-2178) - Submenu block: anchored header appears behind menu
* [PLANET-2183](https://jira.greenpeace.org/browse/PLANET-2183) - Carousel: caption alignment
* [PLANET-2179](https://jira.greenpeace.org/browse/PLANET-2179) - Social Share: Facebook encoding special characters
* [PLANET-2181](https://jira.greenpeace.org/browse/PLANET-2181) - Social Share: Twitter fails on Chrome
* [PLANET-2180](https://jira.greenpeace.org/browse/PLANET-2180) - Social Share: Facebook cutting on exerpt

## 1.17.0 - 2018-05-14

### Features

* [PLANET-2161](https://jira.greenpeace.org/browse/PLANET-2161) - Start using CDNJS libraries
* [PLANET-2130](https://jira.greenpeace.org/browse/PLANET-2130) - Happy Point: put default bg image in Admin Settings
* [PLANET-1661](https://jira.greenpeace.org/browse/PLANET-1661) - Workflow: export revision data
* [PLANET-2126](https://jira.greenpeace.org/browse/PLANET-2126) - Submenu Block: Remove border radius and reduce padding

### Bug Fixes

* [PLANET-2169](https://jira.greenpeace.org/browse/PLANET-2169) - Articles block: Special characters are appearing encoded
* [PLANET-2184](https://jira.greenpeace.org/browse/PLANET-2184) - Campaign block: Special characters are appearing encoded
* [PLANET-2168](https://jira.greenpeace.org/browse/PLANET-2168) - Navigation: Donate button misaligned
* [PLANET-2133](https://jira.greenpeace.org/browse/PLANET-2133) - Content 4 Column: default display on Tag page

## 1.16.0 - 2018-05-07

### Features

* [PLANET-2100](https://jira.greenpeace.org/browse/PLANET-2100) - vertical spacing on publications block
* [PLANET-2120](https://jira.greenpeace.org/browse/PLANET-2120) - Posts: Remove Gradient
* [PLANET-2049](https://jira.greenpeace.org/browse/PLANET-2049) - Navigation: fix spacing as designed
* [PLANET-1506](https://jira.greenpeace.org/browse/PLANET-1506) - Accessibility Review - Links texts social media icons
* [PLANET-1505](https://jira.greenpeace.org/browse/PLANET-1505) - Accessibility Review - Add  Skiplink

### Bug Fixes

* [PLANET-2091](https://jira.greenpeace.org/browse/PLANET-2091) - Take action card not scrolling all the way down
* [PLANET-2086](https://jira.greenpeace.org/browse/PLANET-2086) - Embedded content not having the same width on front end 

## 1.15.0 - 2018-04-30

### Features

* [PLANET-2043](https://jira.greenpeace.org/browse/PLANET-2043) - Remove border radius from buttons
* [PLANET-2095](https://jira.greenpeace.org/browse/PLANET-2095) - Settings: Take Action Covers default button text
* [PLANET-2050](https://jira.greenpeace.org/browse/PLANET-2050) - Block: Submenu . Backend Advanced fields
* [PLANET-2051](https://jira.greenpeace.org/browse/PLANET-2051) - Block: Submenu . Frontend implementation of Advanced fields
* [PLANET-2093](https://jira.greenpeace.org/browse/PLANET-2093) - Upgrade to font-awesome 5

### Bug Fixes

* [PLANET-2099](https://jira.greenpeace.org/browse/PLANET-2099) - Images: Caption style has gone wrong on Posts
* [PLANET-2098](https://jira.greenpeace.org/browse/PLANET-2098) - Covers block: Load More button missing on Tag Page
* [PLANET-2090](https://jira.greenpeace.org/browse/PLANET-2090) - Split two column block: Special characters in Tag name is encoded
* [PLANET-2037](https://jira.greenpeace.org/browse/PLANET-2037) - Happy Point: fields not loading when block is visible on page

## 1.14.0 - 2018-04-23

### Features

* [PLANET-2075](https://jira.greenpeace.org/browse/PLANET-2075) - Frontend design implementation of Initial Sub menu
* [PLANET-2052](https://jira.greenpeace.org/browse/PLANET-2052) - Site Map: implement designs
* [PLANET-1941](https://jira.greenpeace.org/browse/PLANET-1941) - Site Map: Investigate Build
* [PLANET-1943](https://jira.greenpeace.org/browse/PLANET-1943) - Sub Menu: Initial simple approach
* [PLANET-2055](https://jira.greenpeace.org/browse/PLANET-2055) - Comments: Do not count comments of the type "ping" for the title
* [PLANET-1695](https://jira.greenpeace.org/browse/PLANET-1695) - Post Commenting: implement design changes
* [PLANET-2067](https://jira.greenpeace.org/browse/PLANET-2067) - Make WPML not to break p4 settings

### Bug Fixes

* [PLANET-2056](https://jira.greenpeace.org/browse/PLANET-2056) - Happy Point: iframe cut off on Tablet

## 1.13.0 - 2018-04-12

### Features

* [PLANET-2012](https://jira.greenpeace.org/browse/PLANET-2012) - Install wordfence
* [PLANET-1987](https://jira.greenpeace.org/browse/PLANET-1987) - Content Four Column block: Make Responsive
* [PLANET-1709](https://jira.greenpeace.org/browse/PLANET-1709) - Comments: change placeholder text color
* [PLANET-1997](https://jira.greenpeace.org/browse/PLANET-1997) - Two Column Block: Fix button alignment
* [PLANET-1916](https://jira.greenpeace.org/browse/PLANET-1916) - 4 Column block: default results
* [PLANET-1998](https://jira.greenpeace.org/browse/PLANET-1998) - Task Block: Fix Button Alignment
* [PLANET-2045](https://jira.greenpeace.org/browse/PLANET-2045) - Fix warnings and notices on master-theme and plugin-blocks
* [PLANET-1974](https://jira.greenpeace.org/browse/PLANET-1974) - 4 Column Block: Editor Workflow
* [PLANET-1947](https://jira.greenpeace.org/browse/PLANET-1947) - Reduce loading time: Optimize CSS delivery
* [PLANET-1946](https://jira.greenpeace.org/browse/PLANET-1946) - Reduce loading time: Minify JS sources

### Bug Fixes

* [PLANET-2054](https://jira.greenpeace.org/browse/PLANET-2054) - Tasks block: Not responsive on Dev
* [PLANET-2029](https://jira.greenpeace.org/browse/PLANET-2029) - Happy Point: image not resizing
* [PLANET-1593](https://jira.greenpeace.org/browse/PLANET-1593) - Cookie warning: Make sure it does not cover part of the content/footer

## 1.12.0 - 2018-04-03

### Features

* [PLANET-1986](https://jira.greenpeace.org/browse/PLANET-1986) - P4-settings: Create a field for the default p4-pagetype
* [PLANET-1936](https://jira.greenpeace.org/browse/PLANET-1936) - Block: HappyPoint should be using the srcset images
* [PLANET-1996](https://jira.greenpeace.org/browse/PLANET-1996) - Make the happy  point iFrame load only when the visitor scrolls there
* [PLANET-2013](https://jira.greenpeace.org/browse/PLANET-2013) - BUG: press center doesnt show press releases
* [PLANET-1932](https://jira.greenpeace.org/browse/PLANET-1932) - Evergreen page: Header description should allow linebreaks

### Bug Fixes

* [PLANET-1990](https://jira.greenpeace.org/browse/PLANET-1990) - Carousel Header: poor button alignment
* [PLANET-1989](https://jira.greenpeace.org/browse/PLANET-1989) - Covers block: the number of rows selected is the other way around.
* [PLANET-1982](https://jira.greenpeace.org/browse/PLANET-1982) - Footer: make social icons responsive
* [PLANET-1945](https://jira.greenpeace.org/browse/PLANET-1945) - Carousel: caption cut off

## 1.11.0 - 2018-03-28

### Features

* [PLANET-1868](https://jira.greenpeace.org/browse/PLANET-1868) - Static Four Column block: Make Responsive
* [PLANET-1708](https://jira.greenpeace.org/browse/PLANET-1708) - Footer: change background and link color
* [PLANET-1940](https://jira.greenpeace.org/browse/PLANET-1940) - Posts: Add anchor to comments
* [PLANET-1981](https://jira.greenpeace.org/browse/PLANET-1981) - Split Two Column: add an empty default field for Issue dropdown
* [PLANET-1962](https://jira.greenpeace.org/browse/PLANET-1962) - Apply new generic image for 404 and remove specific functionality
* [PLANET-1976](https://jira.greenpeace.org/browse/PLANET-1976) - Remove the planet4 settings that select the different p4\_pagetypes
* [PLANET-1975](https://jira.greenpeace.org/browse/PLANET-1975) - Remove the javascript that syncrhonises pagetypes with categories 
* [PLANET-1805](https://jira.greenpeace.org/browse/PLANET-1805) - Carousel Split: Remove Carousel Split from Insert Post Element panel

### Bug Fixes

* [PLANET-1956](https://jira.greenpeace.org/browse/PLANET-1956) - check iphone breakpoints
* [PLANET-1983](https://jira.greenpeace.org/browse/PLANET-1983) - Search: get rid of strange blue check boxes

## 1.10.0 - 2018-03-26

### Features

* [PLANET-1926](https://jira.greenpeace.org/browse/PLANET-1926) - Carousel Header: does not use the srcset images
* [PLANET-1961](https://jira.greenpeace.org/browse/PLANET-1961) - Settings: Add a "select 404 background image" field
* [PLANET-1963](https://jira.greenpeace.org/browse/PLANET-1963) - Breadcrumps: Switch from matching exact name category=page to smarter criteria
* [PLANET-1933](https://jira.greenpeace.org/browse/PLANET-1933) - Take Action Covers: Editor Workflow
* [PLANET-1772](https://jira.greenpeace.org/browse/PLANET-1772) - Posts: Add Issue to breadcrumb
* [PLANET-1757](https://jira.greenpeace.org/browse/PLANET-1757) - Images: Title should be visible on hover

### Bug Fixes

* [PLANET-1954](https://jira.greenpeace.org/browse/PLANET-1954) - Page Types: are being auto-assigned to Pages
* [PLANET-1924](https://jira.greenpeace.org/browse/PLANET-1924) - Articles block: Featured Image as Portrait needs adjusting
* [PLANET-1823](https://jira.greenpeace.org/browse/PLANET-1823) - Post: Featured Image should auto populate
* [PLANET-1814](https://jira.greenpeace.org/browse/PLANET-1814) - Articles block: Featured images have poor resolution

## 1.9.0 - 2018-03-19

### Features

* [PLANET-1829](https://jira.greenpeace.org/browse/PLANET-1829) - Carousel Header: Swipe left
* [PLANET-1942](https://jira.greenpeace.org/browse/PLANET-1942) - Block: Split two column. Instead of Category, select Issue page
* [PLANET-1921](https://jira.greenpeace.org/browse/PLANET-1921) - Add support for eslint
* [PLANET-1800](https://jira.greenpeace.org/browse/PLANET-1800) - Title in posts should extend full width when card is present.
* [PLANET-1769](https://jira.greenpeace.org/browse/PLANET-1769) - Tasks block: Make mobile header block clickable

### Bug Fixes

* [PLANET-1927](https://jira.greenpeace.org/browse/PLANET-1927) - Carousel: slider not working when more than one
* [PLANET-1928](https://jira.greenpeace.org/browse/PLANET-1928) - Followup - Take action covers on M screens
* [PLANET-1891](https://jira.greenpeace.org/browse/PLANET-1891) - Search: "Most Relevant" and "Most Recent" drop down menu is not translated
* [PLANET-1893](https://jira.greenpeace.org/browse/PLANET-1893) - The word "by" in the articles block is not translated
* [PLANET-1878](https://jira.greenpeace.org/browse/PLANET-1878) - Happy Point: broken on Tag page
* [PLANET-1830](https://jira.greenpeace.org/browse/PLANET-1830) - Carousel Header: S/M devices prevents scrolling
* [PLANET-1704](https://jira.greenpeace.org/browse/PLANET-1704) - Covers: fix Take Action button alignment
* [PLANET-1918](https://jira.greenpeace.org/browse/PLANET-1918) - Post: Image caption wrong placement on S screens
* [PLANET-1861](https://jira.greenpeace.org/browse/PLANET-1861) - Page: Header Description should allow html
* [PLANET-1858](https://jira.greenpeace.org/browse/PLANET-1858) - Cookies Policy reappears every time on ios devices
* [PLANET-1771](https://jira.greenpeace.org/browse/PLANET-1771) - Images: Carousel and Image Media have different behaviours

## 1.8.0 - 2018-03-14

### Features

* [PLANET-1913](https://jira.greenpeace.org/browse/PLANET-1913) - Move all frontend libraries inside the repo
* [PLANET-1883](https://jira.greenpeace.org/browse/PLANET-1883) - Make consistent excerpt link behaviour on Articles block, 4 column block and Search excerpts
* [PLANET-1880](https://jira.greenpeace.org/browse/PLANET-1880) - Font on Greek site: Replace Lora with Noto Sans
* [PLANET-1811](https://jira.greenpeace.org/browse/PLANET-1811) - Handbook: create child theme
* [PLANET-1888](https://jira.greenpeace.org/browse/PLANET-1888) - Posts: apply Open Graph markup
* [PLANET-1874](https://jira.greenpeace.org/browse/PLANET-1874) - 404 Page: adapt to Greece
* [PLANET-1758](https://jira.greenpeace.org/browse/PLANET-1758) - Post: Auto-generate Excerpt

### Bug Fixes

* [PLANET-1878](https://jira.greenpeace.org/browse/PLANET-1878) - Happy Point: broken on Tag page
* [PLANET-1881](https://jira.greenpeace.org/browse/PLANET-1881) - Search page filter checkboxes not visible anymore
* [PLANET-1898](https://jira.greenpeace.org/browse/PLANET-1898) - Post: Carousel scroll not working
* [PLANET-1833](https://jira.greenpeace.org/browse/PLANET-1833) - Ol, ul, td's should be Lora
* [PLANET-1875](https://jira.greenpeace.org/browse/PLANET-1875) - Take action covers load more functionality
* [PLANET-1896](https://jira.greenpeace.org/browse/PLANET-1896) - Action Pages are not included in search results of Greek site
* [PLANET-1770](https://jira.greenpeace.org/browse/PLANET-1770) - Post: apply Carousel style to Image gallery

## 1.7.0 - 2018-03-05

### Features

* [PLANET-1797](https://jira.greenpeace.org/browse/PLANET-1797) - Happy Point: adjust opt-in iframe to allow for more content
* [PLANET-1816](https://jira.greenpeace.org/browse/PLANET-1816) - Take action cover: change button text
* [PLANET-1749](https://jira.greenpeace.org/browse/PLANET-1749) - Tasks block: Adjust number opacity

### Bug Fixes

* [PLANET-1881](https://jira.greenpeace.org/browse/PLANET-1881) - Search page filter checkboxes not visible anymore
* [PLANET-1860](https://jira.greenpeace.org/browse/PLANET-1860) - Tags with 20 characters or more get cut in mobile version
* [PLANET-1831](https://jira.greenpeace.org/browse/PLANET-1831) - Search results Weight not being applied in all cases
* [PLANET-1809](https://jira.greenpeace.org/browse/PLANET-1809) - Post: Take Action box shows only one tag
* [PLANET-1754](https://jira.greenpeace.org/browse/PLANET-1754) - Footer: Copyright logo
* [PLANET-1859](https://jira.greenpeace.org/browse/PLANET-1859) - Incorrect total number of results when filtering by Content Type due to ignoring stemming

## 1.6.0 - 2018-02-28

### Features

* [PLANET-1821](https://jira.greenpeace.org/browse/PLANET-1821) - Post: remove Add Post Element
* [PLANET-1825](https://jira.greenpeace.org/browse/PLANET-1825) - Articles block: default text
* [PLANET-1824](https://jira.greenpeace.org/browse/PLANET-1824) - Page: remove Add Post Element
* [PLANET-1870](https://jira.greenpeace.org/browse/PLANET-1870) - Navigation bar: Default website must be defined per website
* [PLANET-1871](https://jira.greenpeace.org/browse/PLANET-1871) - p4\_pagetype setting: Do not create new if any values exist

### Bug Fixes

* [PLANET-1865](https://jira.greenpeace.org/browse/PLANET-1865) - Block: Split two column. Special characters in issue name get encoded
* [PLANET-1826](https://jira.greenpeace.org/browse/PLANET-1826) - Header Carousel: subheader
* [PLANET-1872](https://jira.greenpeace.org/browse/PLANET-1872) - Fix share buttons GTM tracking code

## 1.5.0 - 2018-02-26

### Features

* [PLANET-1834](https://jira.greenpeace.org/browse/PLANET-1834) - Add Greek keyword stemmer plugin for SearcWP for Greek website
* [PLANET-1818](https://jira.greenpeace.org/browse/PLANET-1818) - Add dataLayer in NEW Social Sharing buttons 
* [PLANET-1784](https://jira.greenpeace.org/browse/PLANET-1784) - Spam filtering: Test Akismet \(RIPPS\) and install it on dev.p4
* [PLANET-1768](https://jira.greenpeace.org/browse/PLANET-1768) - Posts: Related Articles should be related
* [PLANET-1707](https://jira.greenpeace.org/browse/PLANET-1707) - Design Review: Check spacing on all pages
* [PLANET-1820](https://jira.greenpeace.org/browse/PLANET-1820) - Carousel and Carousel Header images too large on desktop
* [PLANET-1751](https://jira.greenpeace.org/browse/PLANET-1751) - Search: Remove other kinds of content when POST filter is active
* [PLANET-1717](https://jira.greenpeace.org/browse/PLANET-1717) - Upgrade to stable bootstrap4 release
* [PLANET-1807](https://jira.greenpeace.org/browse/PLANET-1807) - Update Timber to latest version
* [PLANET-1642](https://jira.greenpeace.org/browse/PLANET-1642) - Editor workflow: Post type

### Bug Fixes

* [PLANET-1866](https://jira.greenpeace.org/browse/PLANET-1866) - Install additional languages in NRO sites
* [PLANET-1586](https://jira.greenpeace.org/browse/PLANET-1586) - Happy point. Image zoom and focus
* [PLANET-1862](https://jira.greenpeace.org/browse/PLANET-1862) - Split two column block: missing issues
* [PLANET-1633](https://jira.greenpeace.org/browse/PLANET-1633) - Take Action covers default results

## 1.4.0 - 2018-02-15

### Features

* [PLANET-1815](https://jira.greenpeace.org/browse/PLANET-1815) - Get rid of wordpress repository - switch to wp core download in composer
* [PLANET-1806](https://jira.greenpeace.org/browse/PLANET-1806) - Create different file for health check
* [PLANET-1697](https://jira.greenpeace.org/browse/PLANET-1697) - Campaign Tag page: remove dot after Issue

### Bug Fixes

* [PLANET-1648](https://jira.greenpeace.org/browse/PLANET-1648) - Search: documents out of alignment
* [PLANET-1596](https://jira.greenpeace.org/browse/PLANET-1596) - Video in post not expanding
* [PLANET-1785](https://jira.greenpeace.org/browse/PLANET-1785) - Post: author block
* [PLANET-1659](https://jira.greenpeace.org/browse/PLANET-1659) - Tasks block: Description font is incorrect
* [PLANET-1740](https://jira.greenpeace.org/browse/PLANET-1740) - Campaign Block: campaign image adjustment
* [PLANET-1739](https://jira.greenpeace.org/browse/PLANET-1739) - 3 column split block: first image runs into the second
* [PLANET-1738](https://jira.greenpeace.org/browse/PLANET-1738) - Content Four Column Block: Image resolution is too low in publications section
* [PLANET-1600](https://jira.greenpeace.org/browse/PLANET-1600) - Search: Filter options with no results should still be displayed

## 1.3.0 - 2018-02-14

### Features

* [PLANET-1619](https://jira.greenpeace.org/browse/PLANET-1619) - Tag page, HappyPoint block: Add field for opacity
* [PLANET-1501](https://jira.greenpeace.org/browse/PLANET-1501) - Posts & Take Action pages: place share button
* [PLANET-1803](https://jira.greenpeace.org/browse/PLANET-1803) - Post: Show tag name on action cards instead of slug
* [PLANET-1804](https://jira.greenpeace.org/browse/PLANET-1804) - Post: Let cover cards adjust height dynamically on mobile
* [PLANET-1802](https://jira.greenpeace.org/browse/PLANET-1802) - Post: Hide covers description from mobile
* [PLANET-1640](https://jira.greenpeace.org/browse/PLANET-1640) - Header Carousel: Limit title to 40 characters

### Bug Fixes

* [PLANET-1780](https://jira.greenpeace.org/browse/PLANET-1780) - Background gradient repeat
* [PLANET-1594](https://jira.greenpeace.org/browse/PLANET-1594) - Carousel header: Moving slides on mobile should work as swipe
* [PLANET-1752](https://jira.greenpeace.org/browse/PLANET-1752) - Search: Draft Posts appearing in results
* [PLANET-1581](https://jira.greenpeace.org/browse/PLANET-1581) - Post: Take Action box alignment
* [PLANET-1763](https://jira.greenpeace.org/browse/PLANET-1763) - Artlcle block: Issue page filter 
* [PLANET-1687](https://jira.greenpeace.org/browse/PLANET-1687) - Carousel block: spacing issue
* [PLANET-1741](https://jira.greenpeace.org/browse/PLANET-1741) - Carousel Header: Button on medium sizes isn't big enough
* [PLANET-1722](https://jira.greenpeace.org/browse/PLANET-1722) - Post: fix iframe spacing

