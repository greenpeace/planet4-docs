---
description: Use custom syntax for SCSS variables.
---

# \[ADR-0013] Use custom SCSS syntax for variables

* Status: accepted
* Deciders: Development Team

### Context and Problem Statement

CSS variables are relatively easy to introduce into existing code, and we are increasingly using them to solve theming problems. There are however 2 related problems which make them tedious when used at scale:

* Even though the property name and the value don’t change when converting a static declaration to one with a variable, you still need to make a significant modification to the line it is on. This is tedious, error prone and also obscures the code’s git history.
* Each variable needs to have a unique name, and because of that these names tend to become very long. This makes the code harder to read, as there is now a long string between the property and the value. We also want to consistently name these variables, so basically there will be a prefix in the variable name per element (i.e. usually per selector). That causes a lot of redundancy in the code as each rule with a variable for that element will include the long prefix (e.g. see resulting css below).

Within a given selector the same prefix should be used for each property. Since a property should only occur once in any selector, we can construct a name which is always.

```
selector_prefix + property_name
```

We can make our CSS variables a lot more readable and easier to change if we introduce some way to put the prefix around a set of properties in our SCSS code, so that in the resulting CSS each enclosed declaration is transformed into the same property with the value being a variable defaulting to the unparsed value, with a name that is constructed from prefix + property name.

```css
.selector {
  --a-long-prefix-- {
    color: green;
    background-color: white;
  }
  border: 1px solid black;
}
```

Would expand to

```css
.selector {
  color: var(--a-long-prefix--color, green);
  background-color: var(--a-long-prefix--background-color, white);
  border: 1px solid black;
}
```

This would have the following advantages:

* The prefix only needs to be specified once, and it’s on its own line. So it doesn’t matter anymore how long it is and can take all the place it needs to accurately describe the element.
* It’s easy to see which values are variable in a given selector as the syntax forces them to be grouped.
* Making an existing property variable can be done simply by moving the line into this block with no actual code changes required.
* Property name and declaration are right next to each other and not separated by a variable name which could have any length so would make scanning the code a pain.

#### Challenges

While you could expect that the SCSS spec has a “native” way to implement this approach, this turned out not to be the case. There is no way to pass a block of declarations to any SCSS language construct (mixin/function) and loop through them to output a different block of declarations.

The closest you can get with standard SCSS is write [a function which takes a list of property + value](https://stackoverflow.com/questions/26937785/using-passed-variable-as-key-value-pair-in-mixins), but that would make it very tedious to apply to existing code, as these would need to be separated with commas instead of “;”, so each line of code needs to change and can’t just be moved.

So next I checked if it was possible to add a custom at-rule (like @include, @mixin, …). Unfortunately this is also something that is not supported by existing SCSS parsers, and would be very hard to implement as the most common ones are written in C and don’t have an API to add new at-rules, so you would need to write these in C.

There is also an [open issue in the SCSS](https://github.com/sass/sass/issues/1582) spec to add a way to modify the content of a mixin, but it doesn’t look like there is any intention to add it in the near future.

So there is no native way to do what we want in SCSS, and no way to extend SCSS to make it do it. We can however make use of the fact that --something-within-dashes--, i.e. starting with one or more dashes, is a valid selector as far as SCSS (or even the CSS spec) is concerned and it will simply output it. We can then run a script after SCSS is done parsing, loop through each declaration to add the variable around the value, and then look up the selector it was in (which is just the CSS selector - the prefix at the end), and add the declarations to that selector.

#### Format

Adding 2 dashes at the end of the prefix too has the following advantages:

* It acts as a separator making it clear which part is the prefix and which is the property name in the resulting variable name.
* Including it in the prefix specification on the wrapping block.
  * makes it a lot clearer that this is something custom.
  * Will make it more likely that a string search for the prefix will match (if someone copies that part of the compiled variable name and does a string search in our source code).

There is already a first working version of this script: [https://github.com/greenpeace/planet4-master-theme/compare/collect-vars#diff-71b1afe91dd18a886a5b93cd60fb33a5R4](https://github.com/greenpeace/planet4-master-theme/compare/collect-vars#diff-71b1afe91dd18a886a5b93cd60fb33a5R4). Some adjustments might be needed to ensure it doesn’t mess with the property order. The script does the same transformation as you can see in the example above.

#### Example usage

[https://github.com/greenpeace/planet4-styleguide/compare/add-some-vars?diff=split\&w=1](https://github.com/greenpeace/planet4-styleguide/compare/add-some-vars?diff=split\&w=1)

#### Considerations

* [https://www.w3.org/TR/css-variables/#variables-in-shorthands](https://www.w3.org/TR/css-variables/#variables-in-shorthands) Shorthand properties might impact performance as normally these are split into the corresponding other properties at parse time. If the impact is significant we could mitigate it by splitting the shorthand into its component parts.

### Considered Options

* Use custom syntax.
* Continue using standard syntax

### Decision Outcome

Chosen option: Use custom syntax

### Pros and Cons of the Options

#### Use custom syntax

* Good because
  * A lot more readable (prefix specified once, all variable properties are grouped).
  * Guaranteed consistency in the prefix.
  * Much easier to make a property variable (no change to the line, just move into block,).
  * Recognizable syntax, it’s very clear something non standard is happening.
* Bad because&#x20;
  * Added complexity of running this script after SCSS. (though the script itself is relatively straightforward)
  * Non standard, so adds to knowledge required to work with the repo using it. Though it’s relatively easy to explain and understand.

#### Continue using standard syntax

* Bad because
  * the maintenance overhead mentioned in the problem statement (long names, redundancy, requires editing each line you want to make variable).
* Good because
  * it would be fully according to the standard SCSS and CSS spec and less complex to orchestrate.

### Links

* [Final documentation](https://support.greenpeace.org/planet4/tech/css-variables)
