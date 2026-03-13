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

## Links & resources

* [Hooks](https://developer.wordpress.org/plugins/hooks/)
* [Actions](https://developer.wordpress.org/apis/hooks/action-reference/)
* [Filters](https://developer.wordpress.org/plugins/hooks/filters/)
