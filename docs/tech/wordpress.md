---
description: Following upstream changes
---

# Wordpress

## Versions

Planet 4 is built on top of Wordpress, so it's important to keep an eye on what's coming in [future releases](https://wordpress.org/download/releases/). To avoid any surprises we use a CI environmental variable \(`WP_VERSION`\) to set the Wordpress version for all instances. When a new release comes out, we first check its Changelog for any breaking change before we bump that version variable for Planet 4.

{% hint style="info" %}
To make sure new PR tests and our local environment also are in the same WP version we explicitly have `WP_VERSION` variable in `config.yml` and `docker-compose*.yml` files at the app repos and docker-compose respectively.
{% endhint %}

### Testing

If we need to test a different version \(eg. when a new release comes out\) we can override that global variable for a specific instance. To do so we just need to add a `WP_VERSION` in the environment variables of this instance CirclecI config. Example:

```yaml
job_environments:
  common_environment: &common_environment

    WP_VERSION: 5.4
```

