# Ex: TOKEN=tokengoeshere ID=idgoeshere TEXT=textgoeshere sh curl-scripts/examples/update.sh

curl "http://localhost:4741/pets/${ID}" \
  --include \
  --request PATCH \
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
