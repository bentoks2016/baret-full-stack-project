#!/bin/bash

curl "http://localhost:4741/doctors/${id}" \
  --include \
  --request DELETE

echo
