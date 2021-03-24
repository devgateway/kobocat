#!/usr/bin/env bash
set -e
source /etc/profile

KOBOCAT_MEDIA_URL="${KOBOCAT_MEDIA_URL:-media}"
BACKUPS_DIR="${BACKUPS_DIR:-/srv/backups}"

mkdir -p "${BACKUPS_DIR}"

backup_filename="kobocat_media.tgz"

tar -C "${KOBOCAT_SRC_DIR}" -czf "${BACKUPS_DIR}/${backup_filename}" "${KOBOCAT_MEDIA_URL}"

echo "Backup file \`${backup_filename}\` created successfully."
