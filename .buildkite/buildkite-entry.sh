#!/bin/bash

set -ex


whoami
node --version
npm --version
npm i -g --unsafe-perm last-git-changes
last-git-changes --exclude='docs,examples,scripts,README.md,LICENSE,CONTRIBUTING.md'

buildkite-agent pipeline upload .buildkite/trigger.yml

