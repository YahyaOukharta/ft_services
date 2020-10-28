rc-status
#rc-service influxdb start
#exec "/bin/sh"

influxd -config=/etc/influxdb.conf &
sleep 5
influx -execute "CREATE USER telegraf WITH PASSWORD 'telegraf' WITH ALL PRIVILEGES"
sleep 2
telegraf