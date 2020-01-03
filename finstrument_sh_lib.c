#include "finstrument_sh_lib.h"
#define _GNU_SOURCE
#include <dlfcn.h>
//#undef _GNU_SOURCE
#include<stdio.h>
#include<stdbool.h>
#include"finstrument_sh_lib.h"

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
int add2values(int a, int b) 
{
    return (a+b);
}
