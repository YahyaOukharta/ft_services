rc-status
#rc-service influxdb start
#exec "/bin/sh"

influxd &
sleep 5
influx -execute "CREATE USER telegraf WITH PASSWORD 'telegraf' WITH ALL PRIVILEGES"
sleep 2
exec "telegraf"