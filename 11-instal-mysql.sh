#!/bin/bash

ID =$(id -u)

if [ $ID -ne 0 ]
then
echo "ERROR : you are not in root user"
else
echo "you are in root user"