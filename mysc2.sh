#!/bin/bash


numb=10

while (( $numb >= 0 ))
do
	echo $numb
     ((numb--))
done



<<comment
amount=$(free -mth | grep Mem | awk '{print $3}' | tr -d Gi)
amount=(printf "%.0f" $amount)

if (( $amount < 11 )) 
then	
	echo "your are all good mate " 
else
	echo "mate what are you doing"
fi


numb=0

while (( $numb < 10 ))
do
	((numb++))
	echo $numb
done



for((i=0; i<=10; i++))
do
	echo $i
done



while true 
do
	echo $(date | awk '{print $4}') 
	sleep 1.9
	clear
done


# check if the root user is executing the program

if [[ $UID != 1000 ]] 
then
	echo "mate you are not root"
	exit 1 
fi

# get the username fro the user

if [[ $# == 0 ]]
then	
	echo "mate atlest enter one"
	exit 1 
else
	echo "Here if you username mate $1"
fi

# show if they have got comment
username=$1
if [[ $# > 1 ]]
then	
	shift
	echo "mate you have got coments " 
	echo $@
else
	echo "no comments for you mate "
fi

# give them a password

echo "so here is your username $username and $(date +%s%N)"

# now we have to create the users 
sudo useradd -m -s /bin/bash $username

#check if the last condition worked

if [[ $? == 0 ]] 
then
	echo "All done mate "
else 
	echo "not yet mate"
fi
comment






 
