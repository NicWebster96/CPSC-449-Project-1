#!/bin/sh

curl --verbose \
     --request POST \
     --header 'Content-Type: application/json' \
     --data @newentry.json \
     http://localhost:5000/api/v1/entries

curl --verbose \
     --request DELETE \
     http://localhost:5000/api/v1/entries/7

curl --verbose \
     --request GET \
     http://localhost:5000/api/v1/entries/dankmemes/recent/3

curl --verbose \
     --request GET \
     http://localhost:5000/api/v1/entries/all/recent/3
