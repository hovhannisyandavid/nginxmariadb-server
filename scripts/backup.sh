#!/usr/bin/env bash
set -e

BACKUP_DIR="/var/backups"
LOG_FILE="/var/log/db_backup.log"
DATE=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_FILE="$BACKUP_DIR/projectdb_$DATE.sql"

echo "[$(date)] Iniciando backup..." >> $LOG_FILE

sudo mkdir -p $BACKUP_DIR

sudo mysqldump projectdb > $BACKUP_FILE

echo "[$(date)] Backup creado: $BACKUP_FILE" >> $LOG_FILE

sudo ls -t $BACKUP_DIR/projectdb_*.sql | tail -n +8 | sudo xargs rm -f 2>/dev/null || true

echo "[$(date)] Limpieza completada." >> $LOG_FILE
echo "[$(date)] Backup finalizado correctamente." >> $LOG_FILE
