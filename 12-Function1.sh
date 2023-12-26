#!/bin/bash

VALIDATE()
{
   if [ $1 -ne 0 ]
then
       echo " installing $2 is failed"
       exit 1
else 
       echo " installing $2 is success"   
fi    
 
}

ID=$(id -u)

if [ $ID -ne 0 ]
then
       echo "ERROR : you are not in root user"
       exit 1  # you can give any number other than 0
else  
       echo "you are in root user"
fi # fi means reverse of if , indicating condition end

yum install mysql -y

VALIDATE $? "MySQL"

yum install git -y

VALIDATE $? "GIT"