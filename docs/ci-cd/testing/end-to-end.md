---
description: Testing functionality with End-to-end tests
---

# End-to-end Tests

For end-to-end testing we use [Playwright](https://playwright.dev/) which is the tool that WordPress is soon going to be using for their own tests.

A very simple test might look like this:

```javascript
const { test, expect } = require('@playwright/test');

test('check the 404 page', async ({ page }) => {
  const response = await page.goto('/thispagereallywillnotexist');

  // Check the page status.
  expect(response.status()).toEqual(404);
  
  // Make sure the search input is there.
  await expect(page.locator('input[aria-label="Search"]')).toBeVisible();
});
```

For now we can only run these tests on local environments, but we will soon add them to our CI as well.

### Running tests locally

Assuming your [local development environment](https://github.com/greenpeace/planet4-develop) **is already up and running**, you first need to install test dependencies.

This only needs to happen once:

```bash
npm run env:e2e-install
```

To run all the tests just run:

```bash
npm run env:e2e
```

If you want to run individual tests it's easiest to go inside the relevant repo folder and pick the test you want to run:

```bash
cd planet4/themes/planet4-master-theme
npx playwright test tests/e2e/search.spec.js
```

#### Test results

At the end of the tests run a browser will open with the full test results report. Failing tests will have a screenshot on the step that failed.

#### Debugging

You can use the `--debug` flag in order to debug your test(s), as follows:

```
npx playwright test --debug
```

#### VS Code

If you use VS Code as your editor, there is a [really handy package](https://playwright.dev/docs/getting-started-vscode) that you can use for all things Playwright!
