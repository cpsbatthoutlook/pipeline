#!/bin/bash

STATUS=${1}
Dbase=${2}

if [ "$STATUS" == "stop" ]; then
        echo "checked that ${Dbase} is not running : $STATUS "
    if [ ! "$(docker ps -q -f name=${Dbase})" ]; then
        if [ "$(docker ps -aq -f status=exited -f name=${Dbase})" ]; then
            # cleanup
            echo "${Dbase} is already stopped"
        fi
    else
        # run your container
        sudo docker stop ${Dbase}
         echo "${Dbase} is  stopped"
    fi
elif [ "$STATUS" == "start" ]; then
    if [ ! "$(docker ps -q -f name=${Dbase})" ]; then
        echo "checked that ${Dbase} is not running : $STATUS "
        if [ "$(docker ps -aq -f status=exited -f name=${Dbase})" ]; then
            # cleanup
            sudo docker start ${Dbase}
            echo ${Dbase} is  started
        fi
        # run your container
        echo ${Dbase} is already started
    fi
fi
