#!/bin/bash


# permissions for directories
sudo find . -type d -exec chown nobody {} +
sudo find . -type d -exec chgrp deepak {} +
sudo find . -type d -exec chmod 570 {} +

#permissions for files
sudo find . -type f -exec chown nobody {} +
sudo find . -type f -exec chgrp deepak {} +
sudo find . -type f -exec chmod 470 {} +

#permisssion for logs directory
sudo chmod 370 logs/
sudo rm logs/*
