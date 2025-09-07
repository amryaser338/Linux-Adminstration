#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <sys/wait.h>

void main(){
	printf("iam parent and my pid : %d\n", getpid());
	int w1=fork();
	if(w1==0)
	{
		printf("iam worker 1 and my pid : %d\n", getpid());
		char *args[] = {"/usr/bin/mpstat", NULL};
		execv(args[0], args);
		printf("w1 mpstat failed");
		exit(1);
	}
	int w2=fork();
	if(w2==0)
	{
		printf("iam worker 2 and my pid : %d\n", getpid());
		char *args[] = {"/bin/ps", NULL};
                execv(args[0], args);
                printf("w2 ps failed");
                exit(1);
	}
	wait(NULL);
	wait(NULL);
	printf("Parent Collect w1 and w2 Processes \n");
}
