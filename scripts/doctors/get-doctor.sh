#!/bin/bash

curl "http://localhost:4741/doctors" \
  --include \
  --request GET

echo
