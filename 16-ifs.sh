#!/bin/bash
file=/etc/passwd

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ ! -f $file ] # ! denotes opposite
then
    echo -e "$R Source directory: $file does not exitsts. $N"
fi

while IFS=":" read -r username password user_id_group_id user_fullname home_dir Shell_path
do 
    echo "username: $username"
    echo "user ID: $user_ido"
    echo "User Full name: $user_fullname"
done < $file