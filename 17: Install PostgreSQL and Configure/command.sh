# 1. Go to the server and install postgresql

# 2. Create username with password, create db, and make sure all privileges to this user
sudo -u postgres psql

CREATE USER andro WITH ENCRYPTED PASSWORD 'yourPassword';

CREATE DATABASE dbName OWNER andro;

GRANT ALL PRIVILEGES ON DATABASE dbName TO andro;

# you can login as andro to make sure and test the db
psql -U andro -d dbName -h localhost
