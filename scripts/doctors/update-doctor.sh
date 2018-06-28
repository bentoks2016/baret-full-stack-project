#!/bin/bash

curl "https://rocky-castle-66213.herokuapp.com/doctors/${id}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "doctor": {
      "first_name": "'"${FIRSTNAME}"'",
      "last_name": "'"${LASTNAME}"'",
      "specialization": "'"${SPECIALIZATION}"'"
    }
  }'
echo
