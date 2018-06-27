#!/bin/bash

curl "http://localhost:4741/residents/${id}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "resident": {
      "first_name": "'"${FIRSTNAME}"'",
      "last_name": "'"${LASTNAME}"'",
      "gender": "'"${GENDER}"'"
    }
  }'
echo
