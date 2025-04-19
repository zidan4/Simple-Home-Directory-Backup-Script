#!/bin/bash

# Description: Backup your home directory to an external drive or backup folder.

BACKUP_DIR="/mnt/backup/$(whoami)_home_$(date +%F_%H-%M)"
mkdir -p "$BACKUP_DIR"

echo "[*] Backing up your home directory to $BACKUP_DIR..."

rsync -avh --exclude='.cache' --exclude='Downloads' ~ "$BACKUP_DIR"

echo "[✓] Backup complete!"
