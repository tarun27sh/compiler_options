# $@ is the target 
# $^ are the dependencies.
CC=gcc
CFLAGS=-Wall -g  -finstrument-functions
LDFLAGS=-ldl -rdynamic -Wl,-rpath=.

.PHONY: all
all: finstrument_main finstrument_sh_lib_main fsanitize_address_main

#1 - main
finstrument_main: finstrument_main.o
	 $(CC) $(CFLAGS) finstrument_main.o -o $@ $(LDFLAGS)
finstrument_main.o:
	 $(CC) $(CFLAGS) -c finstrument_main.c -o $@ $(LDFLAGS)


#2.1 - lib.so
libfinstrument_sh_lib.so: finstrument_sh_lib.o
	 $(CC) $(CFLAGS) -shared -fPIC finstrument_sh_lib.o -o $@ $(LDFLAGS)
finstrument_sh_lib.o:
	 $(CC) $(CFLAGS) -shared -fPIC -c finstrument_sh_lib.c -o $@ $(LDFLAGS)

##2.2 - main
finstrument_sh_lib_main: finstrument_sh_lib_main.o libfinstrument_sh_lib.so
	 $(CC) -Wall -g finstrument_sh_lib_main.o -o $@ $(LDFLAGS) -L . -lfinstrument_sh_lib
finstrument_sh_lib_main.o:
	 $(CC) $(CFLAGS) -c finstrument_sh_lib_main.c -o $@ $(LDFLAGS)
#3
fsanitize_address_main: fsanitize_address_main.o
	 $(CC) $(CFLAGS) -fsanitize=address  -fno-omit-frame-pointer fsanitize_address_main.o -o $@ $(LDFLAGS)
fsanitize_address_main.o:
	 $(CC) $(CFLAGS)  -fsanitize=address -fno-omit-frame-pointer -c fsanitize_address_main.c -o $@ $(LDFLAGS)

.PHONY: clean
clean:
	rm -f *.o finstrument_main a.out libfinstrument_sh_lib.so finstrument_sh_lib_main fsanitize_address_main
