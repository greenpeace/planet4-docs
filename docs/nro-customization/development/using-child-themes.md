---
description: Customize P4 using a child theme
---

# Using Child Themes

{% hint style="success" %}
**Please** [**talk to the P4 Team**](mailto:planet4-pm-group@greenpeace.org) **before doing custom development and theming. If we are ever going to reach the full potential of Greenpeace’s engagement platform it is absolutely essential that we work TOGETHER.**
{% endhint %}

In order to differentiate a Planet 4 instance from the default the first step is to fork the default child-theme and create a new repository that follows a naming scheme similar to `planet4-child-theme-<nro>`. From there we can start modifying css and templates.

## CSS

All css changes should happen inside `style.css` that lies on the root of the child theme and initially is empty. This css code is loaded after the master-theme’s css, so anything put in there will override the corresponding class or element.

Keep in mind though, that in the master-theme many elements and classes are nested \(using [Sass](https://sass-lang.com/)\). For that reason we have to be careful with precedence and take that fact into account when we write our css code for our custom child theme. The more specific and explicit a css declaration is, the bigger precedence it has.

So for instance, if we want to adjust the color of the post tags, we should add a css rule like this one:

```css
.single-post .page-header .top-page-tags a {
  color: #2980b9;
}
```

## Templates

If we want to override an existing template the first step is to create a new folder named templates inside the root of our custom child theme.

Inside that folder, we create a twig template with the same name it has on the master-theme. The best approach would be to actually copy it from the master-theme so we can have its original code as a base for modifications.

So for instance, If we want to adjust the default page template we have to copy the one from the master-theme that exists at `templates/page.twig` and at the moment contains this code:

```markup
{% extends "base.twig" %}

{% block content %}
  <div class="page-template">
    {{ post.content|raw }}
  </div>
{% endblock %}
```

Assuming we want to display more metadata to the pages content, we would have to use the same code and do any additions \(or deletions\) we want.

```markup
{% extends "base.twig" %}

{% block content %}
  <div class="page-template">
    <div>{{ post.author.name }}</div>

    {{ post.content|raw }}
  </div>
{% endblock %}
```

## Live Examples

Since we already have some production running websites that use their own customized child-theme we can use them as a guide for more advanced and specific tweaks. Besides screenshots and live examples provided here, you can also check the code on the relevant child theme of the NRO.

### Change default font

For the needs of the [Greek website](https://www.greenpeace.org/greece/) or the [Thai website](https://www.greenpeace.org/thailand/) we needed to change the Lora serif font, that is used in the master-theme, to a Sans option. Noto Sans is the font we use for body copy if a language doesn’t support serif font. In order to avoid overriding every present or future occurrence of the Lora font, instead we used the same font-family name to load the new font. So every class or element that uses Lora will automatically use the new one.

As an example, here is a snippet of code that sets the Greek letterspace for normal font-face:

```css
@font-face {
  font-family: 'Lora';
  font-style: normal;
  font-weight: 400;
  src: url(https://fonts.gstatic.com/s/notosans/v7/o-0IIpQlx3QUlC5A4PNr5jRAW_0.woff2) format('woff2');
}
```

The full code of the Greek website customizations can be seen at the [planet4-child-theme-greece](https://github.com/greenpeace/planet4-child-theme-greece) repository.

### Change navigation bar colour

Many NROs have decided to change their primary navigation toolbar, below a full list and some screenshots:

* GP Nordics \([Denmark](https://www.greenpeace.org/denmark/), [Greenland](https://www.greenpeace.org/greenland/da/), [Finland](https://www.greenpeace.org/finland/), [Norway](https://www.greenpeace.org/norway/), [Sweden](https://www.greenpeace.org/sweden/)\) and [GPCH](https://www.greenpeace.ch/fr/) opted for a transparent white nav bar.
* [GP Netherlands](https://www.greenpeace.org/nl/) opted for a full white nav bar.

![](../../.gitbook/assets/nordic%20%281%29%20%281%29%20%282%29%20%282%29%20%284%29%20%282%29%20%281%29%20%282%29.png)

![](../../.gitbook/assets/nl%20%281%29%20%282%29%20%282%29%20%284%29%20%284%29%20%284%29%20%284%29%20%284%29%20%284%29%20%284%29.png)

* GP East Asia \([Taiwan](https://www.greenpeace.org/taiwan/), [HK](https://www.greenpeace.org/hongkong/) and [Korea](https://www.greenpeace.org/korea/)\) opted for a full green navigation bar.

![](../../.gitbook/assets/ea%20%281%29%20%281%29%20%282%29%20%282%29%20%282%29%20%282%29%20%282%29%20%282%29%20%282%29%20%282%29%20%282%29%20%282%29.png)

### Create a navigation sidebar

For the needs of this awesome [Handbook website](https://planet4.greenpeace.org/) we needed to add a sidebar and move the navigation links to that. In order to achieve that we created two new templates in the child theme. One for the top navigation bar and one for the sidebar. Following master theme naming scheme, the first one is `navigation-bar.twig`, where we removed the code that generates the navigation links and left only the logo and the search form. The second one is the `sidebar.twig` where we added the code for generating the navigation menu and through custom css code we style it to be vertical.

Full code for this example can be found at the [planet4-child-theme-handbook](https://github.com/greenpeace/planet4-child-theme-handbook) repository.

### Moving NRO switcher to the bottom of the page

If you need more space in the top bar navigation \(for instance you have a multilingual site and need a language switcher at the top\), you might need to move the GPI NRO selector from the top bar to the bottom of the page like on [GPLux website](https://www.greenpeace.org/luxembourg/fr/).

![](../../.gitbook/assets/gplux-country_selector%20%281%29%20%281%29%20%282%29%20%282%29%20%282%29%20%282%29%20%282%29%20%282%29%20%282%29%20%282%29%20%282%29.png)

To move the selector you need to:

* create in your child theme directory an empty directory called "templates" symmetrical to the templates directory of the P4 master theme \([here](https://github.com/greenpeace/planet4-master-theme/tree/master/templates)\)
* copy the navigation bar template from the [original theme](https://github.com/greenpeace/planet4-master-theme/blob/master/templates/navigation-bar.twig).
* modify the template by deleting the following blocks.

```markup
<button
    class="country-dropdown-toggle"
    data-toggle="open"
    data-target="#country-list"
    aria-expanded="false"
    aria-label="{{ data_nav_bar.country_dropdown_toggle }}"
>
    <span class="screen-reader-text">{{ __( 'Selected', 'planet4-master-theme' ) }}:</span> {{ website_navbar_title }}
    <span class="screen-reader-text">{{ __( 'Change Country', 'planet4-master-theme' ) }}</span>
</button>
{% include 'countries.twig' %}
```

* copy the footer template from the [main theme](https://github.com/greenpeace/planet4-master-theme/blob/master/templates/footer.twig).
* add the country selector to the footer where you want to print it for example below the footer-links-secondary.

```markup
<ul class="list-unstyled footer-links-country">
    <button
        class="country-dropdown-toggle"
        data-toggle="open"
        data-target="#country-list"
        aria-expanded="false"
        aria-label="{{ data_nav_bar.country_dropdown_toggle }}"
    >
        <span class="screen-reader-text">{{ __( 'Selected', 'planet4-master-theme' ) }}:</span> {{ website_navbar_title }}
        <span class="screen-reader-text">{{ __( 'Change Country', 'planet4-master-theme' ) }}</span>
    </button>
    {% include 'countries.twig' %}
</ul>
```

* then apply the css.

```css
.footer-links-country .country-dropdown-toggle {
  color: #5d646b;
  background-color: white;
}

.country-list {
  position: absolute;
  top: -600px;
  height: 600px;
  width: 100%;
  background: white;
  border: 1px solid #73be31;

  a {
    color: #5d646b;

    &:hover {
      color: #73be31;
    }
  }
}

@media (min-width: 992px) {
  .country-list {
    width: 80%;
  }
}
```

If you want to change the little arrow which opens the selector, you can rewrite the “after” element with an image from your theme directory.

```css
.country-dropdown-toggle:focus::after,
.country-dropdown-toggle:hover::after {
  background-image: url(/wp-content/themes/planet4-child-theme/YOUR-IMAGE.svg);
}
```

### Split css code

Since our css code on child themes is located in just one file it can easily start getting difficult to maintain as it grows in size. To avoid that, we can create a new folder and break up our css code to blocks that make sense. Then we can just import them to the main `style.css`.

```css
@import 'css/variables.css';
@import 'css/navigation.css';
@import 'css/footer.css';
```

As an example, you can see the [greece child theme](https://github.com/greenpeace/planet4-child-theme-greece).

### Using css variables

To make some of the custom css code more maintainable we can use css variables. Especially for the things that are re-used in many places inside our code. Our theme colors are a good example for that.

```css
:root {
  --black: black;
  --white: white;
  --light-grey: #f6f4e7;
  --blue: #01223D;
  --blue-60: #007799;
  --blue-40: #03aad6;
  --red: #e51538;
}

.nav-search-wrap .form-control {
  background-color: var(--blue);
  color: var(--white);
}
```

As an example, you can see the [handbook child theme](https://github.com/greenpeace/planet4-child-theme-handbook).

### Using underline titles effect

![](../../.gitbook/assets/gplux-title-underline%20%281%29%20%282%29%20%282%29%20%284%29%20%284%29%20%284%29%20%283%29.png)

[Luxembourg](https://www.greenpeace.org/luxembourg/fr/) child theme implements a short css section to underline titles with a green gradient line. We had an unexpected good feedback on this effect thus we share the code here:

```css
.page-header-title{
  width: auto;
  background-image: linear-gradient(10deg, #73be31 0%, rgba(115,190,49,0.3) 100%);
  background-repeat: repeat-x;
  display: inline;
  padding: 0 10px 20px 0px;
  background-position: 0 0.8em;
  background-size: 10px 9px;
}
```

If you don’t use postcss prefix you can use this code:

```css
.page-header-title{
  width: auto;
  background-image: -webkit-linear-gradient(80deg, #73be31 0%, rgba(115,190,49,0.3) 100%);
  background-image: -o-linear-gradient(80deg, #73be31 0%, rgba(115,190,49,0.3) 100%);
  background-image: linear-gradient(10deg, #73be31 0%, rgba(115,190,49,0.3) 100%);
  background-repeat: repeat-x;
  display: inline;
  padding: 0 10px 20px 0px;
  background-position: 0 0.8em;
  background-size: 10px 9px;
}
```

### Building a contact form

You will find on GP Luxembourg a custom [contact form](https://www.greenpeace.org/luxembourg/fr/contact/). On this form, changing the input _Objet de votre message_ will open many different use cases for the user \(like changing his bank account\). An e-mail is sent to the admin on submit.

![](../../.gitbook/assets/contact-form-gp-lux%20%281%29%20%281%29%20%282%29%20%282%29%20%284%29%20%284%29%20%284%29%20%284%29%20%284%29%20%284%29%20%284%29%20%281%29.jpg)

If you want to reproduce this form you can simply grab the code here:

* The [frontend code](https://github.com/greenpeace/planet4-child-theme-luxembourg/blob/master/templates/contact.twig).
* and the [js code](https://github.com/greenpeace/planet4-child-theme-luxembourg/blob/master/src/gplu.js) which handles all forms actions, field filtering and event triggered.
* on server side, the [code](https://github.com/greenpeace/planet4-child-theme-luxembourg/blob/master/functions.php) is in the function.php file the `gpf_form_submit` function.
* and optionally the [css](https://github.com/greenpeace/planet4-child-theme-luxembourg/blob/master/src/contact.scss). \(please note scss is compiled with [a webpack script](https://github.com/greenpeace/planet4-child-theme-luxembourg/blob/master/webpack.config.js)  to minified scripts and scss in the /dist folder\)

### Adding scripts

Form validation, masking, animation, 3rd party popups. See [New Zealand child theme](https://github.com/greenpeace/planet4-child-theme-newzealand/) for examples / source code.

