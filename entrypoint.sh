# Enable cron (for spark cleanup jobs etc)
/usr/sbin/crond -b -L /var/log/cron.log

exec "$@"


