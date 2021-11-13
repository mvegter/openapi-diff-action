# OpenAPI Diff action
A GitHub Action to identify differences between Swagger or OpenApi specifications.

## Credits
This GitHub Action is a wrapper for the NPM `openapi-diff` package by Atlassian. See the following links for more information:
- https://www.npmjs.com/package/openapi-diff
- https://bitbucket.org/atlassian/openapi-diff/src

## Usage
```yaml
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
        uses: mvegter/openapi-diff-action@v0.23.5
        with:
          head-spec: head/spec/openapi.yaml
          base-spec: base/spec/openapi.yaml
```
