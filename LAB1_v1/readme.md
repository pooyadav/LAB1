## This is version 1 of initial mmp.c program.  

Here there are two main pragrams. One is getperf.sh script which just automates the execution of mmp in a loop so you can get time of a program when that is run with different parameters.

Second is mmp.c which is a c program doing matrix multiplication, which is modified version of the last week program.

The steps you need to do:

You first compile mmp.c 
$ gcc mmp.c -o mmp

Now you can open 

You can run 
$ ./getperf.sh to plot the execution time result of the mmp.c 

Please note that before running getperf script, 

compile mmp.c 

$ gcc mmp.c -o mmp


Also, open mmp.c and getperf.sh to see what this program and script are doing and think how you can change the program to improve the execution time performance of mmp.c


Next task (with sync) with our lecture 4 of SYS2, create new processes using fork command in the mmp.c and investigate how does a new process work and how much each fork command has an impact on kernel execution time and  the total time.

Further, understand what is needed to optimise this program.

And discuss with your group members. Also please post your suggestions or questions on VLE discussion forums so we can share knowledge with others.






