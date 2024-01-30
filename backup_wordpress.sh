#!/bin/bash
DATE=$(date +%F)
BACKUP_DIR="PATH TO DESTINATION"
SOURCE_DIR="PATH TO DESIRED BACKUP"

tar -czf "$BACKUP_DIR/wordpresspack-backup-$DATE.tar.gz" "$SOURCE_DIR"
