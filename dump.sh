#!/bin/bash   
database_name=""
database_user=""
databae_password=""

# Define a timestamp function
timestamp() {
  date +"%T"
}

# lets dump the DB now
mysqldump -u $database_user -p $database_password > $(timestamp).sql

echo "Done!"
