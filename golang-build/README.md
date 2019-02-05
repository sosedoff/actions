# Go Builder

Workflow configuration:

```
action "build" {
  uses = "sosedoff/actions/golang-build@master"
}
```

Specify architectures to build:

```
action "build" {
  uses = "sosedoff/actions/golang-build@master"
  args = "linux/amd64 darwin/amd64"
}
```