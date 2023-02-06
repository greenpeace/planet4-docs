---
description: Turn P4 Blocks into WYSIWYG blocks.
---

# \[ADR-0016] WYSIWYG Blocks

* Status: accepted
* Deciders: Development & Design teams

### Context and Problem Statement

Many blocks look broken in the editor. The editing experience was just ported from the old Shortcake blocks but it's not consistent with the native WP editing experience, which is made of WYSIWYG blocks.&#x20;

### Decision

Turn P4 Blocks into WYSIWYG blocks:

* Port the Twig template into its JSX equivalent. Try to simplify the templates as much as possible in the process.
* Deliver React in the frontend site and use it to render the blocks.
* Turn the LayoutSelector component options into [block styles](https://themeshaper.com/2019/02/15/customizing-gutenberg-blocks-with-block-styles/) for each block
* Use the RichText component where possible for in-place editing.

#### Using React in the Frontend site

We decided to include React in the Frontend in order to render the blocks. This avoids having duplicate template logic, otherwise we would have a JSX version of the block for the editor, and a Twig template for the frontend.

The save() method is a client-side method expected to output static content, which is persisted as the block's content in the database. The usual way of rendering a dynamic block in Gutenberg is returning null in the block's [save()](https://developer.wordpress.org/block-editor/developers/block-api/block-edit-save/#save) function, then using the [ServerSideRender](https://developer.wordpress.org/block-editor/packages/packages-server-side-render/) component and render\_callback() when [registering the block](https://developer.wordpress.org/reference/functions/register\_block\_type/) in the PHP side. This is the way our blocks are currently rendered, thus it's the method we are deprecating in favor of the React approach.

As any changes in the block's save() method would trigger a [validation error](https://developer.wordpress.org/block-editor/developers/block-api/block-edit-save/#validation) in the block editor, we first needed to add a deprecated property to the block, to let WP know that we are OK with our block changing from null to something else.

To accomplish this, we created two components: frontendRendered and FrontendBlockNode.&#x20;

[frontendRendered](https://github.com/greenpeace/planet4-plugin-gutenberg-blocks/blob/master/assets/src/blocks/Spreadsheet/SpreadsheetBlock.js#L39) is meant to replace the save() function in a block definition.

It returns a function with the same parameters as the save() function, so it takes two arguments: attributes and className.&#x20;

So the function returns a [FrontendBlockNode](https://github.com/greenpeace/planet4-plugin-gutenberg-blocks/blob/master/assets/src/components/FrontendBlockNode/FrontendBlockNode.js#L10) which renders an empty div with some data attributes, which will be the placeholder for the block in the frontend site. This content is static and can be persisted safely to the database.

So Wordpress will only render that div with its attributes in the frontend site, then it's our job to make React render something inside of it.

This is done in the [frontendIndex](https://github.com/greenpeace/planet4-plugin-gutenberg-blocks/blob/master/assets/src/frontendIndex.js#L12) file, which has a new entry point in our webpack config, and iterates through these placeholder divs to render the blocks inside using React.

### Extended details, block by block

A WYSIWYG ("What You See Is What You Get")  block is a block you can edit directly in place, in the preview mode.

The way to think about WYSIWYG controls is starting from the final result, for example, this is a Counter block:

![](https://lh3.googleusercontent.com/zFKnFzwLXKfnxl5Pwk2pUQougioYEh4F8yH2PxggCVfKv0sHbQSzmCa42SEVkLaOuEQF6qpBhHbNpI3TWRTo2dgcD0svw5zza\_yYSgcTLvuvQVnRSbXaPt26X\_VdWwgR40h8Kjc3FoAi7zjT-FlgPQ)

To make it editable in-place, as it is, Wordpress provides two basic ways:

* Making some texts editable by clicking on them (e.g.: title, caption)
* Moving options to the sidebar, specially for any controls that are pure configuration and not visible, for example: progress bar vs dial styles, an API url, or the tags for an Articles block, etc.
* This is not specific to this issue but this is a list of places in the UI in which we can inject things with Gutenberg: [https://developer.wordpress.org/block-editor/developers/slotfills/](https://developer.wordpress.org/block-editor/developers/slotfills/)\


This is pretty much the way native WP blocks work, the basic principle is: there should be nothing in the editor side that is not rendered in the frontend. No noise.

So how do we clean our UI to the point that there is nothing but the block itself (currently the "Preview")?

### Counter block

For example, let's start analyzing the Counter block, from top to bottom:\
![](https://lh6.googleusercontent.com/Gk-hfoxoMK4iLLXjPCXKWDjhEIDTrxqAhgxqGTWkA2DR5EQGkRflfwbTSj649qPC2Xjw777dv\_oXYnvSrVXw7S546xBPlqL4h\_l4kwK9UZRqSQSR3\_MHgs-L4q6CCPh2fQFyW0g\_rBxSlChHUW1uDw)

\
What style of counter do you need?

This option changes the layout but is not a visible element of the frontend, so it should go on the sidebar. The old shortcake UI used to cover the editor, so you weren't able to actually see how the block would look while configuring it, now there is no need for so many thumbnails and explanations, since you'll be able to see the changes immediately.\
![](https://lh3.googleusercontent.com/HPyjM1qcjjeefzEZr9mP13\_M-g36Ee4xZW-p9SxmSaIcYnhXraWVRlBbOZAo7A-Zy-XSIT7B-gn4zz7hwSu59Hy18A5Q8aW-8BZ4vd\_1rZi6u5DGtqSDfvlLB---Q-9dL7yExOPid-bxW1aYbRIUtw)

There is native Wordpress way of doing this, it's documented here:

[Automattic/gutenberg-block-styles: An example of a simple plugin that adds a block style to Gutenberg.](https://github.com/Automattic/gutenberg-block-styles)

So we should probably convert this Layout Selector component into "block styles" for all of our blocks.\
\
![](https://lh4.googleusercontent.com/Q38svTUwvRahesnImXLge3-ZyElQBXKzM48it4kViPjX1lvVzPYkAlvGRpRt7MJk3ZF7oX67ibPRGmEPYeqMm\_T2qZWb9mnUn2RMaL9nlP17DqYt83rcgLbvFwYiVjtnpd3pKQ2jQhraXZoMocjiCg)

Title and Description

These are pure texts, and they are rendered as-is on the frontend. In this case, these fields should be removed, and we should make the Title and

the Description editable in the block's Preview. \
![](https://lh4.googleusercontent.com/3LGtxwbKiZtiAJnFMjqYhjiIWBxfTSOSYa6p6nUSX5zj9HTUayxbJe5k3KzYD8zk37Ytd31dDICjRDrhKXav5n54OR45Dgcmfmz2YLycfqbiNZO3e-VTp53XI8l4jv13P7t1nXV51sbbG7j8xDjxzQ)

Completed, Target, Text and API URL

These four settings are used to assemble the final text of the Counter block. As the text uses placeholders, we can't make it editable in the preview (imagine you type "%completed%" and it instantly turns into "500" or something), so these four options including their help text should be on the sidebar.\
\
![](https://lh4.googleusercontent.com/NhkpBb7TlaHQ34Gt4HH5BYFIqa53pmsDhYpeIt0e2SiG\_I4vaZv3i-yQWB0xyZHtvHbwjYg\_iRZ\_Tusy6NorHhc-8grqK12ioFUNXqT7568vQ2fsJ-jr9A2qCUFm\_vSte\_lEzQ6PLnD6aA3G4bdn-g)

And that's it, the rest is the Preview, where we should get rid of the "Preview" title.

So, the end result after these conversions is:

![](https://lh5.googleusercontent.com/QbJO1h7Q9Op2mm2Ku6RsUrHNJSK5\_ED1vC8guDk-Ycjv9wiDR8US\_zBWD2EKxKSnDzTelniRovs-2IJbWI6wKvsF\_7VqJ22vAidp4eHUZA\_7Soi5gz3DhsQ1rtEp7a\_7lj9M60FMl-doG0te7WU3PQ)

### Gallery block

Before taking a look at our block, let's have a look at WP's native Gallery:

#### Native Gallery Block

This is the native Gallery block:

![](https://lh6.googleusercontent.com/psfh02ekAb7MtabA-KV8nAiiRy-jB94a8rRByvj75WiFmfmWNlKlKEbaJuVZKjD5sleeVZOdxA6JH1PwIvZEYyCUU6ylRA314cdMJxCjaMGI69Xgp0rqRw6rMnvnRJRgJc2rbduMrkYiXKApUejcRQ)

The media library UI for the native Gallery block has a slightly different look, we could investigate that to provide custom titles like "Create Gallery" in the UI.\
\
![](https://lh5.googleusercontent.com/qWWiCdF0\_WWL-FmjQudnoHZ76xXQ\_-dAIh0nKpfzFDXAYQuJfXVV0PRRE\_cEHfaupj3rgiAi5nYIgargXzQbNTrams9VdnMUJtvKPb7MMPFPVsDW1HKmierD0a9SmoC-Ow-XCosZHaFkmP9HX\_4iog)

Another example:

![](https://lh6.googleusercontent.com/RaCs1BSEXxXYuqHAJbweQwUExS4RiGeOJtvLS6XGmZM6yM5rz3nQ8f7jnXgbnvXX1mpHJpb1f8j1VEu2MIaqzSXC-Z5Irq-89Cilu6Wpto\_YNltpCqqzLsZqLt3xlkAHTJr2NtD1JqLbrW5VMpaatA)

Then most options live on the sidebar.

![](https://lh3.googleusercontent.com/0LswFbayJuFIFGQI5cimd5HyqURF-38B0zjr72a9Ce101M4ig\_XxChvFPWZmGf2IsF3ArZXaEHG2PuJcPTBrWvyjxvelrq30pHk5VExrFP05gf8Re3VJIr8oG8ULgiXwJBuZSoBs9ck1qTloGwQYrg)

There is no way to select focus points on the native Gallery. These are the options for links.\
\
![](https://lh6.googleusercontent.com/W4AEjcaYHEsHQrVNnxwvFKt8F8VXh\_uOou8b1\_qE2L2OVxKjZSY976mm8S2UfwQBptn3nnhmIpqG4SFp81\_bStr404vXVX9IIauLF2TWrNazsLZbgmf7RFN3nfDpOxlJlbSZH47T7nKoU8KUhghRIw)

#### P4 Gallery Block

The Layout Selector should be converted to Block Styles:

![](https://lh5.googleusercontent.com/7YmC6McNyyhnnJJ5tvo7xRGC\_mrncLCY0Vxs9YxM-nbstNtWTc8D4Uth6XQdHXeBJTYoxz2duQIHr\_phiUsm2e40NSBnsPOwxKB4ZA9sKHCDWjx6uJK2VjIM\_41gPploxlcizYN9nDTA4UC2tHyrEA)

### Articles block

The Title and Description, and Button Text can be edited in place, as they are not linked to any dynamic / automatic data from the site.

![](https://lh4.googleusercontent.com/ZfkA9hOYydWigkTkWxMu-vEz1Z5Cqp3SdGzrfXDIqg1WeAgkd7zsxWxpR4dbtletqmG8Au-RXY3H3MIirk8hkjUrrFIwqxcPPyfCZ-HG5VgWCo9vETpeDSBTqAUB3hrEYqXdr9LQwaM2Y1jG-f-DrA)\
\
Then the Link, Open in new tab, Articles Count, Tags, Post Types and Ignore categories options, can be moved to the sidebar.\
\
![](https://lh4.googleusercontent.com/Nrd299JyXNzUDJKd5kzIScv9DjBNi-y3bHADnfISJooHbngy7Go5PBmo\_HPpSU-5u4TAHjBK-PXsqKFr7rKvlEJ5TAMuzn3Fn539midgPlP-gUd\_GVaCczZ0KOJ8qIPEBjVo032QILAvfEd0pkz18A)![](https://lh4.googleusercontent.com/Nu1G8mzbFl3kG7KRCm3NJTFkhXc7X6HKG3nT3lYO15KJ\_\_VI66jvDF3oi4PV0sf8axFkdeVnM1IZMkyJy863hSXpgb0ekafR8FfbK0QJhLk58p309-VV9Rxg24TP5zXuiTnmIn4Rm5-bjxHudhpB9Q)

So the Title and Description in the current view would be editable.\
\
![](https://lh4.googleusercontent.com/gFm4ZNSw1Pp\_Jt4Uw2uZ8WBkiUDapBttClkhSg9\_C\_PmwBMQHjvQnVQOgg5VSBrvmXiZcQoFJWTeUISgPfDdlU4tbbjBi8zqRzbtgtQ0N8vJx\_\_WRSP1GvMbIRT1NGNWox88K4zrB9AOt\_-h0htNzg)

### Covers block

The Title and Description can be edited in place. Rows to display, and Select Tags move to the sidebar.\
\
![](https://lh3.googleusercontent.com/Q0-Cv27eoJG5IzLo9vYbD\_nW8AwbtzSbmtMeLH6yGQA-H4OcHVdUxt2GY44VjAThZpagfhkyqfEbJVkfir0WmtRy14qzgDbcTfwSHxElP8lmtl\_HeylLaiRAzjXCAaIsgk\_WTaHmHcuBcacM6sw0qw)\
\
So the Title and Description fields are editable in place in the preview mode.\
![](https://lh6.googleusercontent.com/5wTKGaT8E8G-fFeLLN2x\_6B2xe6APoX8shlFnmszjfqxl5I\_5zmIsFye7fPG7Yw-cgTXgRxsgrAcXuWETVi2HKnV40V2Ld4RZVwZvnSyZvGQu35mnQah2oDWBkZuiUT3cC4f1xX\_L\_xUHSI4\_vCuzw)

### Social Media Block

Again, Title and Description are editable in place.\
\
![](https://lh4.googleusercontent.com/F7F2WnP41YGJoO7Wh2UUsPcP1KicfLT0O3OHH-Ka6yIWQoerywOoTLYAhfgyvYr1a9wotg9qWVVY5wFyUE5hNlRK95jJ5xuTEERpuCb4ZX05xBchcnnEcvHQ3dzFsXlpLS1XIlGT1aO7cZTEYm5eCA)\
\
The rest of the options would move to the sidebar:\
\
![](https://lh3.googleusercontent.com/uA34ljtpIsoAY6J7k793SY-OQUbyNsBn7RQrzmXpsOUQlJOtO3arA5shutBOqMffAxutJMA0xcCFDC9rjLUOSW0qo201O7WfziJ4W43S8m2QxvJFYMQFToGxO0OeIFJLzxxWfDirFHVx32znCimLig)\
\
Title and Description in the Preview mode. There is no preview for the Social media feed.\
\
![](https://lh4.googleusercontent.com/XLT931rlx9LXpi4iQ5Cyhp37B8jnWiprShfInRXbS2H6fam8E9xGHxvBMNTbEeO2CuMvGpco5RPrvEv7qZ3mvLKMqxgMY3nYjsz8s96SnXGPWxQWAKPd06TSt6igYK8dElKeOnOjQiDvvOU\_Urm6YQ)

### Columns Block

\
The "Layout Selector" moves to the sidebar using WP's "block styles".\
\
![](https://lh4.googleusercontent.com/fmQpUDFx7exyMVe0hv7miihl0vyDy9JwpTqoA\_EpZ6iZmaXKYNdqw0hLJs8Mh1RZstbcal-iKne5TGl-1ORNlJXmFQIGd\_A1EpCVFrS6-DVKpmoEzWB-W4BG3AsrzMAYp9AL9xJ-J6FBC5acyv5qpQ)\
\
Then multiple columns can be added to the Columns block. The cheapest thing would be to add the "Add / Remove Column" options to the sidebar, but we have other alternatives:\
\
![](https://lh6.googleusercontent.com/0XhGDNAV-GyvJ8p2E-1F20T0jI1OmkwH3-8wX9vCT2n8ZYbaw67i2b-CaYq06mSgCz6gS5VRAsLxMG3ZXLlEo2jQd7SEBRddqtyZpRF9RW6-wLb3B\_R1y2m7lasjk2UCFzJ2Qs\_KeNs9KlhYf86AUg)\


For example, we could create something like this:\
\
![](https://lh3.googleusercontent.com/1ZB9N2P9f8FmAQon0h4WV2QCXs3TZ7hkOK2MCY0bXtAzFwuyc0xrRO73LNxWFsij9\_WKAMK2qxSWL7gvUVpwBmhf2SD24Og4GfoH4\_1vvA11IQs1SQYxEZmRnT84cUvV1K5Wy-Xw3lF\_BS6eW4kr\_w)\


And then as you add columns, you'll be able to edit each column's properties. This requires a bit more research.\
\
![](https://lh5.googleusercontent.com/gCjwIhax8aJxbfMz44AN13HCrXrfxzDx4QQDf7PHOiQu7aI1wv2dyhZiEK\_SeAu8mURr4oihmoN5xRqIUkmZwKMYOYdObMRULosvDSCpGi2VPlTaN-42hkRD9Q2laDS3H2rs0YEE0z0sbuHyDUX2MQ)\
\
This is the current preview, showing the possibly editable fields.

\
![](https://lh3.googleusercontent.com/JTZTrElXhx0t\_wMto\_N4DAlZAvEWdQHMPLq1at0n2VqymAjJfFVWDwuHzBxuymtYj7FjYjx8LZzTMgg8FmLU483XUeADi26ROFaj1mG\_lloq-EPcZj5EJpqx8D2K--zdsb97hWAlmg2mrqykBakf9Q)

### Cookies  block&#x20;

Again, the Title and Description fields are editable. The Name and Description fields are editable in-place for both the "Necessary" and "All Cookies" sections..\
\
![](https://lh6.googleusercontent.com/LjFDNOKVIZnH6FHi\_v42cDErSxdNRDJ\_JB-DAmF1Lgd0jRpMpRDDDOdrMmWvUNdhSZIe7Mp9c\_YszjuitDI9quJYBwGri3HLBt2EGGusekC8opxsHwS33CRaoT9bvu-qHqabW3\_4fuCB0uyuJpsOqg)\


All titles and descriptions could be editable in place in the preview.\
\
![](https://lh5.googleusercontent.com/X28jmePVXXaeJjEGbcXRqfa09n2sq0eGcoM7\_0dODREPV5NY\_W\_ondY6ukVEvene2RDhjnH6Arq2BwCG7s-9loRzYtw6T0rxb019Lwf5lU\_\_jQgjC08gnPl7wFIi-BiPBCnSWP3vJnqJJcbqpFRuKw)

### Happy Point Block

The Happy Point block is just a background. We should probably use the typical UI for uploading pictures in native WP components. Maybe we could add some placeholders to show how the form looks like in the Preview.

\
![](https://lh4.googleusercontent.com/23mhBaD818UHYTDjSD-VOuZ4JFj7m9O4ayIlU7TmhFEDatAC4hRCZbcM5bcY9sIu5QVdYm9WBbKxEg2hwU0v4rzj1\_RJ90hMN4q8RT3HtbFbCpklcEvZXMCUQ7syxCVtTaQRg636j2Whl-Vg9QpuxQ)

The current preview:\
\
![](https://lh6.googleusercontent.com/O9PRDU4KVhIVH3rPiLHiXBVMBG7WQTsqAP1JGDt4dhr9oi1IQ2uqGzjPhBvnNvdjlY-daero-9-37vL7xpqQp84bJO0uk0gwHVZw86fsIooGYilhTEuUC88Y8HNmXUssbKhUVA0bNMpYSZlyOf1zSg)

### Split Two Columns

In this block, the two columns are independent but behave similarly. For the left column, selecting an issue will fill all the fields for you. The Select an issue field could be moved to the sidebar, along with the Issue Link Path (an URL) and the Select an Image button (or we can find a way to have that in the preview). Then the Issue Title, Issue Description and Issue Link Text fields could be editable in place.

\
![](https://lh3.googleusercontent.com/0pvV7W24soNi2B1NYhkV2ybxk\_ROP4EwC1uGGQ77vO-uNJ47cBJDhUZkV3HK89cpCyMbGz8WR5iVQXFxXzYz8NtC4mEMdeivjuDoRrB9FO0YBOLaeJ5-Qib6agnLTc33mWAzeEhPISf8ORPhtv0fqA)

\
![](https://lh5.googleusercontent.com/E3NlhBYn\_dEaTv23kdkrC4LdTm2UG1C6JjIboDLvxPfEMlVRWw4pu1hrGmo5YslT7P9eVk9jqihHPx\_2b33Nov220cWn3ftdM99-ABZdfCxycvF6njL7lpA2-4pVANj7-pNG3XTF8OMJNwgTb2KyJA)\
\
\
For the right column, selecting a campaign fills all the fields. The Select a tag field could be moved to the sidebar, along with the Campaign Button Link (an URL) and the Campaign Image button (or we can find a way to have that in the preview). Then the Campaign Description and Campaign Button Text fields could be editable in place.\
\
\
![](https://lh3.googleusercontent.com/zYxSBDA4MZw8kikpe7eInT-QjngURNoZNn-RJmEcPlLJENOc\_Twf-8ls0akIxhrkjVBvbNOv4Ry8cItyCBw6NuqT0oBdRQJo6lD4YYcTZefhXtJ19-Gl9XYGLacd\_lRE58yLZBy-YvIf1EypZwVeSQ)![](https://lh3.googleusercontent.com/UB1nrZ43yBIsodRpYdeSItut4pvzEcni\_tFmvavJdb9MMNS4Mz9IHbdVrqvPjiaN1ZXaQ0w54MuxmwFlMN5IkHIDMaBCgXkBz-Y9HpysrlYaCDJLVVM7eoILb1XS8HAabEwkivmi8Gx6JSU839qb3A)\
\
![](https://lh6.googleusercontent.com/JIh2lx4nIftTxmVNHplq\_q-sOSr3dqLDZPX3MtkamjgYUQwsyNDyOuGRQiuRm8hbvN3RXQmOAR1KdWNCx0Ss5djziaOl5x\_ney4CvHppjLuD5TwjIdpQP8ZjmYAh-wybc8qII2jJ1V0y2JUBAOxTDA)\
\


### Carousel Header

The style options move to the sidebar:

\
![](https://lh3.googleusercontent.com/Py9assqCcdgu5of--xo8NllaMvhS8oQnhS0RfmZv0sQeVSWD1p1d5v6NgDIXD2896WLjzHodj-luWsb70ZPfEo9Qjlbj5mSuiN5adJ79ZGp0Vwv4\_6qwkaxFCHdlIMAO\_U-\_i8pCtrQoQtEGB2CF1g)\
\
Then these collapsible slides could be collapsible sections in the sidebar, with pretty much the same options.\
\
![](https://lh5.googleusercontent.com/FeD587VhsK9DbLsUV17lXUPvdwy1vU8hzOESytQjIrQPMtVlh2N6SQNijrHpY7fMeRJOT\_mpguTJ07jNvNPwNyFbtw1T7d\_fI8ACdKRXWpyElTxPAZxIHp22L7Rf-jEM2kat0Mxotre8z7PiKv54zw)![](https://lh6.googleusercontent.com/2X6cJtiB0Mdy1Kk4s-c\_yYa8LS4sr\_m\_2Da1\_NK-60r3ZzXV0meLeOobR-YMlEoE0QAXC0hParW3baaIseuQSSs3Yr6QEt-EBgB\_uNeOPAu530B85Y49vNsogPEbk2aEcGdLFCeQvjemgBF4Li3ReA)

\


As the slides move, I don't know if it makes much sense in trying to make the captions editable in place.\


![](https://lh3.googleusercontent.com/AqunZsl2Aahs4cifdaHMdhMEvrZN5SvKqbmt\_axDOX5eTX60Wi-tZF4t6tnwuz13zJqCBkMIpRdFli7drsU7tHnd\_0i7Fue3zdqthXQZvAeTO93Eqt9C80gIdFivvko0DVf5TS3Ve2z8NuiXpz61tQ)

### Media Block

The Title and Description fields of the block can be editable in place. The video poster image option can probably stay as is, it's pretty consistent with some native WP blocks.

\


![](https://lh3.googleusercontent.com/69ddTPi8y5YSEu4kX4NeI1xC8KJsf5f18BuErylhZY5xY6Ce5RDvlA6spzLJvredioYmtKS15jcqVy31JVoyqf4AcSNEqETBQ1mClbfrZpyLwo20dS2L9OFthfyPpsh9iUqvy2gFrVasWOYPr1VauA)\
\
Preview:\
\
![](https://lh5.googleusercontent.com/ucPnmgLe7qS-HgcyyjJ\_Lz1tCnrcQCUc1fpG9ANL2GsA-jDpkDMY3Mtfwpq-64I7\_9B2qzj-tLmW2TfK6uE7JUn\_t1mFsNu0tWeIZjHH6cjXD0BrrGGjx4GN9MecW7XaojOaGanuHAJuPwJrkzfAaA)

### Submenu Block

The Submenu block has no representation in the editor side right now. We could fix that by adding some placeholders (or actually making it work, maybe as a second iteration).\
\
The style chooser can use WP's style chooser mentioned at the top.\
\
![](https://lh5.googleusercontent.com/YJe0iun9TFOEpIauOHbKG-IuRWSLQgR3LGhH8aoIkdDoce3o79ZxX0zIA6QdODV9z46NRVAOQ7UK2bTEJugVCMnGHL2IzsevhpMxJNShJKrPRquf5BpRumBjr7\_AmCtkAzJ9QusOFMPKKSQ5ToAwMQ)\
\
Then the Title could be editable.

![](https://lh4.googleusercontent.com/7NdfC3phDlRusqJIWoui23rEhveRNB9Xlk69J4vBux6qUY6Ru6wJ6btjF\_bWKRQIQ6hoJfRbdFAj6u9rw1EBc24Na38i9ptyvw1X14q3xOlAlvdXB-ZFMzRvqHEfdCAYuBS3aiSlyDXdaTc0pcFKyA)\
\
\
Currently, it has no output in the preview:

![](https://lh5.googleusercontent.com/PsKO9C66D4GlkkKD7NKkw2hF9A2vlCxhmjgapDynhHQTeHN7s7\_S8awoiKdODugI5bJiuDhU20cKDJsb98o0WDIaBzYPAI\_ZnF1Wh88v2AmTkD7bpm9jF0s-LFKiuJm6R7KAv6j1r9XB124baeW-NA)\


### Covers block



![](https://lh4.googleusercontent.com/7NfSfMTasv6ps7wZQ41KM2FbNh9LY6b-AgEUWVOq\_S546JC1uJHjKUNsDobmknLLr1HW4ddYUB4eV1kB5TiqLYSUKG84w1QpQWY4TpWIGcug6gSI2R-AOw-YvDuyiuJc8qH9arJscanEspsaWeC8qA)



We could move the covers style to the side bar with the block styles option.

« Rows to display » dropdown menu could move to the side bar.

Title & description could be editable in place.

« select tags » + « select posts types» + « select posts » fields could move to the side bar.

### Take Action Boxout

The Take Action Box gets all of its data from the Take Action Page option, which we could move to the sidebar:\
\
![](https://lh6.googleusercontent.com/EH4xtbZF6oO1TSR3W-gnvuLltc8pfiU0UKzasKHi7WG5xGWK9jg4XVk9k2oLuqq8sJ3KQ\_BAt2BopkEtodpL8xBXu5cJKY1mQKrmUtZApo6Xc8ioj3K0SGZGF2cWSBXLQjQuwezZIxOCLfbx0BUfpw)\


All fields can be overridden, the Title, Excerpt, and Link Text can possibly be edited in place, the Link URL, Open in a New Tab and Select Tags fields can be moved to the sidebar.\
![](https://lh4.googleusercontent.com/Mrp8VT6OWma48bizw\_ff1lVvBOoqrhy07PnambgD0msWLAj0ahqtBln1xHgIiUYkJhfKLiRQVTBExvUp4fkKxrR-lkMPKJETalQGA38K1NGUy4Or47xMQWXHB7OcPvo98MU7XXen5hr3uLycwqSxUw)\


The Background Image could possibly be selected in the editor with the same UI Wordpress provides for some of its blocks:

\
![](https://lh5.googleusercontent.com/QSWq3crASmDFdTbKwFXHU2sTvKy5E7pODtWUQaSKlDYt-NLu2Hs7qR3uJnZ5rbEUOKUnHu46XZYqk\_WNtFJQV-QlodgydRnc-Sa53PmKHkcEYmdONRJVWMTXhzzHpXza0SQUsg-GnMzIZAH2ByAdHA)

\
\
![](https://lh3.googleusercontent.com/RXR5wDYhvXVjXSyY7Z153iLZY-knKmswVMJGtu6ACBDj36r\_8Sgd8LnOE69xGURER1FbKiT0DZdTg\_I\_xPXK9IO5b4oSg2RJBC-u9Fhze16hdkOl9n6VrFG2QVB7MMXUjJVhHx9RG1kEbjEme6boNQ)\
\
![](https://lh3.googleusercontent.com/3rkmoIU2yPItQ0fSIASevdRzr6gjWenQ-ijKpSPPmPqDflb-Njyls5wO0aZEvgG1Qh97G78fexgRh0-At26yBp9UpIbnRpw2h9ag3QHCUSe6OmLlNOZdZwnNBPmoa3TOGeAGg94N\_KXXP8iuM33rXQ)\
\
![](https://lh5.googleusercontent.com/xD8CCyae\_zGlA3lP40h24-CfbTlSRUjr0VR39XAGJyN3J\_1ucF4WfayvK594N9gS78TpRzoac22TH8gUNya11a\_oOMtQ2z2PoSq-Z79ZSxgQkG-WzKQZJgSPpD448ubu8WC07yv60HfDte6f4\_tPNA)\
\
![](https://lh6.googleusercontent.com/mLhbm50DICanMD7nwybgdNzcindcf4AxXadGOFDP2\_6NrjVf70U5reb4l-IETGipNqebXl0L6rmIP1L5kBN\_7GjtR4oeXImKtF5l5cYCsQoiSKn1sZ-BAPcYBFtmIbyXNolGMfo8I1sVJaYYBAGtzw)\
\
![](https://lh3.googleusercontent.com/svkGyT0OUkYJJYHY\_YO48IDHCUbnlPGAQJ8jeKQs7a\_mEgQKlO4rJ1EHVQNEuW70gTgRMVqIoCK3gl805lZFQXJ5gi5E0nGXGXQVLCjwv9A-Rmk7FXE9OrbZgUcE26Il8XOOYYl\_Gk80caOnj7U6cA)\
![](https://lh5.googleusercontent.com/1Bmmz8ZJRluSrePo517omxJF0IWqZ5mpnQrgff2Unpxf0froNX2hRUytTrZ6EPpp1yHeEclHTVD2MghbsNEYB-wsDZtEU-9WxHHQWfADScrK0NptqjPQZFcGA00IMURpYhLqdidupYgjGEWqDFQ\_Lg)\
\
![](https://lh6.googleusercontent.com/O5cySbjyf5ovS0O1YxC8dbAmwpRNG9Ag890aZHXw8-dGtphRbrh9mQM0kDo3AIl3qbvS5eaI8F2HwEE0Fa2gRItoAiFW7ue5-vKkmIcAJm5ASVPF0byFl\_CXkcUePH2Yb7Dx3cKUGLQ9Etm2waWj5A)\
\
![](https://lh5.googleusercontent.com/4Frk8ExclPUWXB6OM01XhWALImvnWMkDEDtDrX8xTYulG5V-4rv5PTN9vFTzIkiHA6QDEKUVpindQZWFdMmfe9TS6g2TIwpFsQDfWOdOogvUdjGxh1mSZbmbAFAOSQY2KDD-7U3pddEI2LZ1Fd3-xg)

### Timeline Block

The Timeline Block relies heavily on a third party JS library.\
We can make the Title and Description editable. The rest of the options (Google Sheets URL, Language, Timeline navigation position, and Start at End) can be moved to the sidebar.

![](https://lh6.googleusercontent.com/R4Zez9lTvbbdIGRdB9Pt18nCutdWMawqDNkKNGqxMNJsANaZu9ZgR6MKH9HghXXNNazvk125dR5hT4-Qbggieq68loT6Ek0BMYa-7EuHg\_1vRsgAXVoCCJJrT63uf-u3CE\_4n5TyvgmHZxNYFyMYlQ)\


As for the moment of writing this document, the preview does not seem to be working:\
\
![](https://lh3.googleusercontent.com/lo7eE9jNJvJzYsdG0eq5JvKqbhzH49cvxuc76H2NJgc\_ATdQWp\_o9S4PchCMWm1DxVct-fcI3iBgT0wIBgdcig9FpRpUmFxflVXeMnySZZ-watKw0OECPceTFsULsdCXMuQM9lv1HdfBhPQB41ZAlA)

### EN Form Block

These would be the steps to turn the current form into a WYSIWYG one.

The Layout Selector can be converted into a Block Style.

Engaging Network Live Pages and Select Goal can be moved to the sidebar.\


![](https://lh5.googleusercontent.com/CcdIsMYhCsqsb-PlbzOS7-uaQa6d6bsmdQHM1aJ7BFkmDUaAUJxj1aBM9QtGglWGneXUqDg9ebqWVcp6AeRiOr01BRGAAySe\_4dAZx71-pStdF\_GGcu2UdPGagi\_oj8wtUotbEyjhf014kxvN3XCng)

The Title, Description, Content Title, Content Description, Call To Action Text and Text Below Call To Action fields can be editable in place.\
\
![](https://lh6.googleusercontent.com/oqYXdffn-nS6rgJcQe5BKREsHWaZa0UcvthrCznimrt32fFVW6xX9WWz0OONprGCdtSsE5WEfcrm48gsJs0E\_pyGte1OTg6nr\_XShru9iIOhVWzpXGmf42Gy-ijLT6oAIc9lAtOXnCgj6VOiqNmjZg)

\


The Thank You message settings are not visible unless you submit the form. So we need to decide what to do with those options. Maybe we can have them in the sidebar and have a way to show the Thank You screen on the preview also.\


![](https://lh5.googleusercontent.com/6jou25tmnPiUioRoPB703KiwezyBpBzenpprlsoWJzdCDtYXs5KZ4eynoQng\_eUV\_bIY5LrkyHWuZEgKn8\_Bia7w2dZ0tUOr7TL4dG0Ce0WvWCxO1JD03\_Y8\_qtlzaHfyqsSFk3cWSdvN5LdNXYU6Q)

\
