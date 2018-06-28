#!/bin/bash

curl "https://rocky-castle-66213.herokuapp.com/doctors" \
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
