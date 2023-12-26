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

if [ $? -ne 0 ]
then
       echo " installing my sql failed"
else 
       echo "installin my sql success"       