#!/bin/bash

export PGPASSWORD='qwe'

current_date=$(date +"%Y-%m-%d")
backup_dir="/var/lib/backups/postgres_$current_date"

/usr/bin/mkdir -p "$backup_dir"

/usr/bin/pg_basebackup -R -h 192.168.0.11 -U repl_user -D "$backup_dir" -P
