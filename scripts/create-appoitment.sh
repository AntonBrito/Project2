
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/appoitments"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "appoitments": {
      "id": 1,
      "date": "2017-08-26",
      "user_id": "1"
    }
  }'

echo
