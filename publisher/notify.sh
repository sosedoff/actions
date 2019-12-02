#!/bin/sh

curl -X POST $SLACK_WEBHOOK -d "{\"text\": \"$*\"}"