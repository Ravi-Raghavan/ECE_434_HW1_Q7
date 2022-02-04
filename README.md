# ECE_434_HW1_Q7
BASH Shell Script for ECE 434- Intro to Computer Systems Homework Assignment #1, Question 7

To run this script, download the Q7.sh Bash Shell Script to your local machine. 
Place the Q7.sh Bash Shell Script within any particular directory in which you would like to run this script.
Change the permissions of the file to "execute" by running the following command "chmod +x ./Q7.sh"
Now that the file is ready to be executed, you are ready to begin running this Shell Script!

To run this shell script, simply type: " ./Q7.sh file1.txt file2.txt .... fileN.txt" into the command line 
where file1.txt, file2.txt, ... fileN.txt represent the input files

The Shell Script is designed to print both intermediate and final results. 
In addition, both Intermediate and Final Results will be appended to a file called logFile.txt
In addition, a file called outFile.txt will accumulate the content of all the files that have been processed thus far. 

For each iteration X of the For Loop, the Shell Script will print the number of lines in fileX.txt, the total number of files that have been processed thus far,
the total number of lines across all the files that have been processed thus far, the contents of fileX.txt, 
all of the contents of the files that have been processed thus far

At the end of the loop, the Shell Script will print the final results. It will print the total number of files processed, 
the total number of lines in all these files, and the content of all the files that have been processed

Finally, the Shell Script will also print "Program Finished!" to indicate to the user that the program is done!!!

