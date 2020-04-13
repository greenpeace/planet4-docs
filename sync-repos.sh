#!/bin/bash

git submodule update --remote --merge

yes | cp repos/planet4-docker-compose/docs/installation.md docs/development/installation.md
yes | cp repos/planet4-docker-compose/docs/testing.md docs/ci-cd/testing/acceptance-tests.md
