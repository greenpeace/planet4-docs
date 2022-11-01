---
description: A list of currently used 3rdparty plugins and a policy for future selections
---

# Plugins

You can access the list of Plugins of your P4 instance from your Admin **Dashboard > Plugins**.

{% hint style="warning" %}
DO NOT Enable automatic updates of any plugin. Updates are done via Composer for all P4 sites.
{% endhint %}

Installation and updates of plugins is happening via the composer scripts. All the plugins that are present in all installations are defined in the common [composer file](https://github.com/greenpeace/planet4-base/blob/2bcfbf7c3abd862f88e103b155f6bb282c573dca/composer.json#L155). Additionally, plugins that are installed only on a specific P4 site is defined in the composer file for that site. For example, Loco Translate is only installed on the handbook site, and is defined in the handbook [composer](https://github.com/greenpeace/planet4-handbook/blob/main/composer-local.json) file.

Open source plugins are being pulled from [wpackagist.org](https://wpackagist.org/). To add a plugin, you have to find the correct wpackagist record, copy the line and insert it in the composer file as the loco translate example above.

![](../.gitbook/assets/wpackagist-loco.png)

## The P4 Plugin review process

The philosophy of adding plugins to a Planet 4 website can be summarized in the following:

* WordPress is not inherently unsafe. The vast majority of security or incompatibility issues on WordPress sites come from badly written or not maintained plugins.
* Don’t choose plugins, implement features.

We have described a process that should be followed every time a plugin is considered.

1. Decide on the features you want
2. Investigate if these can be done by WordPress core
3. If not, investigate what 3rd party plugins exist, and a do a functional fit analysis
4. Do a security analysis of the selected plugins, including reputation, maintenance history, and code analysis (see [template](https://docs.google.com/document/d/1p\_WB-Cr-1fnURgkXNZKQk8NUGaBjA5bJSg7wNO5xn2s/edit)). Document this process [for each plugin](https://drive.google.com/drive/u/0/folders/0B54KsE4AZ2G2bXplOHpWak5ROTg?resourcekey=0-AKWHWlZRRvoY6aZ7YpPWBQ).
5. Install them locally or on a test/dev site and do a thorough testing (using both automatic testing and manual testing) to see if they create problems in other areas of Planet 4.
6. Get them installed on the relevant site, by having them being added to the [relevant composer file](https://planet4.greenpeace.org/plugins/#are-you-a-dev-please-read-me).

## Plugins used in all P4 sites

### Akismet Anti-Spam

Akismet is quite possibly the best way in the world to protect your blog from spam. Your site is fully configured and being protected, even while you sleep. More info in [P4 > Settings](http://planet4.greenpeace.org/handbook/admin-setup/).

### CMB2

CMB2 will create metaboxes and forms with custom fields that will blow your mind. More info on the [wp.org plugin page](https://wordpress.org/plugins/cmb2/).

### **GDPR Comments**

Allows administrators to anonymize the IPs of visitors who comment on the website, and retroactively delete the IPs from comments in the database. [Instructions on setup](https://planet4.greenpeace.org/handbook/plugins-gdpr-comments-anonymise-ips-of-comments/).

### Google Apps Login

Simple secure login for WordPress through users’ Google Apps accounts (uses secure OAuth2, and MFA if enabled). More info in [Login to P4](https://planet4.greenpeace.org/handbook/login/) or in the [wp.org plugin page](https://wordpress.org/plugins/google-apps-login/).

### Redirection

Manage all your 301 redirects and monitor 404 errors. More on Redirects on the [wp.org plugin page.](https://wordpress.org/plugins/redirection/)

### Shortcake (Shortcode UI)

User Interface for adding shortcodes. More info on the [wp.org plugin page](https://wordpress.org/plugins/shortcode-ui/).

### Timber

Required by the Planet4 master theme. The WordPress Timber Library allows you to write themes using the power of Twig templates. More info on the [wp.org plugin page](https://wordpress.org/plugins/timber-library/).

### WordFence

Anti-virus, Firewall and Malware Scan. More info on the [wp.org plugin page](https://wordpress.org/plugins/wordfence/).

{% hint style="danger" %}
"Live Traffic" in WordFence conflicts with the Google Apps Login plugin. Do not enable it, otherwise Google Login won’t work.
{% endhint %}

### WP Redis

WordPress Object Cache using Redis. Requires the [PhpRedis extension](https://github.com/phpredis/phpredis). More info on the [wp.org plugin page](https://wordpress.org/plugins/wp-redis/).

### WP-Stateless

Upload and serve your WordPress media files from Google Cloud Storage. More info on the [wp.org plugin page](https://wordpress.org/plugins/wp-stateless/).

## Plugins used in some P4 sites

### WPML

Used in our sites that require more than one language. More info on [Set up a Multi-Language P4 Site](http://planet4.greenpeace.org/handbook/multi-language/) or at [wpml.org](https://wpml.org/).

### Loco Translate

Translate Planet4 themes and plugins directly in WordPress. Used only in this awesome handbook site. More info at [Translate P4 theme, strings (commands) and plugins](http://planet4.greenpeace.org/implement/deploy/translations/) or in the [wp.org plugin page](https://wordpress.org/plugins/loco-translate/).

### IdeaPush

Allows submissions of ideas for feature requests directly in WordPress. Used only in this awesome handbook site. More info at [Improving P4](http://planet4.greenpeace.org/implement/manage/improving-p4/) or in the [wp.org plugin page](https://wordpress.org/plugins/ideapush/).

## Plugins NOT used

### SEO plugins

P4 has no SEO plugin installed or recommended. SEO plugins do a lot of things, some of which are not even things that should be done (eg. trying to "trick" Google into thinking that a page is something different than it is).

We have identified several features that are also being offered by some SEO plugins, such as open graph data (documented at [PLANET-1888](https://jira.greenpeace.org/browse/PLANET-1888) and released in [v1.8](https://jira.greenpeace.org/projects/PLANET/versions/14803)) or write beautiful URLs (using core WP functionality with small taxonomy modifications documented at [PLANET-1879](https://jira.greenpeace.org/browse/PLANET-1879) and released in [v1.9](https://planet4.greenpeace.org/manage/1242/update-v1-9/)).

Our choice of operation is **not** "There is a plugin, let’s install it and see what it does", but “We need feature A, let’s find the best way to deliver its functionality”.
