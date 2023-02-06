---
description: Testing functionality with End-to-end tests
---

# End-to-end Tests

For end-to-end testing we use [Playwright](https://playwright.dev/) which is the tool that WordPress is soon going to be using for their own tests.

A very simple test might look like this:

```
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

## Running tests locally

Assuming your local docker-compose development environment **is already up and running**, you just need to make sure that you have the test dependencies installed.
These are now included in our repos' dependencies, so if you don't have them yet, running `npm install` should do the trick.

Then, if you want to run all of the tests you can run:

```
npx playwright test
```

For individual tests you can run:

```
npx playwright test tests/e2e/404.spec.js
```

### Test failures

If a test fails you'll get a report of the issues inside the `playwright-report` folder (it should also automatically open in a browser window for you to check out).

If there are additional artifacts such as screenshots/videos they will be in the `e2e-results` folder. You can specify which artifacts you want to get in the `playwright.config.js` file.

### Debugging

You can use the `--debug` flag in order to debug your test(s), as follows:

```
npx playwright test --debug
```

### VS Code

 If you use VS Code as your editor, there is a [really handy package](https://playwright.dev/docs/getting-started-vscode) that you can use for all things Playwright!
