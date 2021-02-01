#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>

int main()
{
pid_t pid_main;
pid_t pid_child, return_pid;


pid_main = getpid();
return_pid = fork();
printf("The current process %d \n",pid_main);
printf("The parent process of the current process is %d \n",getppid());
printf("The child return pid %d \n", return_pid);
printf("The current process %d \n",getpid());
printf("The parent process of the current process is %d \n",getppid());

}
