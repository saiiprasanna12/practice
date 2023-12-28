#!/bin/bash


ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
R="\e[31m"
G="\e[32m"
N="\e[0m"

LOG_FILE="/tmp/$0-$TIMESTAMP.log"

echo ("script started excecuted at $TIMESTAMP") &>> $LOG_FILE

VALIDATE()
{
   if [ $1 -ne 0 ]
then
       echo  -e " installing $2 is $R failed $N" 
       exit 1
else 
       echo -e " installing $2 is $G success $N"   
fi    
 
}


if [ $ID -ne 0 ]
then
       echo "ERROR : you are not in root user"
       exit 1  # you can give any number other than 0
else  
       echo "you are in root user"
fi # fi means reverse of if , indicating condition end

yum install mysql -y  &>> $LOG_FILE

VALIDATE $? "MySQL"

yum install git -y  &>> $LOG_FILE

VALIDATE $? "GIT"