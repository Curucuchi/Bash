#!/bin/bash

echo -n "Do you wanna "start", "stop", "restart", or "interact" with Mongo?"
echo
        read answer

if [ "$answer" == "start" ] ; then
        sudo systemctl start mongod
        sudo systemctl status mongod
elif [ "$answer" == "stop" ] ; then
        sudo systemctl stop mongod
        sudo systemctl status mongod
elif [ "$answer" == "restart" ] ; then
        sudo systemctl restart mongod
        sudo systemctl status mongod
elif [ "$answer" == "interact" ] ; then
        mongo -u "admin" -p "SUPERSECRETPASSWORD"
