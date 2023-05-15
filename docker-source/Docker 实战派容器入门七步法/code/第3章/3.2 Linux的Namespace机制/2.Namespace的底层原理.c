#define _GNU_SOURCE
#include <sched.h>
#include <sys/wait.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>

#define NOT_OK_EXIT(code, msg); {if(code == -1){perror(msg); exit(-1);} }
static int child_func(void *hostname)
{
    sethostname(hostname, strlen(hostname));
    execlp("bash", "bash", (char *) NULL);
  return 0;
}
static char child_stack[1024*1024];
int main(int argc, char *argv[])
{
    pid_t child_pid;
    if (argc < 2) {
        printf("Usage: %s <child-hostname>\n", argv[0]);
        return -1;
    }
    child_pid = clone(child_func,child_stack + sizeof(child_stack),CLONE_NEWUTS | SIGCHLD, argv[1]);NOT_OK_EXIT(child_pid, "clone");
    waitpid(child_pid, NULL, 0);
    return 0;
}
