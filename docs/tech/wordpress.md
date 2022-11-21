---
description: Following upstream changes
---

# Wordpress

## Versions

Planet 4 is built on top of Wordpress, so it's important to keep an eye on what's coming in [future releases](https://wordpress.org/download/releases/). To avoid any surprises we use a variable in [base repository composer file](https://github.com/greenpeace/planet4-base/blob/654742b2e36747f20b9ad02cb9b236322795255f/composer.json#L121) to set the Wordpress version for all instances. When a new release comes out, we first check its Changelog for any breaking change before we bump that version variable for Planet 4.

### Testing

If we need to test a different version (eg. when a new release comes out) we can override that global variable for a specific instance. To do so we just need to add a similar section to NRO repository `composer-local.json` file. We can also override for just one environment by just adding that section to the environment's file (eg. `development.json`).

```javascript
{
  "extra": {
    "wp-version": "5.8.1"
  }
}
```

## Settings & Styles (theme.json)

(Coming soon)

\
