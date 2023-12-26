#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
       echo "ERROR : you are not in root user"
       exit 1
else  
       echo "you are in root user"
fi
yum install mysql -y
