#!/bin/sh
# Вы можете запускать скрипт по расписанию с помощью crontab

#        _           _ _           _ _____ 
# __   _| | __ _  __| (_) ___  ___/ |___ / 
# \ \ / / |/ _` |/ _` | |/ _ \/ __| | |_ \ 
#  \ V /| | (_| | (_| | | (_) \__ \ |___) |
#   \_/ |_|\__,_|\__,_|_|\___/|___/_|____/ 


# Обновляем БД
vnstat -u 
# sleep 1
# Генерируем суммарную картинку
vnstati -s -i eth0 -o ~/tgvn.png 
# Генерируем картинку за день
vnstati -d -i eth0 -o ~/tgvnd.png 

echo "Готовлю пост в Telegram"
sleep 1
# chatID - id канала/группы/пользователя. botToken - токен бота. 
chatID=1521654
botToken=1243942234:AAH_OQTbC9wWTlhiMuAupaoetOhjksdfsjk

photo_s="tgvn.png"
photo_d="tgvnd.png"
MESSAGE_s="Суммарная статистика"
MESSAGE_d="Статистика за день"
shift
(
 for x
 do
  echo $x
 done
)|curl -s "https://api.telegram.org/bot"$botToken"/sendPhoto" -F chat_id=$chatID -F "photo=@$photo_s" -F "caption=$MESSAGE_s"
# Отправляем вторую картинку
curl -s "https://api.telegram.org/bot"$botToken"/sendPhoto" -F chat_id=$chatID -F "photo=@$photo_d" -F "caption=$MESSAGE_d"
sleep 1
# Завершаем работу скрипта
exit
