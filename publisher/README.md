# Publisher

Action to build and deploy static sites with Jekyll.

Features:

- Install gems
- Build static site
- Deploy to a server with rsync
- Send slack notification on success

Example workflow:

```yaml
name: deploy

on:
  push:
    branches:
      - master

jobs:
  run-deploy:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@master

      - name: Build Site
        uses: sosedoff/actions/publisher
        with:
          entrypoint: /build.sh

      - name: Publish Site
        uses: sosedoff/actions/publisher
        env:
          JEKYLL_DEPLOY_KEY: ${{ secrets.JEKYLL_DEPLOY_KEY }}
          DEPLOY_HOST: ${{ secrets.DEPLOY_HOST }}
          DEPLOY_USER: ${{ secrets.DEPLOY_USER }}
          DEPLOY_PORT: ${{ secrets.DEPLOY_PORT }}
          DEPLOY_DIR: ${{ secrets.DEPLOY_DIR }}
        with:
          entrypoint: /publish.sh

      - name: Send Notification
        uses: sosedoff/actions/publisher
        env:
          SLACK_WEBHOOK: ${{ secrets.SLACK_WEBHOOK }}
        with:
          entrypoint: /notify.sh
          args: Blog has been deployed
```