#!/usr/bin/env bash
set -e

CRON_JOB="0 2 * * * /vagrant/../scripts/backup.sh"

( crontab -l | grep -v "backup.sh" ; echo "$CRON_JOB" ) | crontab -
