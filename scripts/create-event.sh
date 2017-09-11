
# API="${API_ORIGIN:-http://localhost:4741}"
 API="${API_ORIGIN:-https://ondasuave.herokuapp.com}"
URL_PATH="/events"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "appoitments": {
      "date": "2017-08-26",
      "user_id": "1"
    }
  }'

echo
