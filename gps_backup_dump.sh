MYSQL_HOST= "127.0.0.1"
MYSQL_USER= "dumper"
MYSQL_PASSWORD= "password"
MYSQL_DATABASE= "Gps_Device"


#!/bin/sh
 mysqldump -h localhost  --single-transaction -u tl-builder-gps_bkup  --password='password' Gps_Device devices_last_location | gzip >  /home/GPSHourlyDumps/gps_device_locations.sql.gz
/usr/bin/php /var/www/html/lo/post_location_to_node.php

# CREATE USER 'dumper'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';