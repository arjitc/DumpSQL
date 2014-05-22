#!/bin/bash   
database_name=""
database_user=""
database_password=""

# Define a timestamp function
timestamp() {
  date +"%T"
}

# lets dump the DB now
mysqldump -u $database_user -p $database_password $database_name > $(timestamp).sql

echo "Done!"
