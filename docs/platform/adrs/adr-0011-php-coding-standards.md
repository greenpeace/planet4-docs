---
description: Implement modern and consistent PHP coding standards
---

# \[ADR-0011] PHP Coding Standards

* Status: accepted
* Deciders: Development Team

Technical Story: Planet 4 repositories currently follow [Wordpress Coding Standards](https://github.com/WordPress/WordPress-Coding-Standards/), using PHPCS rules to enforce those. Wordpress choices are guided by a necessity for backward compatibility with [older PHP versions](https://wordpress.org/news/2019/04/minimum-php-version-update/), and [friendly failure](https://make.wordpress.org/core/2019/07/12/php-coding-standards-changes/#comment-37128) on older systems.

We are not bound by those necessities, and could choose to follow different coding standards if we see a benefit in it.

### Context and Problem Statement <a href="#nmfx1mz3idd0" id="nmfx1mz3idd0"></a>

This ADR is a proposition to override some of the Wordpress coding standards to allow for a more modern, concise, secure and readable code, using current PHP structures and syntaxic evolutions.

PHP-FIG edited two PSR ([PSR-1](https://www.php-fig.org/psr/psr-1/), [PSR-12](https://www.php-fig.org/psr/psr-12/)) that we could also use to update our rules.

Our coding standards **could** be allowed to diverge from Wordpress, because:

* we are not bound by backward-compatibility to an older PHP version, we need to follow [supported versions](https://www.php.net/supported-versions.php) for security reasons. Even Wordpress [recommends](https://wordpress.org/about/requirements/) running on a recent PHP version.
* we don’t have to edit Wordpress core itself, which would require us to follow those standards for coherence
* as stated in [this blog post](https://make.wordpress.org/core/2019/07/12/php-coding-standards-changes/): “_you can (and should) choose practices that best suits your development style for your own plugins and themes_”

**Please feel free to add any decision driver and option you would like to revise or discuss.**

**All the validated options should be enforced through phpcs rules, automatically fixable through phpcbf, and controlled by a static analyzer, so that it does not become a limitation to participate. If not possible, they should appear in contributing guidelines.**

### Decision Drivers <a href="#x7x6j455qi5f" id="x7x6j455qi5f"></a>

* Wordpress stays compatible with PHP 5.6; since this version, many features have been introduced that would make our code more readable and resilient to bugs consequences of type mismanagement, in particular:
  * Until PHP 7.2: type declaration for function parameters and return values, constants visibility, nullable types
  * PHP 7.4: typed properties
  * PHP 8.0: union types, attributes, constructor property promotion, static/mixed return types
* Some of the forbidden constructs make the code more cumbersome
  * Short ternary operator, spread operator, etc.
  * Both functions [in this gist](https://gist.github.com/lithrel/d683f7fd1ff7e430735f7b6d56c33535) are equivalent, but the current guidelines forced me to write the longer one

### Considered Options <a href="#id-2xzipsinh4do" id="id-2xzipsinh4do"></a>

Some divergences from [Wordpress standards](https://make.wordpress.org/core/handbook/best-practices/coding-standards/php/#ternary-operator):

* [Declaring arrays](https://make.wordpress.org/core/handbook/best-practices/coding-standards/php/#declaring-arrays)
  * Using short syntax \`\[]\` is preferred
* [Space usage](https://make.wordpress.org/core/handbook/best-practices/coding-standards/php/#space-usage)
  * Putting spaces on the inner side of opening/closing parentheses is not needed
  * Putting spaces around array indexes is not needed
* [Self-Explanatory Flag Values for Function Arguments](https://make.wordpress.org/core/handbook/best-practices/coding-standards/php/#self-explanatory-flag-values-for-function-arguments)
  * Using a string to trigger a specific behavior is prone to error (typos, etc.); if you want to use a string as flag value, declare a constant in a class and use this constant wherever necessary
* [Ternary operator](https://make.wordpress.org/core/handbook/best-practices/coding-standards/php/#ternary-operator)
  * Ternary operator should be used anywhere useful

Borrowing from [PSR-1](https://www.php-fig.org/psr/psr-1/):

We will have a problem with

* [4.3 Methods](https://www.php-fig.org/psr/psr-1/#43-methods): advocating for method name in camelCase, our codebase is only snake\_case, and using wordpress globals forces us to at least use snake\_case in those situations

Borrowing from [PSR-12](https://www.php-fig.org/psr/psr-1/):

We will have a problem with

* [2.4 Indenting](https://www.php-fig.org/psr/psr-12/#24-indenting): advocating for spaces, our codebase is only tabs

Other rules to consider and write in guidelines:

* [~~Return early~~](https://pear.php.net/manual/en/standards.bestpractices.php#standards.bestpractices.returnearly) - Sonar takes care of it
* [~~Avoid using \`else\`~~](https://www.quora.com/Is-it-true-that-good-programmers-do-not-use-else) ~~unless necessary, it’s often a sign of a piece of logic that should be extracted~~ - Sonar takes care of it
* Check Sonar code smells, it is very useful to see complexity and simplify code
* Align assignments [only if it makes sense](https://pear.php.net/manual/en/rfc.cs-enhancements.alignassignments.php), a long list of assignments is often [a sign](https://books.google.fr/books?id=_i6bDeoCQzsC\&lpg=PA87\&ots=epbMCg6e-7\&dq=code%20assignment%20alignment\&pg=PA87#v=onepage\&q\&f=false) of code that should be split up
* Writing a function more than 80 lines long should lead to thinking about splitting it.
* An ideal case is 1 function = 1 responsibility = an obvious name describing this responsibility.

Enforcement of types:

* Declare types at all times possible
* Return only one type per function (nullable if needed), when possible
* Make files type strict \`declare(strict\_types=1);\`

### Decision Outcome <a href="#mamrohzf2ruc" id="mamrohzf2ruc"></a>

Decision matrix is available for comments and votes at [Planet4 PHP Coding Standards decisions](https://docs.google.com/spreadsheets/d/1dTcbhGv2vxIiv_YySktGaRQxf59TBG65qR1vkiiJgCU/edit#gid=0)

Chosen option: [PHPCS configuration implemented](https://github.com/greenpeace/planet4-master-theme/blob/v1.304.1/phpcs.xml.dist)

### Pros and Cons of the Options <a href="#qb7i4n5hai0t" id="qb7i4n5hai0t"></a>

Most of the PSR-12 recommendations make sense, and could be applied right away.

Exceptions are indentation (spaces/tabs) and case for properties and variables (camelCase/snake\_case).

Feel free to add talking topics and points about things you want to discuss.

#### Indentation - Tabs <a href="#qpzym08s6k3g" id="qpzym08s6k3g"></a>

* Good, because it is consistent with WordPress codebase
* Bad, if you prefer spaces

#### Indentation - Spaces <a href="#id-5ptqtxs0nq8g" id="id-5ptqtxs0nq8g"></a>

* Good, because it is consistent with PSR-12 recommendations
* Bad, if you prefer tabs

#### Case - camelCase <a href="#mv92rfgyhz6o" id="mv92rfgyhz6o"></a>

* Good, because it is consistent with PSR-12 recommendations
* Good, because it makes clear what comes from WordPress and what comes from our code
* Bad, because it is inconsistent with WordPress codebase, so we can’t exactly copy/paste source code

#### Strict typing <a href="#hg9589b7b0pv" id="hg9589b7b0pv"></a>

* Good, because it makes your code predictable, and readable by static analyzers, limiting bugs
* Good, because it effectively replaces type documentation in comments
* Bad, because it is more work to figure out all your inputs and outputs types, especially in a WordPress context

#### Abandoning alignment on equal signs and arrows <a href="#uyuhiurygt9d" id="uyuhiurygt9d"></a>

* Good, because it reduces line length and large empty spacing
* Bad, because it looks less like a data table

#### Abandoning yoda conditions <a href="#id-9p47ljsn6dpv" id="id-9p47ljsn6dpv"></a>

* Good, because it impairs readability/understanding
* Bad, because it can still stop some errors

### Links <a href="#egfthy1bdxph" id="egfthy1bdxph"></a>

* [https://make.wordpress.org/core/handbook/best-practices/coding-standards/php/](https://make.wordpress.org/core/handbook/best-practices/coding-standards/php/)
* [https://github.com/WordPress/WordPress-Coding-Standards](https://github.com/WordPress/WordPress-Coding-Standards)
* [https://www.php-fig.org/psr/psr-1/](https://www.php-fig.org/psr/psr-1/)
* [https://www.php-fig.org/psr/psr-12/](https://www.php-fig.org/psr/psr-12/)
* [https://pear.php.net/manual/en/standards.php](https://pear.php.net/manual/en/standards.php)
* [https://github.com/slevomat/coding-standard](https://github.com/slevomat/coding-standard)
* [https://jira.greenpeace.org/browse/PLANET-5954](https://jira.greenpeace.org/browse/PLANET-5954)
