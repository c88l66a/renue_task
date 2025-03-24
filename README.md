**Ссылка на задание:** https://disk.yandex.ru/i/58SsJkz4H9Z4hA
**Перед запуском ansible плейбука, неоходимо сделать следующие действия:**
1. В конфигурационном файле ansible.cfg изменить путь до inventory файла (ну можно стартовать и через -i)

2. В файле inventory, изменить название пользователей а также пароли

3. IP адрес хоста A: 192.168.0.11, B: 192.168.0.12 - необходимо изменить в следующий местах:

> inventory

> /postgresql_deploy/files/pg_hba.conf

> /nginx_deploy/files/default

> /backup_postgresql/files/backup.sh

4. Использовалась следующая версия Postgresql - 12, если будет установлена другая версия postgresql, то необходимо изменить путь до логов в файле /fail2ban_deploy/files/jail.local (jail: Postgresql)

5. При запуске плейбука необходимо заранее сгенерировать rsa ключ (ssh-keygen -t rsa). Можно это было сделать в плейбуке, но не хотелось тащить велосипед с добавлением в файл inventory localhost хоста. Или же запускать плейбук следующим образом
```bash
ssh-keygen -t rsa && ansible-playbook path/to/playbook
```