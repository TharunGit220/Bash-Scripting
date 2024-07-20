#!/bin/bash

# Get the used memory in gigabytes
used_memory_gb=$(free -thg | grep Mem | awk '{print $3}' | tr -d Gi)

# Round the used memory to the nearest whole number
rounded_used_memory_gb=$(printf "%.0f" $used_memory_gb)

threshold=7

# Ask the user for their email address
read -p "Enter your email address: " user_email

# Check if the used memory exceeds the threshold
if ((rounded_used_memory_gb >= threshold)) 
then
    echo "Warning: You have hit your threshold"
    
    # Send an email to the user
    echo "You are running out of RAM space. Current usage is ${rounded_used_memory_gb}GB." | mail -s "RAM Usage Warning" $user_email
    
	 echo "An email has been sent to $user_email regarding the RAM usage warning."
else
    echo "You are fine"
fi

