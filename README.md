# vnstat-tg
Простой скрипт, отправляющий статистику трафика и график его использования в Telegram.

![License](https://img.shields.io/badge/License-MIT-green)
![Shell](https://img.shields.io/badge/Shell-Bash-4EAA25?logo=gnu-bash&logoColor=white)
![Platform](https://img.shields.io/badge/Platform-Linux-FCC624?logo=linux&logoColor=black)

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


## Автор — vladios13

[![Блог](https://img.shields.io/badge/Блог-vladios13-blue)](https://blog.vladios13.com)
[![Telegram](https://img.shields.io/badge/Telegram-@vladios13blog-26A5E4)](https://t.me/vladios13blog)
[![ЮMoney](https://img.shields.io/badge/Поддержать-ЮMoney-yellow)](https://yoomoney.ru/to/410011568729023)
