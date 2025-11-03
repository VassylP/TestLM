#!/bin/bash

# URL API
API_URL="https://jsonplaceholder.typicode.com/posts"

# Делаем GET-запрос и сохраняем ответ в переменную
RESPONSE=$(curl -s "$API_URL")

# Выводим полный JSON
echo "$RESPONSE"

# Если нужно вывести только первые 500 символов (для удобства)
for title in $(echo "$RESPONSE" | jq -r '.[].title'); do
        echo "$title"
done
echo "---- Начало JSON ----"
echo "$RESPONSE" | head -c 500
echo
echo "---- Конец ----"
