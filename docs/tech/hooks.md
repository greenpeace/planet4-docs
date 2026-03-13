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
* Default value(if the filter is not used):
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
* Default value: [] (only 'self' is allowed by default)
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

## Links & resources

* [Hooks](https://developer.wordpress.org/plugins/hooks/)
* [Actions](https://developer.wordpress.org/apis/hooks/action-reference/)
* [Filters](https://developer.wordpress.org/plugins/hooks/filters/)
