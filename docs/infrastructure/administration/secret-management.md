# Secret management

Most of the services of Planet 4 need certain secrets to perform their task. Examples of such secrets are credentials, API keys, certificates, cryptographic keys, etc

We need to provide such secrets to our services in a secure way, so that they can't be exposed publicly. Ideally they should not be visible anywhere internally as well, that means in logging, application interfaces, and even files on the containers of the services using them.

The journey of a secret starts in the CircleCI configuration and ends with it being deployed on a running service. What exactly happens in between can vary a bit from service to service, but most are pretty similar.

### Adding a new secret in WordPress

If your code for WordPress needs to authenticate to a new external service, you can add the credentials for it in the following way.

1.
