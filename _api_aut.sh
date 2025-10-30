#!/bin/bash
login=8
pas="qui%20fuga%20est%20a%20eum"
read -p "Enter login (id): " login_enter      
read -p "Enter pas (title): " pas_enter
# echo "$login_enter $pas_enter"
# pas_enter=$pas
# login_enter=$(echo "$login" | jq -s [])
API_URL="https://jsonplaceholder.typicode.com/albums?id=${login_enter}&title=${pas_enter}"
echo "$API_URL"
# API_URL="https://jsonplaceholder.typicode.com/albums?id=8&title=qui%20fuga%20est%20a%20eum"
# "https://jsonplaceholder.typicode.com/albums?id=8&title=qui%20fuga%20est%20a%20eum"
RESPONSE=$(curl -s "$API_URL")
# if [ "$RESPONSE" -eq 200 ]; then
if [ -z "$RESPONSE" ] | [ "$RESPONSE" == "[]" ]; then
    echo "API dont give back result"
    echo "Autorisation complet"
# elif [ "$login_enter" == "$login" ] && [ "$pas_enter" == "$pas" ]; then
#     echo "Autorisation complet"
    # echo "$RESPONSE"
else
    echo "Failed login or pas"
fi
# echo "$RESPONSE"
# URL API
# API_URL="https://jsonplaceholder.typicode.com/albums?id=${login}&title=${pas}"
# # # Делаем GET-запрос и сохраняем ответ в переменную
# RESPONSE=$(curl -s "$API_URL")
# #  Выводим полный JSON
# echo "$RESPONSE"
