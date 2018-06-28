#!/bin/bash

curl "http://localhost:4741/doctors" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "doctor": {
      "first_name": "'"${FIRSTNAME}"'",
      "last_name": "'"${LASTNAME}"'",
      "specialization": "'"${SPECIALIZATION}"'"
    }
  }'
echo
