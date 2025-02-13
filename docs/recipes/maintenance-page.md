---
description: Setting up a temporary maintenance page
---

# Maintenance page

## Scope

Sometimes when an NRO wants to do big content or taxonomy changes in their live production website, they prefer to temporarily set it in a "maintenance mode". In that scenario, non-logged-in visitors will see a static page explaining the website is temporarily unavailable, while editors will still be able to make changes and preview them.

<figure><img src="../.gitbook/assets/Screenshot from 2023-09-05 13-10-20.png" alt=""><figcaption><p>maintenance page final look</p></figcaption></figure>

## Plugin installation

There is [a plugin](https://wordpress.org/plugins/maintenance/) that seems to fulfill all the requirements for this task.Although it has a paid version, the free tier seems sufficient for our needs. The plugin should be installed and activated temporarily only in the website that is needed. To install the plugin we just need to adjust `composer-local.json` in the website deployment repository.

```json
"wpackagist-plugin/maintenance": "4.*"
```

Then create a new tag to trigger a new production deployment.

## Configuration

To start configuring the plugin, we need to activate it from the Plugins list in the Admin Panel. On activation, the maintenance page is activated, so we should activate the plugin only when ready to switch the website in maintenance mode.

Below are the various options we need to change in the plugin configuration page.

### Content

* Page Title: Temporarily unavailable
* Headline: Temporarily unavailable
* Description: Scheduled maintenance in progress…
* Footer Text: _none_
* Enable Frontend Login: Disable

### Design

* Logo: _none - (since the background image below already has “Greenpeace”)_
* Background Image: _Import and use_ [_GP02FYX_](https://media.greenpeace.org/Detail/27MZIFITF920) _from Media Archive._
* Font Family: Source Sans Pro
* Apply Background Blur: Enable _(for slightly better readability)_
* Set Blur Intensity: 2

### Advanced Settings

* 503 Response Code: Enable _(for SEO reasons)_
* CSS Code:

```css
.logo-box {
  display: none;
}

.site-content .description p {
  font-size: 1rem;
}
```

## Reverting

Once everything is done from the NRO, de-activating the plugin is enough to disable the maintenance page.

After confirming that everything looks good, the plugin should also be removed from the website `composer-local.json` file so it’s being removed in the next release.\


\
\
