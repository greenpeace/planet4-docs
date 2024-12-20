---
description: >-
  Use Block Templates for patterns. Gradually start converting existing
  patterns.
---

# \[ADR-0019] Use block templates to build block patterns

* Status: accepted
* Deciders: Development team

Technical Story: Switch on using Wordpress [block templates](https://developer.wordpress.org/block-editor/reference-guides/block-api/block-templates/) for building block patterns.

### Context and Problem Statement <a href="#_nmfx1mz3idd0" id="_nmfx1mz3idd0"></a>

Block patterns are a great way to create and share patterns over various pages and sites: some fiddling in the Visual Editor, a copy/paste and that’s it ! However, a more complex usage of it like using patterns to compose other patterns, creating some variations of those patterns, and maintaining this whole system, has some caveats. Block templates might be better suited for this multifaceted use case.

Our needs:

* Reusable arrangement of blocks for Editors to insert and edit, shared across all NROs
* Composable with each others in larger arrangements
* Possibility to add arguments to make variations in compositions

Ideally:

* Easy reusability, low maintenance

_TLDR; If you have dev capacity, create and maintain block templates. If you only have editors, keep and exchange block patterns._

### Decision Drivers <a href="#_odhar7d3tjrd" id="_odhar7d3tjrd"></a>

* Creating patterns requires to generate them in editor, then copy/paste in php code, and adapt various outputs and attributes
* Composing patterns requires management of arguments, to convert them to json and html attributes
* Maintaining those patterns would ideally require to regenerate those in the Editor to be on par with last blocks evolutions

### Considered Options <a href="#_2xzipsinh4do" id="_2xzipsinh4do"></a>

* Making patterns small enough and with enough arguments to reuse in other patterns (the current solution)
* Generating templates, patterns, from a basic js format _at runtime_, letting the Editor generate the HTML content (the proposed solution)
* Generating patterns from a basic js format _at build time_, letting the Editor libraries generate the HTML content (maybe later ? compatible with proposed solution, less client-intensive, allows to follow and log blocks changes, could self-generate a shareable pattern directory/portal)

### Comparison of patterns and templates <a href="#_wujtgors476r" id="_wujtgors476r"></a>

|                                | **Block pattern**                                       | **Block template**                                                                                        |
| ------------------------------ | ------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| **creation**                   | Visual editor + PHP                                     | JS + Json                                                                                                 |
| **attributes**                 | PHP + Json + HTML                                       | JS, native filtering                                                                                      |
| **maintenance**                | PHP + HTML                                              | JS                                                                                                        |
| **output**                     | static HTML                                             | expanded by Visual Editor, then static HTML                                                               |
| **usage**                      | - insert from _Patterns_ tab                            | <p>- insert from <em>Blocks</em> tab</p><p>- insert from <em>Patterns</em> tab if made into a pattern</p> |
| **use in pattern**             | <p>- in code with PHP</p><p>- in editor with insert</p> | <p>- in code with HTML self closing tag</p><p>- in editor with insert</p>                                 |
| **use in template**            | - in editor with insert                                 | <p>- in code with JS</p><p>- in editor with insert</p>                                                    |
| **editable after insertion**   | yes                                                     | yes                                                                                                       |
| **identifiable in block list** | no                                                      | yes                                                                                                       |

### Demo <a href="#_9yw9lckmmn9y" id="_9yw9lckmmn9y"></a>

[This PR](https://github.com/greenpeace/planet4-plugin-gutenberg-blocks/pull/929) demonstrates a Block template system, and a conversion of a pattern to a template. It includes [documentation to create new templates](https://github.com/greenpeace/planet4-plugin-gutenberg-blocks/blob/26c6f7e7d0f7b04a18cfe66edad89de6ce70c1f6/assets/src/block-templates/readme.md).

It is important to keep the source format as simple as possible (a format [Gutenberg understands](https://github.com/WordPress/gutenberg/blob/68e7f562168b97820f0c77ad6d56a0f5e167e9dc/packages/blocks/src/api/factory.js#L33-L50)), so it can be included in any other format we create and can be used to generate more complex outputs using native [Gutenberg libraries](https://github.com/WordPress/gutenberg/blob/68e7f562168b97820f0c77ad6d56a0f5e167e9dc/packages/blocks/src/api/factory.js#L33-L50).

[Another PR](https://github.com/greenpeace/planet4-plugin-gutenberg-blocks/pull/916) shows how we could convert all patterns to templates.

### Decision Outcome <a href="#_7ao7fbpq5ji8" id="_7ao7fbpq5ji8"></a>

Chosen option: Use Block Templates for patterns. Gradually start converting existing patterns.

### Links <a href="#_egfthy1bdxph" id="_egfthy1bdxph"></a>

* [WordPress Block Pattern Directory](https://wordpress.org/patterns/)
* [Block templates documentation](https://developer.wordpress.org/block-editor/reference-guides/block-api/block-templates/)
