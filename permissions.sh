#!/bin/bash


# permissions for directories
sudo find . -type d -exec chown www-data {} +
sudo find . -type d -exec chgrp $USER {} +
sudo find . -type d -exec chmod 570 {} +

#permissions for files
sudo find . -type f -exec chown www-data {} +
sudo find . -type f -exec chgrp $USER {} +
sudo find . -type f -exec chmod 470 {} +

#permisssion for files logs directory
sudo chmod 670 logs/log.txt
sudo chmod 670 logs/msg.json
