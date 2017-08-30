
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/appoitments"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "appoitment": {
      "date": "2017-08-26",
      "user_id": "1"
    }
  }'

echo
