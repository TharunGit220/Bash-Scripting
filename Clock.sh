#!/bin/bash


#Colours For the Clock
Red=$'\e[1;31m'
Green=$'\e[1;32m'
Blue=$'\e[1;34m'

while true
do
	clear
	echo $(date +%T)
	sleep 1
done
