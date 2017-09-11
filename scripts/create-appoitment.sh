API="${API_ORIGIN:-https://ondasuave.herokuapp.com}"
# API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/appoitments"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "appoitment": {
      "date": "'"${DATE}"'",
      "user_id": "'"${USER_ID}"'"
    }
  }'

echo
