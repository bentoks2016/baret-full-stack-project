#!/bin/bash

curl "https://rocky-castle-66213.herokuapp.com/doctors/${id}" \
  --include \
  --request GET

echo
