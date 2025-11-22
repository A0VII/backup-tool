#!/bin/bash


# === Variables ===
SRC_DIR="data"
DEST_DIR="backups"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_FILE="backup_$TIMESTAMP.tar.gz"
LOG_FILE="backup.log"


# === Backing up ===
echo "[$TIMESTAMP] Starting backup..." | tee -a $LOG_FILE
tar -czvf $DEST_DIR/$BACKUP_FILE $SRC_DIR 2>&1 | tee -a $LOG_FILE


# === Done ===
echo "[$TIMESTAMP] Backup completed: $BACKUP_FILE" | tee -a $LOG_FILE
