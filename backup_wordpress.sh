#!/bin/bash
DATE=$(date +%F)
BACKUP_DIR="/home/meron/Documents"
SOURCE_DIR="/home/meron/Documents/code/wordpress"

tar -czf "$BACKUP_DIR/test3-backup-$DATE.tar.gz" "$SOURCE_DIR"
