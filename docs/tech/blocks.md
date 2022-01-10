---
description: Development documentation on P4 WYSIWYG Gutenberg blocks
---

# Blocks

{% hint style="info" %}
🔧 For more detailed documentation on how our blocks plugin is structured or how to create a new block, check the [repository readme](https://github.com/greenpeace/planet4-plugin-gutenberg-blocks/blob/master/README.md).
{% endhint %}

## Rendering Blocks in the Frontend

We decided to include **React** in the **Frontend** in order to render the blocks. This avoids having duplicate template logic, otherwise we would have a JSX version of the block for the editor, and a Twig template for the frontend.

When registered on the client-side to be discovered by the Editor, all blocks have a **`save()`** method, which is expected to output static content. That is persisted as the block's content in the database, for the post you're editing. The usual way of rendering a dynamic block in Gutenberg is returning **null** in the block's [save()](https://developer.wordpress.org/block-editor/developers/block-api/block-edit-save/#save) function, then using the [ServerSideRender](https://developer.wordpress.org/block-editor/packages/packages-server-side-render/) component and **`render_callback()`**when [registering the block](https://developer.wordpress.org/reference/functions/register\_block\_type/) in the PHP side. When a block has no content (it's **null**), and it has a **render callback**, WP will render it using your server side callback when rendering a page. This is the way our blocks are currently rendered, thus it's the method we are deprecating in favor of the React approach.

To skip the server side render, we need to output some kind of placeholder in the `save()` method, and then render the React component inside that placeholder in the frontend site.

As any changes in the block's **`save()`** method would trigger a [validation error](https://developer.wordpress.org/block-editor/developers/block-api/block-edit-save/#validation) in the block editor, we first needed to add a [deprecated property](https://github.com/greenpeace/planet4-plugin-gutenberg-blocks/blob/master/assets/src/blocks/Spreadsheet/SpreadsheetBlock.js#L24) to the block, to let WP know that we are OK with our block changing from null to something else.

This is just like telling Wordpress: "Hey, this used to return **null**, now we are going to return something else but don't worry, it's intentional".

To accomplish this, we created two components: **frontendRendered** and **FrontendBlockNode**.

[frontendRendered](https://github.com/greenpeace/planet4-plugin-gutenberg-blocks/blob/master/assets/src/blocks/Spreadsheet/SpreadsheetBlock.js#L39) is meant to replace the `save()` function in a block definition.

It returns a function with the same parameters as the `save()` function, so it takes two arguments: **attributes** and **className**.

So the function returns a [FrontendBlockNode](https://github.com/greenpeace/planet4-plugin-gutenberg-blocks/blob/master/assets/src/components/FrontendBlockNode/FrontendBlockNode.js#L10) which renders an **empty div** with some **data attributes**, which will be the placeholder for the block in the frontend site. This content is static and can be persisted safely to the database.

So Wordpress will only render that **div** with its attributes in the frontend site, then it's our job to make React render something inside of it.

This is done in the [frontendIndex](https://github.com/greenpeace/planet4-plugin-gutenberg-blocks/blob/master/assets/src/frontendIndex.js#L12) file, which has a new entry point in our Webpack config, and iterates through these placeholder divs to render the blocks inside using React.
