#!/bin/bash

curl "http://localhost:4741/residents" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "resident": {
      "first_name": "'"${FIRSTNAME}"'",
      "last_name": "'"${LASTNAME}"'",
      "gender": "'"${GENDER}"'"
    }
  }'
echo
