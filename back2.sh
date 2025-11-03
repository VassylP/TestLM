#!/bin/bash
if [ -f back2.sh ]; then
    # Вложенное условие: проверяем, существует ли уже папка backup
    if [ -f backup ]; then
        cp -r back2.sh /backup
       echo "[$(date '+%F %H:%M')] Копия создана" >> /lessonm/backup.log
   # else mkdir backup && touch backup.log
       # echo "[$(date '+%F %H:%M')] Папка backup не найдена, копия не создана" >> backup.log
    fi
else
    echo "[$(date '+%F %H:%M')] Нет папки backup" >> backup.log
fi
