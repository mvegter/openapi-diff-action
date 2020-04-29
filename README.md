# OpenAPI Diff action
A GitHub Action to identify differences between Swagger or OpenApi specifications.

## Usage
```yaml
name: OpenAPI

on:
  pull_request:
  push:
    branches:
      - master

jobs:
  validate:
    runs-on: ubuntu-18.04

    steps:
      - name: Check out head branch
        uses: actions/checkout@v2
        with:
          path: head
      - name: Check out master branch
        uses: actions/checkout@v2
        with:
          ref: master
          path: base
      - name: Run OpenAPI Diff (from HEAD revision)
        uses: mvegter/openapi-diff-action@v0.2.0
        with:
          head-spec: head/spec/openapi.yaml
          base-spec: base/spec/openapi.yaml
```
