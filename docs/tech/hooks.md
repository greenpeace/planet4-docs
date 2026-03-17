---
description: List of the Planet 4 hooks
---

# Hooks

This document outlines custom hooks added to the Planet4 theme for extending functionality.

### planet4\_sendgrid\_sender

* Description: This filter hook allows modification of Sendgrid from address.
* Parameters: `$sender` (type: string).
* Usage: Use this hook to change the SENDER value for Sendgrid PHPMailer integration.
* Example:
```php
function update_planet4_sendgrid_sender( $sender ) {
    // (maybe) change $sender.
    return $sender;
}
add_filter( 'planet4_sendgrid_sender', 'update_planet4_sendgrid_sender', 10, 1 );
```

### planet4\_permissions\_policy\_header

* Description: This filter hook allows overriding the Permissions-Policy HTTP response header value set by the theme. Return an empty string to disable the header entirely.
* Parameters: `$policy` (type: string).
* Usage: Use this hook to replace the default Permissions-Policy header with a custom value, or to disable the header when not needed.
* Default value (if the filter is not used):
  `geolocation=(),sync-xhr=(self),microphone=(self),camera=(self),payment=()`
* Example:
```php
function update_planet4_permissions_policy_header( $policy ) {
  // (maybe) change $policy.
  return $policy;
}
add_filter( 'planet4_permissions_policy_header', 'update_planet4_permissions_policy_header', 10, 1 );
```

### planet4\_csp\_allowed\_frame\_ancestors

* Description: This filter hook allows adding trusted domains to the frame-ancestors directive of the `Content-Security-Policy` header. When additional ancestors are provided, the X-Frame-Options header is omitted.
* Parameters: `$additional_allowed_frame_ancestors` (type: array) — array of domain strings to whitelist as frame ancestors.
* Usage: Use this hook to allow your site to be embedded inside iframes from trusted external domains.
* Default value: `[]` (only 'self' is allowed by default)
* Example:
```php
function update_planet4_csp_allowed_frame_ancestors( $ancestors ) {
  $ancestors[] = 'https://trusted-domain.com';
  return $ancestors;
}
add_filter( 'planet4_csp_allowed_frame_ancestors', 'update_planet4_csp_allowed_frame_ancestors', 10, 1 );
```

### planet4\_youtube\_embed\_parameters

* Description: This filter hook allows modification of the query string parameters appended to YouTube embed URLs.
* Parameters: `$query_string` (type: string) — the URL query string appended to the YouTube embed.
* Usage: Use this hook to add or change YouTube embed parameters such as autoplay, controls, rel, etc.
* Default value: `rel=0`
* Example:
```php
function update_planet4_youtube_embed_parameters( $query_string ) {
  // (maybe) change $query_string.
  return $query_string;
}
add_filter( 'planet4_youtube_embed_parameters', 'update_planet4_youtube_embed_parameters', 10, 1 );
```

### planet4\_datalayer\_form\_submission

* Description: This filter hook allows modification of the dataLayer event parameters pushed to Google Tag Manager on Gravity Forms submission.
* Parameters:
* `$event_parameters` (type: array) — the dataLayer event data to be pushed.
* `$form` (type: array) — the Gravity Forms form object.
* `$entry` (type: array) — the Gravity Forms entry object.
* Usage: Use this hook to add, remove, or modify tracking parameters sent to the dataLayer on form submission. **Requires Gravity Forms plugin to be active**.
* Example:
```php
function update_planet4_datalayer_form_submission( $event_parameters, $form, $entry ) {
  // (maybe) change $event_parameters.
  return $event_parameters;
}
add_filter( 'planet4_datalayer_form_submission', 'update_planet4_datalayer_form_submission', 10, 3 );
```

### planet4\_form\_cache\_purge\_post\_types

* Description: This filter hook allows modification of the post types that are checked for cache clearing when a Gravity Form is updated.
* Parameters: `$post_types` (type: array) — array of post type slugs to scan for embedded forms.
* Usage: Use this hook to add custom post types that embed Gravity Forms so their cache is correctly purged on form change. **Requires Gravity Forms plugin to be active.**
* Default value: `['page', 'post', 'campaign', 'p4_action']`
* Example:
```php
function update_planet4_form_cache_purge_post_types( $post_types ) {
  $post_types[] = 'my_custom_post_type';
  return $post_types;
}
add_filter( 'planet4_form_cache_purge_post_types', 'update_planet4_form_cache_purge_post_types', 10, 1 );
```

### planet4\_menu\_config

* Description: This filter hook allows overriding the admin menu editor configuration, which controls the maximum depth and item/character limits per menu location.
* Parameters: `$conf` (type: array) — associative array of menu location configurations keyed by menu location slug.
* Usage: Use this hook to adjust menu constraints for the navigation-bar-menu or donate-menu locations, or to add configuration for custom menu locations.
* Default value (if the filter is not used):
```php
// Configuration per menu location.
$default_conf = [
    'navigation-bar-menu' => [
        'maxDepth' => 1,
        'depthConf' => [
            0 => [
                'maxItems' => 5,
                'maxChars' => 18,
            ],
            1 => [
                'maxItems' => 10,
                'maxChars' => 32,
            ],
        ],
    ],
    'donate-menu' => [
        'maxDepth' => 1,
        'depthConf' => [
            0 => [
                'maxItems' => 1,
                'maxChars' => 18,
            ],
            1 => [
                'maxItems' => 10,
                'maxChars' => 32,
            ],
        ],
    ],
];
```
* Example:
```php
function update_planet4_menu_config( $conf ) {
  // (maybe) change $conf.
  return $conf;
}
add_filter( 'planet4_menu_config', 'update_planet4_menu_config', 10, 1 );
```

### planet4\_feature\_\_{$name}

* Description: This dynamic filter hook allows enabling or disabling a specific Planet4 feature flag from code, bypassing the admin UI setting. Replace {$name} with the name of the feature flag (e.g. `planet4_feature__cloudflare_deploy_purge`).
* Parameters: `$active` (type: bool) — the current active state of the feature as stored in the database.
* Usage: Use this hook to force-enable or force-disable a feature flag during a release to avoid a chicken-and-egg problem when code changes depend on the feature being active.
* Example:
```php
// Force-enable a specific feature flag.
add_filter( 'planet4_feature__my_feature_id', '__return_true' );

// Force-disable a specific feature flag.
add_filter( 'planet4_feature__my_feature_id', '__return_false' );
```

## Links & resources

* [Hooks](https://developer.wordpress.org/plugins/hooks/)
* [Actions](https://developer.wordpress.org/apis/hooks/action-reference/)
* [Filters](https://developer.wordpress.org/plugins/hooks/filters/)
