# $@ is the target 
# $^ are the dependencies.
#CC=gcc
CC=clang-9
CFLAGS=-Wall -g
LDFLAGS=-ldl -rdynamic -Wl,-rpath=.

.PHONY: all
all: finstrument_main finstrument_sh_lib_main \
	fsanitize_address_main fsanitize_memory_main fsanitize_leak_main fsanitize_thread_main fsanitize_ub_main

run: finstrument_main finstrument_sh_lib_main \
	fsanitize_address_main fsanitize_memory_main fsanitize_leak_main fsanitize_thread_main fsanitize_ub_main
	-./finstrument_main
	-./finstrument_sh_lib_main
	-./fsanitize_address_main
	-./fsanitize_memory_main
	-./fsanitize_leak_main
	-./fsanitize_thread_main
	-./fsanitize_ub_main

#1 - main
finstrument_main: finstrument_main.o
	 $(CC) $(CFLAGS) -finstrument-functions finstrument_main.o -o $@ $(LDFLAGS)
finstrument_main.o:
	 $(CC) $(CFLAGS) -finstrument-functions -c finstrument_main.c -o $@ $(LDFLAGS)


#2.1 - lib.so
libfinstrument_sh_lib.so: finstrument_sh_lib.o
	 $(CC) $(CFLAGS) -finstrument-functions -shared -fPIC finstrument_sh_lib.o -o $@ $(LDFLAGS)
finstrument_sh_lib.o:
	 $(CC) $(CFLAGS) -finstrument-functions -shared -fPIC -c finstrument_sh_lib.c -o $@ $(LDFLAGS)

##2.2 - main
finstrument_sh_lib_main: finstrument_sh_lib_main.o libfinstrument_sh_lib.so
	 $(CC) $(CFLAGS)  finstrument_sh_lib_main.o -o $@ $(LDFLAGS) -L . -lfinstrument_sh_lib
finstrument_sh_lib_main.o:
	 $(CC) $(CFLAGS) -finstrument-functions -c finstrument_sh_lib_main.c -o $@ $(LDFLAGS)
#3
fsanitize_address_main: fsanitize_address_main.o
	 $(CC) $(CFLAGS) -fsanitize=address  -fno-omit-frame-pointer fsanitize_address_main.o -o $@ $(LDFLAGS)
fsanitize_address_main.o:
	 $(CC) $(CFLAGS)  -fsanitize=address -fno-omit-frame-pointer -c fsanitize_address_main.c -o $@ $(LDFLAGS)

#4 - not supported by gcc
fsanitize_memory_main: fsanitize_memory_main.o
	 $(CC) $(CFLAGS) -fsanitize=memory  -fno-omit-frame-pointer fsanitize_memory_main.o -o $@ $(LDFLAGS)
fsanitize_memory_main.o:
	 $(CC) $(CFLAGS)  -fsanitize=memory -fno-omit-frame-pointer -c fsanitize_memory_main.c -o $@ $(LDFLAGS)

#5
fsanitize_leak_main: fsanitize_leak_main.o
	 $(CC) $(CFLAGS) -fsanitize=leak  -fno-omit-frame-pointer fsanitize_leak_main.o -o $@ $(LDFLAGS)
fsanitize_leak_main.o:
	 $(CC) $(CFLAGS)  -fsanitize=leak -fno-omit-frame-pointer -c fsanitize_leak_main.c -o $@ $(LDFLAGS)


#6
fsanitize_thread_main: fsanitize_thread_main.o
	 $(CC) $(CFLAGS) -fsanitize=thread  -fno-omit-frame-pointer fsanitize_thread_main.o -o $@ $(LDFLAGS)
fsanitize_thread_main.o:
	 $(CC) $(CFLAGS)  -fsanitize=thread -fno-omit-frame-pointer -c fsanitize_thread_main.c -o $@ $(LDFLAGS) -pthread

#7
fsanitize_ub_main: fsanitize_ub_main.o
	 $(CC) $(CFLAGS) -fsanitize=undefined  -fno-omit-frame-pointer fsanitize_ub_main.o -o $@ $(LDFLAGS)
fsanitize_ub_main.o:
	 $(CC) $(CFLAGS)  -fsanitize=undefined -fno-omit-frame-pointer -c fsanitize_ub_main.c -o $@ $(LDFLAGS)

.PHONY: clean
clean:
	rm -f *.o a.out \
	finstrument_main libfinstrument_sh_lib.so finstrument_sh_lib_main \
	fsanitize_address_main fsanitize_memory_main fsanitize_leak_main fsanitize_thread_main fsanitize_ub_main
