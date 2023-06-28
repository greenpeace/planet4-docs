---
description: How to add extra visual regression tests for your website
---

# Visual Regression Tests

Planet 4 is setup to run [automated visual regression](https://github.com/greenpeace/planet4-docs/tree/f47a83652efd39701815e84b4a20837d990689a7/docs/nro-customization/ci-cd/testing/visual-regression-tests.md) tests on each deployment pipeline.

But you can also add extra scenarios to test other parts of your website. To do so add a file called `backstop-pages.json` with a scenarios array. There is probably already one.

The format and available options can be seen at the [backstopjs documentation](https://github.com/garris/BackstopJS/blob/master/README.md). The simplest form of the file should include a label and a URL for each page, like the following:

```javascript
{
  "scenarios": [
    {
      "label": "Planet4 NRO Explore page",
      "url": "https://APP_HOSTNAME/APP_HOSTPATH/explore/",
      "delay": 4000,
      "misMatchThreshold": 3
    }
  ]
}
```

{% hint style="info" %}
It's important to add these delay and misMatchThreshold values. These have been tested to be sane defaults.
{% endhint %}
