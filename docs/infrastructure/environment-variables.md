---
description: How to add and use a new environment variable
---

# Environment Variables

There are times when we need to add a new environment variable to be used later in the running pods of a website. Either to adjust some functionality based on its value or to pass a secret.

## Code changes

This involves a series of small changes across 3 of our code repositories.

### Helm Chart

First we need to add the new variable in the [repository](https://github.com/greenpeace/planet4-helm-wordpress/) that builds the WordPress helm chart, making the necessary changes to two specific files.

`templates/deployment-php.yaml`: inside the `env` block:

```yaml
- name: MY_API_KEY
  valueFrom:
    secretKeyRef:
      name: "{{ .Release.Name }}-keysalt"
      key: myApiKey
```

`templates/secrets-wp-keysalt.yaml`: inside the `data` block:

```yaml
myApiKey: {{ .Values.myApiKey | quote }}
```

:computer: [commit example](https://github.com/greenpeace/planet4-helm-wordpress/commit/4ac57c7ae7a163891e5a8d925c273f1844bdf925)

### Docker

Next we need to add it in our [docker repository](https://github.com/greenpeace/planet4-docker).

`src/planet-4-151612/wordpress/templates/Dockerfile.in`; inside the `ENV` block:

```docker
MY_API_KEY=""
```

`src/planet-4-151612/wordpress/wp-config.php.tmpl`:

```php
{{ if .Env.MY_API_KEY }}
define( 'MY_API_KEY', '{{ .Env.MY_API_KEY }}' ); 
{{ end }}
```

:computer: [commit example](https://github.com/greenpeace/planet4-docker/commit/941437e0fccb4a2c9b987e0eae3cf5b09ebd7dac)

### Builder

When both of the above changes are merged, we need to make a change on our [builder repository](https://github.com/greenpeace/planet4-builder).&#x20;

We need to use the new Helm chart version, so it's important to wait for the change we did above to that repository to complete its CI pipeline that creates a new [tag](https://github.com/greenpeace/planet4-helm-wordpress/tags) and then use that tag as the [Chart version](https://github.com/greenpeace/planet4-builder/blob/v1.2.210/src/Makefile#L10).

`src/var/secrets.yaml.in`:

```yaml
myApiKey: '${MY_API_KEY}'
```

`src/Makefile`: adding the new helm chart version:

```makefile
CHART_VERSION ?= 0.8.34
```

:computer: [commit example](https://github.com/greenpeace/planet4-builder/commit/20d8c1a224553ca3cc7de2067ac500aff93e2151)

## CircleCI

To start using that variable we need to add it in CircleCI as an [environment variable](https://circleci.com/docs/env-vars/) with the value we want. Either in the global context, if it's meant to be used globally, or to a specific project environment variables screen.

The variables are base64 hashed, so before adding its value you need to create it and use that one instead:

```shell
echo "my_secret_variable_value" | base64
```

Even if the output is split into lines, make sure to delete the new line characters and enter it in one line in CircleCI.

## Theme

Finally you can read the value of that variable in the theme, either in the [main one](https://github.com/greenpeace/planet4-master-theme/blob/v1.337.0/src/Sendgrid.php#L30) or in a child theme.

