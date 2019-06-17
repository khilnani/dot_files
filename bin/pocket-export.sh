#!/usr/bin/env bash

# see https://getpocket.com/developer/docs/v3/retrieve

consumerkey=$1
accesstoken=$2

curl \
--header "Content-type: application/json" \
--request POST \
--data "{\"state\": \"all\", \"sort\": \"newest\", \"detailType\": \"complete\", \"consumer_key\": \"$consumerkey\", \"access_token\": \"$accesstoken\"}" \
https://getpocket.com/v3/get > export

jq ".list[] | {sort_id: .sort_id, favorite: .favorite, title: .resolved_title, url: .resolved_url, tags: .tags, excerpt: .excerpt}" export > pocket-export.json
