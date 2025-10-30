#!/bin/bash

for file in $(ls $1)
do
    for info in $(cat $1$file)
    do
        email=$(echo $info | cut -d ":" -f3)
        if [[ $email = .*@spbstu.ru* ]]
        then
            echo $info
        fi
    done
done
