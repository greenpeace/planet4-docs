# CSS variables

> NOTE ON STABILITY: We have only recently started adding CSS variables, so it's best to wait a bit before using them to customize production. Some variables might still be renamed, change or be removed at this point. We'll give a heads up once we reached a stable set of variables, and from that point we'll ensure that existing themes will keep working as intended when we make further CSS changes.

To provide a stable way of customizing our base theme, we make use of [CSS custom properties](https://developer.mozilla.org/en-US/docs/Web/CSS/Using\_CSS\_custom\_properties), also known as CSS variables. We use a custom syntax to do so, the motivation for which is described below.

The standard syntax is&#x20;

```css
color: var(--foo-bar, green);
```

CSS variables provide a stable way to achieve customization for several reasons:

* The most common way of customizing CSS is to throw more CSS at it. So loading an extra selector and set of properties to change. It needs to have a higher specificity, or an equal specificity as the selector it intends to override if it's loaded after it. This breaks easily if the base selector changes (specificity wars). We learned that the hard way by maintaining some code that was based on CSS overrides and spent a considerable amount of time on resulting regressions. Customization with CSS variables does not suffer from this issue. There's no new selectors, the CSS will "act" the same, just with different values.
* It makes it visible in our source code which parts can be customized within themes, so we never miss that when making changes.
* They allow for a greater degree of customization without needing code changes.

In it's regular form, though, CSS variables do have one major downside. The variable name needs to be unique and specific enough. So they're often very long. This makes the code not so nice to read. It also will usually contain the name of the property that's being set, which now appears twice on the line.

```css
background-color: var(--fiz-buz-generator--title--background-color, blue);
```

Furthermore if within one selector there are multiple variables, they will all mostly consist of the same string. If you have to make a small change in this name, you end up changing a lot of lines of code, which makes for a harder to read Git history and significantly increases the chance of merge conflicts. You can also forget changing an occurrence or do a typo, and end up with inconsistent naming.

```css
.fiz-buz-generator .title {
  background-color: var(--fiz-buz-generator--title--background-color, blue);
  color: var(--fiz-buz-generator--title--color, white);
  border-radius: var(--fiz-boz-generator--title--border-radius, 4px);
  border-width: 1px;
}
```

If you consider that a given CSS property will always occur just once within a selector (except for BC fallback, but that's not relevant here). This means effectively we need to define a single prefix per selector, and can get unique strings for each variable if we concatenate the property name with it. Now we just need a nicer way to define this unique string in a single place.

For that purpose we created the [dashdash PostCSS plugin](https://github.com/greenpeace/planet4-dashdash), which allows to define this unique string as a "selector" and then modifies the declarations inside that selector to create the variables for you, using the value as the variable's default value.

Unlike what you might expect, we didn't use SCSS for this (e.g. mixin or function), as [it doesn't support modifying the declarations themselves](https://github.com/sass/sass/issues/1582) (in this case: replace the value with a variable defaulting to that value). Mixins only output `@content` as a whole, but don't allow to modify the declarations inside it (at least [not yet](https://github.com/sass/sass/issues/1582)). You can write a function which takes a list of dictionary to achieve it. But that would not fulfill the goal of having the CSS declarations look like... CSS declarations (`variablize(($color: blue, $padding: 2px))`). We want to avoid mangling our declarations with long variable names, but we also don't want to mangle them in another way.

Instead the plugin relies on the fact that, as far as CSS is concerned, `--foo--` looks like a valid html element. After SCSS does its thing, the plugin will go through all selectors that have this special "element" and then removes the element from the selector and puts variables around all its properties with a generated name.

If you write the following in SCSS, dashdash will turn it into the previous CSS.

```css
.fiz-buz-generator .title {
  --fiz-buz-generator--title-- {
    background-color: blue;
    color: white;
    border-radius: 4px;
  }
  border-width: 1px;
}
```

In this case we can further simplify the source code. Except for "special characters", the class names completely match the intended prefix. You can make the plugin generate the prefix from the selector by using `_--`. It will do so by replacing any sequence of characters that is not either alphanumeric or a dash with 2 dashes. So the following SCSS would result in the same CSS as the previous examples.

```css
.fiz-buz-generator .title {
  _-- {
    background-color: blue;
    color: white;
    border-radius: 4px;
  }
  border-width: 1px;
}
```

### Media queries and pseudo classes

You can use media queries and pseudo classes inside of the shorthand variable selector. In that case the generated variable names will include the pseudo class / media query parameters (or an alias). See [the plugin's README](https://github.com/greenpeace/planet4-dashdash) for more detailed information.
