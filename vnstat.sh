#!/bin/sh
# Вы можете запускать скрипт по расписанию с помощью crontab

# Пример запуска по cron: 0 0 * * * /home/scripts/vnstat.sh >/dev/null 2>&1

#        _           _ _           _ _____ 
# __   _| | __ _  __| (_) ___  ___/ |___ / 
# \ \ / / |/ _` |/ _` | |/ _ \/ __| | |_ \ 
#  \ V /| | (_| | (_| | | (_) \__ \ |___) |
#   \_/ |_|\__,_|\__,_|_|\___/|___/_|____/ 


# Обновляем БД vnstat'a
vnstat -u
# Генерируем суммарную картинку
vnstati -s -i eth0 -o ~/tgvn.png
# Генерируем картинку за текущий день
vnstati -d -i eth0 -o ~/tgvnd.png

echo "[--------------------------------[`date +%F-%H-%M`]--------------------------------]"
echo "Готовлю пост в Telegram"

chatID=11111 # ID чата куда отправлять сообщение
botToken=123456789:AAH_OQTbC9wWTlhiMuAupaoetOhvlad # Токен Telegram-бота (получаем у @Botfather)

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

echo "Изображения в Telegram отправлены"
# Завершаем работу скрипта
exit 0