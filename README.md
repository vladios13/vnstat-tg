# vnstat-tg
Простой скрипт, отправляющий статистику трафика и график его использования в Telegram.

### Возможности

- Простая настройка.
- Отправка изображения в Telegram.
- Два вида статистики: (суммарная и за сутки)

Все настройки проекта производятся в файле vnstat.sh.

Запуск скрипта по cron:
```bash
0 0 * * * /home/scripts/vnstat.sh >/dev/null 2>&1
```

----------

### Зависимости

Для работы скрипта нужно установить vnStat.

Для CentOS:

```bash
yum install vnstat -y
```

Для Debian/Ubuntu:

```bash
apt-get install vnstat
```

------------

Пример уведомления в Telegram:

![Пример уведомления в Telegram](https://i.13.wf/2020/09/15/1600191712-2472.jpg "Пример уведомления в Telegram")

------------


### vladios13
[Блог vladios13](https://blog.vladios13.com)

[Telegram](https://t.me/vladios13blog)

Для пожертвований:
- [Yoomoney](https://yoomoney.ru/to/410011568729023 "Yoomoney")
