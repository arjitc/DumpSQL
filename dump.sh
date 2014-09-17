#!/bin/bash

#dont forget to set these below or else this script will not work
database_name=""
database_user=""
database_password=""

#details for SCP
remote_host=""
remote_host_username=""
remote_host_password=""
ssh_port=""

# Define a timestamp function
timestamp() {
  date +%s
}

# lets dump the DB now
filename=$(timestamp)
remote_filename=$filename.sql
mysqldump -u $database_user -p$database_password $database_name > $filename.sql

# lets scp this!
sshpass -p "$remote_host_password" scp -P $ssh_port $remote_filename $remote_host_username@$remote_host:/root

#lets delete the local backup file which we created above
shred -uvz $remote_filename

echo "Done!"
