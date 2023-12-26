#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
       echo "ERROR : you are not in root user"
       exit 1  # you can give any number other than 0
else  
       echo "you are in root user"
fi # fi means reverse of if , indicating condition end

yum install mysql -y

if [ $? -ne 0 ]
then
       echo " installing MySQL is failed"
       exit 1
else 
       echo " installing MySQL is success"   
fi    

yum install git -y