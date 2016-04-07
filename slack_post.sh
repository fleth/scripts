#!/bin/bash

channel=""
username=""
icon_emoji=""
message=$1
slack_bot_url=""

curl -s -S -X POST --data-urlencode "payload={\"channel\": \"${channel}\", \"username\": \"${username}\", \"icon_emoji\": \"${icon_emoji}\", \"text\": \"${message}\" }" $slack_bot_url
