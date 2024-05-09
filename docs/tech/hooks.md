---
description: List of the Planet 4 hooks
---

# Hooks

This document outlines custom hooks added to the Planet4 theme for extending functionality.

### planet4_sendgrid_sender
- Description: This filter hook allows modification of Sendgrid from address.
- Parameters: `$sender` (type: string).
- Usage: Use this hook to change the SENDER value for Sendgrid PHPMailer integration.
- Example:
```php// The filter callback function.
function update_planet4_sendgrid_sender( $sender ) {
    // (maybe) change $sender.
    return $sender;
}
add_filter( 'planet4_sendgrid_sender', 'update_planet4_sendgrid_sender', 10, 1 );
```

## Links & resources

* [Hooks](https://developer.wordpress.org/plugins/hooks/)
* [Actions](https://developer.wordpress.org/apis/hooks/action-reference/)
* [Filters](https://developer.wordpress.org/plugins/hooks/filters/)
