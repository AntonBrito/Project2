ID="5"
curl "http://localhost:4741/appoitments/$ID" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json"

echo
