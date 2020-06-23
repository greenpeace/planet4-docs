---
description: This is a summary of Git best practices we follow
---

# Git Guidelines

## Commit messages

### General principles

The most important thing about commit messages, is that it should describe what this change is about. So **the message should be about the fix, not about the bug/feature.**

Bad example of commit message:

> Images have wrong aspect ratio ❌

Better example of commit message:

> Force images aspect ratio ✅

Typically a commit message is consisted from a subject and a body. The examples above are subject lines and usually is all we need. But in some cases we may want to add more information to a commit, by leaving an empty line after the subject and keep writing some more text. Here is a [good example](https://github.com/WordPress/gutenberg/commit/0298cacb14928900b8fe6783673ad7ad0454b3f9) of how Gihub renders such a commit.

### Context

If the commit is connected to a specific ticket, it’s a good practice to add the ticket number to the commit. If the ticket is on Github it should have a similar prefix you can use.

> PLANET-1234 Force images aspect ratio

### Consistency

Some syntax and styling rules to make git log history more consistent.

1. Separate subject from body with a blank line
2. Capitalize the subject line
3. Do not end the subject line with a period
4. Use the imperative mood in the subject line \(see [https://chris.beams.io/posts/git-commit/](https://chris.beams.io/posts/git-commit/)\)

## Branch names

You can use the ticket number in branch names. Additionally you could add a prefix, depending on the kind of the PR. If the ticket is on Github it should have a similar prefix you can use.

These are all good branch names:

> planet-1234  
> feature/planet-1234  
> bug/planet-1234

## Pull Request Names

If a Pull Request has just one commit, it automatically inherits its name from that. Otherwise make sure to add the ticket number there too, to make reviewers life easier.

Always add a link to the ticket pointing to all relevant PRs.

## Amend

Sometimes a reviewer asks us to make some changes to our PR. If these changes are part of the existing work it should also be part of the existing commits, not a new one.

**Fixing syntax, linting, typo errors we introduced on our commits should never be a new commit.**

Assuming we have one commit already and we did some additional changes to a file. We can amend the commit and update the PR.

```bash
git add templates/footer.twig
git commit --amend --no-edit
git push -f origin planet-1234
```

What the above does, is that it stages the changes on footer template and amend our last commit by just adding our staged changes. If we wish to make changes to the commit message we can omit the `--no-edit` option.

The `-f` option on the push command overrides the branch already on the remote \(Github\) with what we now have locally.

To read more about rewriting git history, you can check the [relevant chapter](https://git-scm.com/book/en/v2/Git-Tools-Rewriting-History) of the git Book.

## Rebase

Sometimes we run into conflicts, because other people code is merged in the meantime.

**To solve the conflict we need to update locally the target branch and rebase, not merge.**

Assuming we have a PR with conflicts against the develop branch. We update develop branch first and then we rebase our own branch:

```bash
git checkout develop
git pull
git checkout planet-1234
git rebase develop
```

Git will stop when it finds the conflicts and will ask us to resolve them. Once we do that in our editor we stage the changes and continue the rebase:

```bash
git add templates/footer.twig
git rebase --continue
```

When done we update the remote branch:

```bash
git push -f origin planet-1234
```

You can read more about rebase on the [relevant chapter](https://git-scm.com/book/en/v2/Git-Branching-Rebasing) of the git book.

The important thing of this process is that your branch should never have merge commits or commits about resolve conflicts. It should only contain commits that are relevant to your work.

Remember that the `-f` option means force, and it essentially rewrites history. So, it’s ok to use it for your own branches, but you should never use it for the project branches \(master, develop\).

