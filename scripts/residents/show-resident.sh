#!/bin/bash

curl "http://localhost:4741/residents/${id}" \
  --include \
  --request GET

echo
