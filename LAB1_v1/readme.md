## This is version 1 of initial mmp.c program.  

Here there are two main pragrams. One is getperf.sh script which just automates the execution of mmp in a loop so you can get time of a program when that is run with different parameters.

Second is mmp.c which is a c program doing matrix multiplication, which is modified version of the last week program.

The steps you need to do:

You first compile mmp.c 
(1) $ gcc mmp.c -o mmp

(2) You can run this script.

$ ./getperf.sh 

This script does three things: 
First get execution time ./mmp program and put that in data.txt file. Second, it format the input data file ( for ilustration  this script takes sample_data.txt) and third, take processed file from previous step ( for ilustration  this script takes, sample_processed) and  and plot a graph. 


Also, open mmp.c and getperf.sh to see what this program and script are doing and think how you can change the program to improve the execution time performance of mmp.c. Please understand what header files are used for which purpose? For example, understand how time is calculated and used. 

By running getperf.sh, we are learning how new processes started by just calling a utility funtion in the bash script.

Please note: you are not expected to learn details of bash script programming but we use this example to demonstrate that simple shell commands can be called in a batch mode. Please investigate what is pstree structure of these commands.



Next task (with sync) with our lecture 4 of SYS2, create new processes using fork command in the mmp.c and investigate how does a new process work and how much each fork command has an impact on kernel execution time and  the total time.

Further, understand what is needed to optimise this program.

And discuss with your group members. Also please post your suggestions or questions on VLE discussion forums so we can share knowledge with others.






