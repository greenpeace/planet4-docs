---
description: >-
  This document tracks all notable changes to Planet 4 project, introduced on
  each release
---

# Changelog

{% hint style="info" %}
Items with a 🔑 icon are not enabled by default, but instead they are released with an admin option (feature flag) to opt-in.
{% endhint %}

## 2.99.0 - 2023-03-13

### Features

- [PLANET-7087](https://jira.greenpeace.org/browse/PLANET-7087) - Retire old Blocks report and move the new one out of Beta
- [PLANET-7020](https://jira.greenpeace.org/browse/PLANET-7020) - Create a feature toggle to activate the new identity styles
- [PLANET-7012](https://jira.greenpeace.org/browse/PLANET-7012) - Remove jQuery library from main theme
- [PLANET-6989](https://jira.greenpeace.org/browse/PLANET-6989) - Apply the new UI for the share buttons
- [PLANET-6984](https://jira.greenpeace.org/browse/PLANET-6984) - Apply the new grey color to headings + body text 🔑
- [PLANET-6977](https://jira.greenpeace.org/browse/PLANET-6977) - Disable option for WPML footer language switcher

### Bug Fixes

- [PLANET-7094](https://jira.greenpeace.org/browse/PLANET-7094) - Broken hover animation for rounded images in Safari
- [PLANET-7013](https://jira.greenpeace.org/browse/PLANET-7013) - Rounded images are distorted in certain viewports

## 2.98.1 - 2023-02-28

### Features

- [PLANET-7092](https://jira.greenpeace.org/browse/PLANET-7092) - Purge cache on pages that include a form when the form is updated
- [PLANET-7021](https://jira.greenpeace.org/browse/PLANET-7021) - Remove the core colors from the block patterns

### Bug Fixes

- [PLANET-7025](https://jira.greenpeace.org/browse/PLANET-7025) - Covers block "Load more" button text not translated on frontend

## 2.98.0 - 2023-02-20

### Features

- [PLANET-7055](https://jira.greenpeace.org/browse/PLANET-7055) - Integrate Playwright testing framework into our application repositories
- [PLANET-7044](https://jira.greenpeace.org/browse/PLANET-7044) - Create a feature toggle that enables all the IA features
- [PLANET-7005](https://jira.greenpeace.org/browse/PLANET-7005) - Refactor Analytics sidebar option to use native settings panel UI

### Bug Fixes

- [PLANET-7077](https://jira.greenpeace.org/browse/PLANET-7077) - Featured img not picked up / missing when sharing on socials
- [PLANET-7073](https://jira.greenpeace.org/browse/PLANET-7073) - Posts listing page pagination redirects to an article that has a title which starts with the same number
- [PLANET-7041](https://jira.greenpeace.org/browse/PLANET-7041) - Search not working properly in Thai 
- [PLANET-7033](https://jira.greenpeace.org/browse/PLANET-7033) - Lists block: Adding new items with Enter key does not work
- [PLANET-6473](https://jira.greenpeace.org/browse/PLANET-6473) - Checkbox doesn't show focus state

## 2.97.0 - 2023-02-06

### Features

- [PLANET-7029](https://jira.greenpeace.org/browse/PLANET-7029) - Create default Action type: petitions
- [PLANET-6982](https://jira.greenpeace.org/browse/PLANET-6982) - Implement GF plugin translations workflow
- [PLANET-6964](https://jira.greenpeace.org/browse/PLANET-6964) - Remove listing pages background image
- [PLANET-6864](https://jira.greenpeace.org/browse/PLANET-6864) - Implement localization support for js file translatable strings in Master theme

### Bug Fixes

- [PLANET-7056](https://jira.greenpeace.org/browse/PLANET-7056) - Form submissions are not enforced as Ajax

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
