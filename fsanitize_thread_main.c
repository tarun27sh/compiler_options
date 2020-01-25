#include<stdio.h>
#include<pthread.h>
#include <sys/types.h>
#include <unistd.h>

int global;
void thread_fn()
{
    while (1) {
        //printf("[tid=%u] global=%d\n", gettid(), ++global);
        printf("[tid=%lu] global=%d\n", pthread_self(), ++global);
        sleep(1);
        if (global > 5) return;
    }
}
int main()
{
    pthread_t thread;
    pthread_create(&thread, NULL, thread_fn, NULL);
    while (1) {
        //printf("[tid=%u] global=%d\n", gettid(),++global);
        printf("[tid=%lu] global=%d\n", pthread_self(), ++global);
        sleep(1);
        if (global > 5) return 0;
    }
    pthread_join(thread, NULL);
}
