#define _GNU_SOURCE
#include <dlfcn.h>
//#undef _GNU_SOURCE
#include<stdio.h>
#include<stdbool.h>

int spaces=0;

static void __attribute__((no_instrument_function))
_print_pretty(bool is_enter, int spaces, const char *fn)
{
    for (int iter=0; iter<spaces; ++iter) {
        printf(" ");
    }
    printf("[%s] %s\n", is_enter ? "+" : "-", fn);
}

static void __attribute__((no_instrument_function))
__cyg_profile_func_enter (void *this_fn,
                               void *call_site) 
{
    Dl_info info;
    dladdr(__builtin_return_address(0), &info);
    //printf("[+] %s\n", info.dli_sname);
    _print_pretty(true, spaces++, info.dli_sname);
}

static void __attribute__((no_instrument_function))
__cyg_profile_func_exit  (void *this_fn,
                               void *call_site) 
{
    Dl_info info;
    dladdr(__builtin_return_address(0), &info);
    //printf("[-] %s\n", info.dli_sname);
    _print_pretty(false, --spaces, info.dli_sname);
}


void
fn2() {
    printf("I am just stalling\n");
}
void
fn1() {
    printf("I am just stalling\n");
    fn2();
}

int main() 
{
    printf("HW\n");
    fn1();
    return 0;
}
