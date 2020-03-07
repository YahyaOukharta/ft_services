rc-status
influxd &
rc-service influxdb start
influx -execute "CREATE USER telegraf WITH PASSWORD 'telegraf' WITH ALL PRIVILEGES"
exec "telegraph"