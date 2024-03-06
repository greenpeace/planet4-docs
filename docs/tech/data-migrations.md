---
description: Running data migrations when needed
---

# Data migrations

## Migrator

On every deployment there is a [post-deploy script](https://github.com/greenpeace/planet4-base/blob/v2.122.0/tasks/post-deploy/01-run-p4-activator.sh) running the [Migrator](https://github.com/greenpeace/planet4-master-theme/blob/v1.281.0/src/Migrator.php). This is taking care of all data migrations.

The [migrations](https://github.com/greenpeace/planet4-master-theme/tree/v1.281.0/src/Migrations) are using a sequence prefix number (`Mnnn`), and we also keep a log in the database (`planet4_migrations`) to ensure each migration only runs once.

### Testing a new data migration

Since migrations run only once it can be challenging to test a new one. As you gradually doing changes on your branch you want to be able to run them every time on a fresh database. To do that you need to rollback on a database state before you run the migration.

#### Local development environment

Testing a data migration locally is the ideal workflow since it's faster to iterate and fix any code issues. To apply a new data migration, assuming the environment is already running, we need to run the [Activator](https://github.com/greenpeace/planet4-master-theme/blob/v1.282.0/src/Commands/RunActivator.php).

```bash
npx wp-env run cli wp p4-run-activator
```

After doing some additional code changes to that data migration, we can apply it again. But first we need to reset the environment database back to the [latest defaultcontent database](https://github.com/greenpeace/planet4-develop/blob/v0.11.0/.p4-env.json#L4). Keep in mind, that this will also discard any content changes we may have done since the last database import.

```bash
npm run db:reset
```

Then we can use the previous command to apply the data migration again.

#### Pull requests & test instances

When we open a new PR that introduces a new data migration, a test instance is assigned and the branch code will be deployed running the first iteration of the data migration.

Assuming we push some code changes to that data migration (eg. after a code peer review), the test instance won't run it again since it has already been logged at its database that the migration class with that name has already run. To overcome this issue we need to [reset the test instance](https://support.greenpeace.org/planet4/ci-cd/test-environments#data-reset) so it gets the [defaultcontent database](https://github.com/greenpeace/planet4-builder/blob/v1.2.186/src/bin/reset\_test\_instance.sh) again.

To do that we edit its composer file and use `dev-main` as the branch to be deployed for both the application repositories.&#x20;

<figure><img src="../.gitbook/assets/Screenshot from 2024-02-16 16-07-29.png" alt=""><figcaption><p>test instance composer file</p></figcaption></figure>

To trigger the database reset we need to use a `[RESET]` prefix in our commit message.

```bash
git add composer-local.json
git commit -m "[RESET] Reset instance"
git push origin main
```

Once the deployment is completed we can go to our Pull Request and just re-run its CI pipeline. The pipeline will pick up the same test instance again, since it will read the `test-` label. It will update its composer file with the PR branch and then deploy the test instance running the updated data migration.

