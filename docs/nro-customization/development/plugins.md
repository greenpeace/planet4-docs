---
description: Add a new plugin in only one NRO site
---

# Plugins

If you are considering installing a 3rdparty plugin on your NRO website, first read our relevant guide around Plugins, espcially the part about the Security review. The Planet 4 team can help with perfoming a security review.

{% page-ref page="../../tech/plugins.md" %}

If you are adding a plugin you developed then make sure you have read out guide on how to add it to Packagist.

{% page-ref page="package-registry.md" %}

### Installation

To add a plugin for only one NRO website, you need to do the following steps:

1. Have access to that nro sites controlling repository \(eg. [GP Netherlands](https://github.com/greenpeace/planet4-netherlands)\)
2. On the develop branch, on the file composer-local.json, in the `require` block, add a line that will reference your plugin from packagist \(for own developed plugins\) or wpackagist \(for 3rd party wordpress plugins\).
3. For own developed plugins, please note that the version can be one of the following:
   1. A [tagged release](https://git-scm.com/book/en/v2/Git-Basics-Tagging) \(for example: v1.0\). Mandatory for production releases.
   2. A branch name.
   3. Commit. This will trigger your dev site to be rebuild including the new plugin.

{% hint style="info" %}
Packagist prepends the string `dev-` before the branch name. So, if your branch name is `my-nice-feature`, in composer you have to reference it as `dev-my-nice-feature`. This is only possible on develop and release sites, not on production sites
{% endhint %}

