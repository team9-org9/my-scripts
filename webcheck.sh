#!/bin/bash
#Author:Engr Rudolph
#Company: Etech Consulting llc
#Script will be use to test if tomcat website is up and running and take actions
if curl -s http://ec2-44-211-167-224.compute-1.amazonaws.com/; then
  echo "nginx is up and running"  
  exit 0
else
  echo "nginx is down"
  exit 1
  echo "The exit status was captured to be `echo $?`"
  #api call connection to azure function to trigger email notifications
fi
