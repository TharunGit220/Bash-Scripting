# Bash-Scripting
Bash Projects


Project 1 Clock: 

I've developed a simple Bash script to display the current time in a continuous loop, with the flexibility to customize the color of the clock.

Features:
1) Color Customization: The script allows for the clock to be displayed in different colors by using ANSI escape codes for red, green, and blue.
   
2) Real-Time Update: The script continuously updates the current time every second, providing a real-time clock display.

Project 2 Calculator: 

I've created a Bash script that performs basic arithmetic operations (+, -, *, /) based on user input and handles various edge cases to ensure robustness and accuracy.

Features:
1) User Input: The script prompts the user to enter two numbers and an arithmetic operator separated by spaces.
   
2) Edge Cases: The script includes checks for:
Missing inputs.
Division by zero.
Invalid arithmetic operators.

3) Arithmetic Operations: The case statement handles the four basic arithmetic operations:
Addition: Directly adds the two numbers.
Subtraction: Subtracts the smaller number from the larger one to avoid negative results.
Multiplication: Multiplies the two numbers.
Division: Checks for zero to avoid division by zero and divides the larger number by the smaller one.


Project 3 RamSpace: 

This script is designed to monitor the memory usage of a system and send an email alert to a user when the memory usage exceeds a specified threshold. 

Features:

1) When this script is run it retrieves the current memory usage in gigabytes, providing up-to-date information on system resource consumption.

2) The script prompts the user to enter their email address, ensuring that alerts are sent to the correct recipient.

3) If the memory usage exceeds the threshold (7 GB), the script sends an automated email to the user with a warning message and the current memory usage details.

Project 4 ArchiveOldFiles:

This Bash script is designed to identify, compress, and move files larger than 20KB from a specified directory to an archive folder within the same directory.

Features:
1) Ensures the specified filepath exsist before proceeding with further operations.

2)  Counts the number of files exceeding the 20KB size limit.

3) Checks for the existence of an archive directory within the specified path and creates it if it does not exist.

4) I used a Print function to encapsulate and display the list of files that need to be compressed, enhancing code readability and organization.

5) Compresses files larger than 20KB using gzip and moves the compressed files to the archive directory.

6) Provides informative messages to the user about the operations being performed, such as the creation of the archive directory, the list of large files, and the status of file compression and movement. 


 Project 5 UserManagement:
 This Bash script is intended to automate the creation of a new user account on any  OS-based system. 

 Features:
1) The script checks if it is being run by the root user. If not, it exits with an appropriate message. This ensures that the script has the necessary permissions to create new user accounts and modify system settings.

2) The script requires at least one argument (the username). If no arguments are provided, it displays a usage message and exits, guiding the user on how to correctly run the script.

3) Captures the username from the first argument and shifts the positional parameters to process any additional comments. It then prints the username and any additional comments.

4) Generates a unique password using the current date and time in nanoseconds, ensuring a high degree of uniqueness and security.

5) Creates a new user with the specified username and sets the default shell to /bin/bash. The script checks if the user creation was successful and provides appropriate response.

6) Sets the generated password for the new user account. The script verifies if the password was set correctly and provides feedback.

7) The script prompts the user to enter a new personal password to replace the default generated one. The script uses read -sp to prompt for the new password securely, without echoing the input on the terminal. Furthermore, it ensures that this new password is set correctly and provides feedback.

8) The script provides clear and informative outputs at each step of the process, including success and error messages. This helps the user understand what is happening and any issues that may occur.

9) Displays the final set of information, including the username and the newly set password. This ensures the user has all the necessary details to log in.
