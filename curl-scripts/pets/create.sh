#!/bin/bash

curl "http://localhost:4741/pets" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "pet": {
      "name": "'"${NAME}"'",
      "species": "'"${SPECIES}"'",
      "breed": "'"${BREED}"'",
      "favorite_toy": "'"${FAV}"'",
      "dob": "'"${DATE}"'"
    }
  }'

echo
