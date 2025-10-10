# Login to App server which is trouble
# Check system is running
sudo systemctl status httpd

# Check port number use
sudo netstat -tulpn | grep port_number

# You can see port_number has take for another service
# We can stop that service, and run again for httpd
# fill service_name with the real service who has same port with httpd

sudo systemctl stop service_name
sudo systemctl disable service_name

sudo systemctl start httpd
