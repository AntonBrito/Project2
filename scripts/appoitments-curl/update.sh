curl --include --request PATCH "http://localhost:3000/appoitments/$ID" \
    --header "Content-Type: application/json" \
    --data '{
      "appoitment": {
        "date": "2017-08-28",
        "user_id": "1"
      }
    }'
