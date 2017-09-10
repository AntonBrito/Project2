#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/sign-in"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "jesseBrito@gmail.com",
      "password": "praiacapital104",
      "password_confirmation": "praiacapital104"
    }
  }'
