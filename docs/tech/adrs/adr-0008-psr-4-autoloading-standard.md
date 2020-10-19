---
description: >-
  Implement PSD-4 Autoloading to our two main app repositories (master-theme,
  plugin-blocks).
---

# \[ADR-0008\] PSR-4 Autoloading Standard

* Status: **accepted**
* Deciders: Engineering Team

## Considered Options

* Adjust all of our application repositories \(themes, plugins\) to adhere to PSR-4
* Continue using custom autoloading classes

## Decision Outcome

Chosen option: **Implement PSD-4 Autoloading to our two main app repositories \(master-theme, plugin-blocks\).**

## Pros and Cons of the Options

### PSR-4

* Good, because following widely adopted standards helps new developers understand the code faster +1
* Good, because we will automatically benefit from optimisations implemented by Composer \(see [composer docs](https://getcomposer.org/doc/articles/autoloader-optimization.md#optimization-level-1-class-map-generation)\) +2
* Good, because dropping the “class-” prefix WordPress dictates makes it easier to navigate folders \(both in CLI and IDE\)
* Bad, because it forces us to change file structure/naming
* Bad, because ...

### Custom Classes

\[example \| description \| pointer to more information \| …\] &lt;!-- optional --&gt;

* Good, because …
* Good because not depends on the composer\(external dependency\)
* Good because not restricted for specific filename/class name
* Bad, because a custom autoloader has a risk of bugs and prefix misuse

## Links

* [PSR-4 Autoloading Standard](https://www.php-fig.org/psr/psr-4/)

