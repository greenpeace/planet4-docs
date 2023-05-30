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

![](<../.gitbook/assets/wpackagist-loco (1).png>)

## Policy & review process

The philosophy of adding plugins to a Planet 4 website can be summarized in the following:

* WordPress is not inherently unsafe. **The vast majority of security or incompatibility issues on WordPress sites come from badly written or not maintained plugins.**
* [Don’t choose plugins, implement features](https://en.wikipedia.org/wiki/XY\_problem).

We have described a process that should be followed every time a plugin is considered to be included in Planet 4:

1. Decide on the features you want
2. Investigate if these can be done by WordPress core
3. If not, investigate what 3rd party plugins exist, and a do a functional fit analysis
4. Do a security analysis of the selected plugins, including reputation, maintenance history, and code analysis (see [template](https://docs.google.com/document/d/1p\_WB-Cr-1fnURgkXNZKQk8NUGaBjA5bJSg7wNO5xn2s/edit)). Document this process [for each plugin](https://drive.google.com/drive/folders/15G7jyR51EZx2liWhDX\_UjRK8EIm517p9).
5. Install them locally or on a test/dev site and do a thorough testing (using both automatic testing and manual testing) to see if they create problems in other areas of Planet 4.
6. Get them installed on the relevant site, by having them being added to the relevant composer file.

## Best practices

This is a collection of best practices we gathered through the years of developing Planet 4 themes and plugins. Reach out to the Planet 4 team if you need more help with any of these topics.

### License

Planet 4 is an Open Source project and all the themes and plugins being developed by us should also be. Publishing the code on Github is not enough. All repositories should include a `LICENSE` file, indicating which Open Source license is being used for that particular repository.&#x20;

If you are developing your own plugin, you can [choose any open source license](https://choosealicense.com/). In Planet 4 we use GPL, so you can just copy [its text version](https://www.gnu.org/licenses/gpl-3.0.txt) into a LICENSE file in your repository.&#x20;

When initially creating the repository, Github also prompts you to pick one and if you do it will add this LICENSE file in the repository.

### Open Source

Open Source is not just about the license. If you think your plugin can potentially be useful for other NROs or even other organizations, you can also try to code it in a way that doesn't include hardcoded references to your website.

### Coding standards

Planet 4 has defined some coding standards for php, javascript and css code. Below are some pointers to files you can include in your repository root folder. This will help other contributors but also your code editor.

* [Editorconfig example](https://github.com/greenpeace/wp-gravityforms-controlshift/blob/main/.editorconfig) (you can check if your editor needs [a plugin](https://editorconfig.org/#download) for this)
* [PHP coding standards example](https://github.com/greenpeace/wp-gravityforms-controlshift/blob/main/phpcs.xml)
* [Stylelint (CSS) coding standards example](https://github.com/greenpeace/planet4-master-theme/blob/main/.stylelintrc)
* [Eslint (Javascript) coding standards example](https://github.com/greenpeace/planet4-master-theme/blob/main/.eslintrc.json)

### Composer

Each plugin needs a `composer.json` file. This is required for adding the plugin to [packagist](../nro-customization/development/package-registry.md). Below is a very simple example of how this could look. For more detailed examples, check [composer's relevant documentation](https://getcomposer.org/doc/04-schema.md).

```json
{
  "name": "greenpeace/planet4-plugin-blocks",
  "description": "Provides Planet 4 content blocks",
  "type": "wordpress-plugin",
  "license": "GPL-3.0+"
}
```

### Naming

All Planet 4 specific repositories should be prefixed with `planet4-`, the NRO abbreviation (eg. `gpca-`) and its Wordpress function (eg. `plugin-`).&#x20;

Then you just add the name that best describes what it does (eg. `planet4-gpch-plugin-blocks`).&#x20;

If you are developing a plugin that can be used by the wider Wordpress community, you can instead prefix it with `wp-` (eg. `wp-gravityforms-controlshift`).

### Branches

Most of our repositories use the [Github Flow](https://docs.github.com/en/get-started/quickstart/github-flow) git branch workflow. In practice that means that we start from one `main` branch that reflects the current state of development which can be deployed in a dev environment.&#x20;

Any new feature is being developer in a new branch that is being merged to `main` when is completed. A new tag is being create when the code is considered stable enough to be deployed in production.&#x20;

Check [deployment documentation](../nro-customization/deployment/) on how you can define what is being depoyed in which environment.

## Plugins used in all websites

### Akismet Anti-Spam

Akismet is quite possibly the best way in the world to protect your blog from spam. Your site is fully configured and being protected, even while you sleep. More info in [P4 > Settings](http://planet4.greenpeace.org/handbook/admin-setup/).

### Cloudflare

Used to integrate with our CDN and in particular with its [Automatic Platform Optimizations](https://developers.cloudflare.com/automatic-platform-optimization/) feature.

### CMB2

CMB2 will create metaboxes and forms with custom fields that will blow your mind. More info on the [wp.org plugin page](https://wordpress.org/plugins/cmb2/).

### ElasticPress

Offers enhanced search capabilities and performance by integrating with [Elasticsearch](https://www.elastic.co/what-is/elasticsearch).

### Gravity Forms

The core plugin that our [Form Builder feature](https://planet4.greenpeace.org/manage/integrate/form-builder/build-a-form-in-gravity-forms/) is built upon.

### Google Apps Login

Simple secure login for WordPress through users’ Google Apps accounts (uses secure OAuth2, and MFA if enabled). More info in [Login to P4](https://planet4.greenpeace.org/handbook/login/) or in the [wp.org plugin page](https://wordpress.org/plugins/google-apps-login/).

### Redirection

Manage all your 301 redirects and monitor 404 errors. More on Redirects on the [wp.org plugin page.](https://wordpress.org/plugins/redirection/)

### Timber

Required by the Planet4 master theme. The WordPress Timber Library allows you to write themes using the power of Twig templates. More info on the [wp.org plugin page](https://wordpress.org/plugins/timber-library/).

### Sentry

Reporting PHP and JavaScript issues to Sentry, a monitoring and error tracking software.

### WP Redis

WordPress Object Cache using Redis. Requires the [PhpRedis extension](https://github.com/phpredis/phpredis). More info on the [wp.org plugin page](https://wordpress.org/plugins/wp-redis/).

### WP-Stateless

Upload and serve your WordPress media files from Google Cloud Storage. More info on the [wp.org plugin page](https://wordpress.org/plugins/wp-stateless/).

### Yoast Duplicate Post

Easy cloning posts and pages, including the ability to rewrite & republish.

## Plugins used in some sites

### WPML

Used in our sites that require more than one language. More info on [Set up a Multi-Language P4 Site](http://planet4.greenpeace.org/handbook/multi-language/) or at [wpml.org](https://wpml.org/).

### Loco Translate

Translate Planet4 themes and plugins directly in WordPress. Used only in this awesome handbook site. More info at [Translate P4 theme, strings (commands) and plugins](http://planet4.greenpeace.org/implement/deploy/translations/) or in the [wp.org plugin page](https://wordpress.org/plugins/loco-translate/).

### IdeaPush

Allows submissions of ideas for feature requests directly in WordPress. Used only in this awesome handbook site. More info at [Improving P4](http://planet4.greenpeace.org/implement/manage/improving-p4/) or in the [wp.org plugin page](https://wordpress.org/plugins/ideapush/).

## Plugins not used

### SEO plugins

Planet 4 has no SEO plugin installed or recommended. SEO plugins do a lot of things, some of which are not even things that should be done (eg. trying to "trick" Google into thinking that a page is something different than it is).

We have identified several features that are also being offered by some SEO plugins, such as open graph data (documented at [PLANET-1888](https://jira.greenpeace.org/browse/PLANET-1888) or write beautiful URLs (using core WP functionality with small taxonomy modifications documented at [PLANET-1879](https://jira.greenpeace.org/browse/PLANET-1879).

There are however several SEO features available on Planet 4. These include a specific title, description and image for social media, canonical links, excerpts and more. In case you're missing SEO features, do let them know in the [Feature Requests](https://planet4.greenpeace.org/contribute/improve/?showing=recent\&status=open\&tag=All\&custom=) page of the P4 Handbook. Please note: Our choice of operation is **not** "There is a plugin, let’s install it and see what it does", but “We need feature A, let’s find the best way to deliver its functionality”.
