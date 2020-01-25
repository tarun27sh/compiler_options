# Compiler Options
## => finstrument_main
### disassemble of main
```nasm
Dump of assembler code for function main:
   0x0000000000400970 <+0>:	push   rbp
   0x0000000000400971 <+1>:	mov    rbp,rsp
   0x0000000000400974 <+4>:	sub    rsp,0x10
   0x0000000000400978 <+8>:	movabs rax,0x400970
   0x0000000000400982 <+18>:	mov    rsi,QWORD PTR [rbp+0x8]
   0x0000000000400986 <+22>:	mov    rdi,rax
   0x0000000000400989 <+25>:	call   0x4007a0 <__cyg_profile_func_enter@plt>
   0x000000000040098e <+30>:	mov    DWORD PTR [rbp-0x4],0x0
   0x0000000000400995 <+37>:	movabs rdi,0x400a68
   0x000000000040099f <+47>:	mov    al,0x0
   0x00000000004009a1 <+49>:	call   0x400770 <printf@plt>
   0x00000000004009a6 <+54>:	mov    DWORD PTR [rbp-0x8],eax
   0x00000000004009a9 <+57>:	call   0x400910 <fn1>
   0x00000000004009ae <+62>:	movabs rcx,0x400970
   0x00000000004009b8 <+72>:	mov    rsi,QWORD PTR [rbp+0x8]
   0x00000000004009bc <+76>:	mov    rdi,rcx
   0x00000000004009bf <+79>:	call   0x400790 <__cyg_profile_func_exit@plt>
   0x00000000004009c4 <+84>:	xor    eax,eax
   0x00000000004009c6 <+86>:	add    rsp,0x10
   0x00000000004009ca <+90>:	pop    rbp
   0x00000000004009cb <+91>:	ret    
End of assembler dump.
```
### run
HW
I am just stalling
I am just stalling

## => finstrument_sh_lib_main
### disassemble of main
```nasm
Dump of assembler code for function main:
   0x00000000004009e0 <+0>:	push   rbp
   0x00000000004009e1 <+1>:	mov    rbp,rsp
   0x00000000004009e4 <+4>:	sub    rsp,0x10
   0x00000000004009e8 <+8>:	movabs rax,0x4009e0
   0x00000000004009f2 <+18>:	mov    rsi,QWORD PTR [rbp+0x8]
   0x00000000004009f6 <+22>:	mov    rdi,rax
   0x00000000004009f9 <+25>:	call   0x400800 <__cyg_profile_func_enter@plt>
   0x00000000004009fe <+30>:	mov    DWORD PTR [rbp-0x4],0x0
   0x0000000000400a05 <+37>:	movabs rdi,0x400aef
   0x0000000000400a0f <+47>:	mov    al,0x0
   0x0000000000400a11 <+49>:	call   0x4007c0 <printf@plt>
   0x0000000000400a16 <+54>:	mov    DWORD PTR [rbp-0x8],eax
   0x0000000000400a19 <+57>:	call   0x400980 <fn1>
   0x0000000000400a1e <+62>:	movabs rcx,0x4009e0
   0x0000000000400a28 <+72>:	mov    rsi,QWORD PTR [rbp+0x8]
   0x0000000000400a2c <+76>:	mov    rdi,rcx
   0x0000000000400a2f <+79>:	call   0x4007e0 <__cyg_profile_func_exit@plt>
   0x0000000000400a34 <+84>:	xor    eax,eax
   0x0000000000400a36 <+86>:	add    rsp,0x10
   0x0000000000400a3a <+90>:	pop    rbp
   0x0000000000400a3b <+91>:	ret    
End of assembler dump.
```
### run
HW
I am just stalling
I am just addiig - 3

## => fsanitize_address_main
### disassemble of main
```nasm
Dump of assembler code for function main:
   0x00000000004c2380 <+0>:	push   rbp
   0x00000000004c2381 <+1>:	mov    rbp,rsp
   0x00000000004c2384 <+4>:	push   rbx
   0x00000000004c2385 <+5>:	and    rsp,0xffffffffffffffe0
   0x00000000004c2389 <+9>:	sub    rsp,0x80
   0x00000000004c2390 <+16>:	mov    rbx,rsp
   0x00000000004c2393 <+19>:	xor    eax,eax
   0x00000000004c2395 <+21>:	mov    ecx,eax
   0x00000000004c2397 <+23>:	cmp    DWORD PTR ds:0x7081c0,0x0
   0x00000000004c239f <+31>:	mov    QWORD PTR [rbx+0x38],rcx
   0x00000000004c23a3 <+35>:	je     0x4c23b7 <main+55>
   0x00000000004c23a9 <+41>:	mov    edi,0x80
   0x00000000004c23ae <+46>:	call   0x428210 <__asan_stack_malloc_1>
   0x00000000004c23b3 <+51>:	mov    QWORD PTR [rbx+0x38],rax
   0x00000000004c23b7 <+55>:	mov    rax,QWORD PTR [rbx+0x38]
   0x00000000004c23bb <+59>:	cmp    rax,0x0
   0x00000000004c23bf <+63>:	mov    rcx,rax
   0x00000000004c23c2 <+66>:	mov    QWORD PTR [rbx+0x30],rax
   0x00000000004c23c6 <+70>:	mov    QWORD PTR [rbx+0x28],rcx
   0x00000000004c23ca <+74>:	jne    0x4c23e2 <main+98>
   0x00000000004c23d0 <+80>:	mov    rax,rsp
   0x00000000004c23d3 <+83>:	add    rax,0xffffffffffffff80
   0x00000000004c23d7 <+87>:	and    rax,0xffffffffffffffe0
   0x00000000004c23db <+91>:	mov    rsp,rax
   0x00000000004c23de <+94>:	mov    QWORD PTR [rbx+0x28],rax
   0x00000000004c23e2 <+98>:	mov    rax,QWORD PTR [rbx+0x28]
   0x00000000004c23e6 <+102>:	xor    esi,esi
   0x00000000004c23e8 <+104>:	mov    QWORD PTR [rbx+0x58],rax
   0x00000000004c23ec <+108>:	mov    rcx,rax
   0x00000000004c23ef <+111>:	add    rcx,0x20
   0x00000000004c23f6 <+118>:	mov    QWORD PTR [rax],0x41b58ab3
   0x00000000004c23fd <+125>:	movabs rdx,0x4d4ea1
   0x00000000004c2407 <+135>:	mov    QWORD PTR [rax+0x8],rdx
   0x00000000004c240b <+139>:	movabs rdx,0x4c2380
   0x00000000004c2415 <+149>:	mov    QWORD PTR [rax+0x10],rdx
   0x00000000004c2419 <+153>:	mov    rdx,rax
   0x00000000004c241c <+156>:	shr    rdx,0x3
   0x00000000004c2420 <+160>:	mov    rdi,rdx
   0x00000000004c2423 <+163>:	add    rdi,0x7fff8000
   0x00000000004c242a <+170>:	movabs r8,0xf8f8f8f8f1f1f1f1
   0x00000000004c2434 <+180>:	mov    QWORD PTR [rdx+0x7fff8000],r8
   0x00000000004c243b <+187>:	movabs r8,0xf3f3f3f3f3f3f3f8
   0x00000000004c2445 <+197>:	mov    QWORD PTR [rdx+0x7fff8008],r8
   0x00000000004c244c <+204>:	mov    DWORD PTR [rbx+0x64],0x0
   0x00000000004c2453 <+211>:	mov    DWORD PTR [rdx+0x7fff8004],0x0
   0x00000000004c245d <+221>:	mov    BYTE PTR [rdx+0x7fff8008],0x0
   0x00000000004c2464 <+228>:	mov    rdx,rcx
   0x00000000004c2467 <+231>:	mov    QWORD PTR [rbx+0x20],rdi
   0x00000000004c246b <+235>:	mov    rdi,rdx
   0x00000000004c246e <+238>:	mov    edx,0x28
   0x00000000004c2473 <+243>:	mov    QWORD PTR [rbx+0x18],rax
   0x00000000004c2477 <+247>:	mov    QWORD PTR [rbx+0x10],rcx
   0x00000000004c247b <+251>:	call   0x492310 <__asan_memset>
   0x00000000004c2480 <+256>:	mov    rcx,QWORD PTR [rbx+0x10]
   0x00000000004c2484 <+260>:	add    rcx,0x28
   0x00000000004c248b <+267>:	mov    rdx,rcx
   0x00000000004c248e <+270>:	shr    rdx,0x3
   0x00000000004c2492 <+274>:	mov    r9b,BYTE PTR [rdx+0x7fff8000]
   0x00000000004c2499 <+281>:	cmp    r9b,0x0
   0x00000000004c249d <+285>:	mov    QWORD PTR [rbx+0x8],rcx
   0x00000000004c24a1 <+289>:	mov    BYTE PTR [rbx+0x7],r9b
   0x00000000004c24a5 <+293>:	je     0x4c24cf <main+335>
   0x00000000004c24ab <+299>:	mov    rax,QWORD PTR [rbx+0x8]
   0x00000000004c24af <+303>:	and    rax,0x7
   0x00000000004c24b5 <+309>:	add    rax,0x3
   0x00000000004c24bb <+315>:	mov    cl,BYTE PTR [rbx+0x7]
   0x00000000004c24be <+318>:	cmp    al,cl
   0x00000000004c24c0 <+320>:	jl     0x4c24cf <main+335>
   0x00000000004c24c6 <+326>:	mov    rdi,QWORD PTR [rbx+0x8]
   0x00000000004c24ca <+330>:	call   0x498fa0 <__asan_report_store4>
   0x00000000004c24cf <+335>:	mov    rax,QWORD PTR [rbx+0x8]
   0x00000000004c24d3 <+339>:	mov    DWORD PTR [rax],0x1
   0x00000000004c24d9 <+345>:	mov    rcx,QWORD PTR [rbx+0x20]
   0x00000000004c24dd <+349>:	mov    DWORD PTR [rcx+0x4],0xf8f8f8f8
   0x00000000004c24e4 <+356>:	mov    BYTE PTR [rcx+0x8],0xf8
   0x00000000004c24e8 <+360>:	mov    rdx,QWORD PTR [rbx+0x18]
   0x00000000004c24ec <+364>:	mov    QWORD PTR [rdx],0x45e0360e
   0x00000000004c24f3 <+371>:	mov    rsi,QWORD PTR [rbx+0x30]
   0x00000000004c24f7 <+375>:	cmp    rsi,0x0
   0x00000000004c24fb <+379>:	je     0x4c2526 <main+422>
   0x00000000004c2501 <+385>:	movabs rax,0xf5f5f5f5f5f5f5f5
   0x00000000004c250b <+395>:	mov    rcx,QWORD PTR [rbx+0x20]
   0x00000000004c250f <+399>:	mov    QWORD PTR [rcx],rax
   0x00000000004c2512 <+402>:	mov    QWORD PTR [rcx+0x8],rax
   0x00000000004c2516 <+406>:	mov    rax,QWORD PTR [rbx+0x30]
   0x00000000004c251a <+410>:	mov    rdx,QWORD PTR [rax+0x78]
   0x00000000004c251e <+414>:	mov    BYTE PTR [rdx],0x0
   0x00000000004c2521 <+417>:	jmp    0x4c2539 <main+441>
   0x00000000004c2526 <+422>:	mov    rax,QWORD PTR [rbx+0x20]
   0x00000000004c252a <+426>:	mov    QWORD PTR [rax],0x0
   0x00000000004c2531 <+433>:	mov    QWORD PTR [rax+0x8],0x0
   0x00000000004c2539 <+441>:	xor    eax,eax
   0x00000000004c253b <+443>:	lea    rsp,[rbp-0x8]
   0x00000000004c253f <+447>:	pop    rbx
   0x00000000004c2540 <+448>:	pop    rbp
   0x00000000004c2541 <+449>:	ret    
End of assembler dump.
```
### run
=================================================================
==10631==ERROR: AddressSanitizer: stack-buffer-overflow on address 0x7ffd5b34ee88 at pc 0x0000004c24cf bp 0x7ffd5b34ee30 sp 0x7ffd5b34ee28
WRITE of size 4 at 0x7ffd5b34ee88 thread T0
    #0 0x4c24ce in main /home/vagrant/compiler_options/fsanitize_address_main.c:5:11
    #1 0x7f8b84e8e82f in __libc_start_main /build/glibc-LK5gWL/glibc-2.23/csu/../csu/libc-start.c:291
    #2 0x41ada8 in _start (/home/vagrant/compiler_options/fsanitize_address_main+0x41ada8)

Address 0x7ffd5b34ee88 is located in stack of thread T0 at offset 72 in frame
    #0 0x4c238f in main /home/vagrant/compiler_options/fsanitize_address_main.c:3

  This frame has 1 object(s):
    [32, 72) 'a' (line 4) <== Memory access at offset 72 overflows this variable
HINT: this may be a false positive if your program uses some custom stack unwind mechanism, swapcontext or vfork
      (longjmp and C++ exceptions *are* supported)
SUMMARY: AddressSanitizer: stack-buffer-overflow /home/vagrant/compiler_options/fsanitize_address_main.c:5:11 in main
Shadow bytes around the buggy address:
  0x10002b661d80: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x10002b661d90: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x10002b661da0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x10002b661db0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x10002b661dc0: 00 00 00 00 00 00 00 00 f1 f1 f1 f1 00 00 00 00
=>0x10002b661dd0: 00[f3]f3 f3 f3 f3 f3 f3 00 00 00 00 00 00 00 00
  0x10002b661de0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x10002b661df0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x10002b661e00: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x10002b661e10: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x10002b661e20: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
Shadow byte legend (one shadow byte represents 8 application bytes):
  Addressable:           00
  Partially addressable: 01 02 03 04 05 06 07 
  Heap left redzone:       fa
  Freed heap region:       fd
  Stack left redzone:      f1
  Stack mid redzone:       f2
  Stack right redzone:     f3
  Stack after return:      f5
  Stack use after scope:   f8
  Global redzone:          f9
  Global init order:       f6
  Poisoned by user:        f7
  Container overflow:      fc
  Array cookie:            ac
  Intra object redzone:    bb
  ASan internal:           fe
  Left alloca redzone:     ca
  Right alloca redzone:    cb
  Shadow gap:              cc
==10631==ABORTING

## => fsanitize_memory_main
### disassemble of main
```nasm
Dump of assembler code for function main:
   0x00000000004946e0 <+0>:	push   rbp
   0x00000000004946e1 <+1>:	mov    rbp,rsp
   0x00000000004946e4 <+4>:	sub    rsp,0x40
   0x00000000004946e8 <+8>:	lea    rax,[rbp-0x10]
   0x00000000004946ec <+12>:	movabs rcx,0x500000000000
   0x00000000004946f6 <+22>:	lea    rdx,[rbp-0x4]
   0x00000000004946fa <+26>:	xor    rdx,rcx
   0x00000000004946fd <+29>:	mov    DWORD PTR [rdx],0xffffffff
   0x0000000000494703 <+35>:	lea    rsi,[rbp-0x10]
   0x0000000000494707 <+39>:	xor    rsi,rcx
   0x000000000049470a <+42>:	mov    QWORD PTR [rsi],0xffffffffffffffff
   0x0000000000494711 <+49>:	lea    rsi,[rbp-0x14]
   0x0000000000494715 <+53>:	xor    rsi,rcx
   0x0000000000494718 <+56>:	mov    DWORD PTR [rsi],0xffffffff
   0x000000000049471e <+62>:	mov    DWORD PTR [rdx],0x0
   0x0000000000494724 <+68>:	mov    DWORD PTR [rbp-0x4],0x0
   0x000000000049472b <+75>:	mov    rcx,QWORD PTR [rip+0x22a8ae]        # 0x6befe0
   0x0000000000494732 <+82>:	mov    QWORD PTR fs:[rcx],0x0
   0x000000000049473a <+90>:	mov    rcx,QWORD PTR [rip+0x22a85f]        # 0x6befa0
   0x0000000000494741 <+97>:	mov    QWORD PTR fs:[rcx],0x0
   0x0000000000494749 <+105>:	mov    edi,0x28
   0x000000000049474e <+110>:	mov    QWORD PTR [rbp-0x20],rax
   0x0000000000494752 <+114>:	mov    QWORD PTR [rbp-0x28],rcx
   0x0000000000494756 <+118>:	call   0x427920 <malloc>
   0x000000000049475b <+123>:	mov    rcx,QWORD PTR [rbp-0x28]
   0x000000000049475f <+127>:	mov    rdx,QWORD PTR fs:[rcx]
   0x0000000000494763 <+131>:	movabs rsi,0x500000000000
   0x000000000049476d <+141>:	mov    rdi,QWORD PTR [rbp-0x20]
   0x0000000000494771 <+145>:	xor    rdi,rsi
   0x0000000000494774 <+148>:	mov    QWORD PTR [rdi],rdx
   0x0000000000494777 <+151>:	mov    QWORD PTR [rbp-0x10],rax
   0x000000000049477b <+155>:	mov    rax,QWORD PTR [rbp-0x10]
   0x000000000049477f <+159>:	mov    rdx,QWORD PTR [rbp-0x20]
   0x0000000000494783 <+163>:	xor    rdx,rsi
   0x0000000000494786 <+166>:	mov    rdx,QWORD PTR [rdx]
   0x0000000000494789 <+169>:	add    rax,0x8
   0x000000000049478f <+175>:	cmp    rdx,0x0
   0x0000000000494793 <+179>:	mov    QWORD PTR [rbp-0x30],rax
   0x0000000000494797 <+183>:	je     0x4947a2 <main+194>
   0x000000000049479d <+189>:	call   0x41c4a0 <__msan_warning_noreturn>
   0x00000000004947a2 <+194>:	mov    rax,QWORD PTR [rbp-0x30]
   0x00000000004947a6 <+198>:	mov    ecx,DWORD PTR [rax]
   0x00000000004947a8 <+200>:	movabs rdx,0x500000000000
   0x00000000004947b2 <+210>:	xor    rax,rdx
   0x00000000004947b5 <+213>:	mov    esi,DWORD PTR [rax]
   0x00000000004947b7 <+215>:	lea    rax,[rbp-0x14]
   0x00000000004947bb <+219>:	xor    rax,rdx
   0x00000000004947be <+222>:	mov    DWORD PTR [rax],esi
   0x00000000004947c0 <+224>:	mov    DWORD PTR [rbp-0x14],ecx
   0x00000000004947c3 <+227>:	mov    ecx,DWORD PTR [rbp-0x14]
   0x00000000004947c6 <+230>:	mov    esi,DWORD PTR [rax]
   0x00000000004947c8 <+232>:	test   esi,esi
   0x00000000004947ca <+234>:	setne  dil
   0x00000000004947ce <+238>:	not    esi
   0x00000000004947d0 <+240>:	and    esi,ecx
   0x00000000004947d2 <+242>:	test   esi,esi
   0x00000000004947d4 <+244>:	sete   r8b
   0x00000000004947d8 <+248>:	test   ecx,ecx
   0x00000000004947da <+250>:	setne  r9b
   0x00000000004947de <+254>:	and    dil,r8b
   0x00000000004947e1 <+257>:	mov    BYTE PTR [rbp-0x31],r9b
   0x00000000004947e5 <+261>:	je     0x4947f5 <main+277>
   0x00000000004947eb <+267>:	jmp    0x4947f0 <main+272>
   0x00000000004947f0 <+272>:	call   0x41c4a0 <__msan_warning_noreturn>
   0x00000000004947f5 <+277>:	mov    al,BYTE PTR [rbp-0x31]
   0x00000000004947f8 <+280>:	test   al,0x1
   0x00000000004947fa <+282>:	jne    0x494805 <main+293>
   0x0000000000494800 <+288>:	jmp    0x494867 <main+391>
   0x0000000000494805 <+293>:	mov    esi,DWORD PTR [rbp-0x14]
   0x0000000000494808 <+296>:	movabs rax,0x500000000000
   0x0000000000494812 <+306>:	lea    rcx,[rbp-0x14]
   0x0000000000494816 <+310>:	xor    rcx,rax
   0x0000000000494819 <+313>:	mov    edx,DWORD PTR [rcx]
   0x000000000049481b <+315>:	mov    rax,QWORD PTR [rip+0x22a7be]        # 0x6befe0
   0x0000000000494822 <+322>:	mov    QWORD PTR fs:[rax],0x0
   0x000000000049482a <+330>:	mov    DWORD PTR fs:[rax+0x8],edx
   0x000000000049482e <+334>:	mov    rax,QWORD PTR [rip+0x22a7b3]        # 0x6befe8
   0x0000000000494835 <+341>:	mov    DWORD PTR fs:[rax+0x8],edx
   0x0000000000494839 <+345>:	mov    rax,QWORD PTR [rip+0x22a710]        # 0x6bef50
   0x0000000000494840 <+352>:	mov    QWORD PTR fs:[rax],0x0
   0x0000000000494848 <+360>:	mov    rax,QWORD PTR [rip+0x22a751]        # 0x6befa0
   0x000000000049484f <+367>:	mov    DWORD PTR fs:[rax],0x0
   0x0000000000494856 <+374>:	movabs rdi,0x4a2d9d
   0x0000000000494860 <+384>:	mov    al,0x0
   0x0000000000494862 <+386>:	call   0x4317f0 <printf>
   0x0000000000494867 <+391>:	xor    eax,eax
   0x0000000000494869 <+393>:	mov    rcx,QWORD PTR [rip+0x22a730]        # 0x6befa0
   0x0000000000494870 <+400>:	mov    DWORD PTR fs:[rcx],0x0
   0x0000000000494877 <+407>:	add    rsp,0x40
   0x000000000049487b <+411>:	pop    rbp
   0x000000000049487c <+412>:	ret    
End of assembler dump.
```
### run
==10635==WARNING: MemorySanitizer: use-of-uninitialized-value
    #0 0x4947f4 in main /home/vagrant/compiler_options/fsanitize_memory_main.c:7:9
    #1 0x7ff1c01a982f in __libc_start_main /build/glibc-LK5gWL/glibc-2.23/csu/../csu/libc-start.c:291
    #2 0x41b698 in _start (/home/vagrant/compiler_options/fsanitize_memory_main+0x41b698)

SUMMARY: MemorySanitizer: use-of-uninitialized-value /home/vagrant/compiler_options/fsanitize_memory_main.c:7:9 in main
Exiting

## => fsanitize_leak_main
### disassemble of main
```nasm
Dump of assembler code for function main:
   0x0000000000427240 <+0>:	push   rbp
   0x0000000000427241 <+1>:	mov    rbp,rsp
   0x0000000000427244 <+4>:	sub    rsp,0x10
   0x0000000000427248 <+8>:	mov    DWORD PTR [rbp-0x4],0x0
   0x000000000042724f <+15>:	mov    edi,0x190
   0x0000000000427254 <+20>:	call   0x4079a0 <malloc>
   0x0000000000427259 <+25>:	xor    ecx,ecx
   0x000000000042725b <+27>:	mov    QWORD PTR [rbp-0x10],rax
   0x000000000042725f <+31>:	mov    eax,ecx
   0x0000000000427261 <+33>:	add    rsp,0x10
   0x0000000000427265 <+37>:	pop    rbp
   0x0000000000427266 <+38>:	ret    
End of assembler dump.
```
### run

=================================================================
==10639==ERROR: LeakSanitizer: detected memory leaks

Direct leak of 400 byte(s) in 1 object(s) allocated from:
    #0 0x4079f5 in malloc (/home/vagrant/compiler_options/fsanitize_leak_main+0x4079f5)
    #1 0x427258 in main /home/vagrant/compiler_options/fsanitize_leak_main.c:5:14
    #2 0x7f45fd7bb82f in __libc_start_main /build/glibc-LK5gWL/glibc-2.23/csu/../csu/libc-start.c:291

SUMMARY: LeakSanitizer: 400 byte(s) leaked in 1 allocation(s).

## => fsanitize_ub_main
### disassemble of main
```nasm
Dump of assembler code for function main:
   0x0000000000423250 <+0>:	push   rbp
   0x0000000000423251 <+1>:	mov    rbp,rsp
   0x0000000000423254 <+4>:	sub    rsp,0x20
   0x0000000000423258 <+8>:	mov    DWORD PTR [rbp-0x4],0x0
   0x000000000042325f <+15>:	mov    BYTE PTR [rbp-0x5],0xfe
   0x0000000000423263 <+19>:	movzx  eax,BYTE PTR [rbp-0x5]
   0x0000000000423267 <+23>:	mov    ecx,eax
   0x0000000000423269 <+25>:	add    ecx,0x2
   0x000000000042326c <+28>:	seto   dl
   0x000000000042326f <+31>:	xor    dl,0xff
   0x0000000000423272 <+34>:	test   dl,0x1
   0x0000000000423275 <+37>:	mov    DWORD PTR [rbp-0xc],eax
   0x0000000000423278 <+40>:	mov    DWORD PTR [rbp-0x10],ecx
   0x000000000042327b <+43>:	jne    0x42329f <main+79>
   0x0000000000423281 <+49>:	movabs rax,0x637b80
   0x000000000042328b <+59>:	mov    ecx,DWORD PTR [rbp-0xc]
   0x000000000042328e <+62>:	mov    edx,ecx
   0x0000000000423290 <+64>:	mov    esi,edx
   0x0000000000423292 <+66>:	mov    rdi,rax
   0x0000000000423295 <+69>:	mov    edx,0x2
   0x000000000042329a <+74>:	call   0x41f2b0 <__ubsan_handle_add_overflow>
   0x000000000042329f <+79>:	mov    eax,DWORD PTR [rbp-0x10]
   0x00000000004232a2 <+82>:	mov    BYTE PTR [rbp-0x6],al
   0x00000000004232a5 <+85>:	movzx  esi,BYTE PTR [rbp-0x6]
   0x00000000004232a9 <+89>:	movabs rdi,0x42b730
   0x00000000004232b3 <+99>:	mov    al,0x0
   0x00000000004232b5 <+101>:	call   0x402b60 <printf@plt>
   0x00000000004232ba <+106>:	xor    ecx,ecx
   0x00000000004232bc <+108>:	mov    DWORD PTR [rbp-0x14],eax
   0x00000000004232bf <+111>:	mov    eax,ecx
   0x00000000004232c1 <+113>:	add    rsp,0x20
   0x00000000004232c5 <+117>:	pop    rbp
   0x00000000004232c6 <+118>:	ret    
End of assembler dump.
```
### run
b=0

## => fsanitize_thread_main
### disassemble of main
```nasm
Dump of assembler code for function main:
   0x00000000004b30f0 <+0>:	push   rbp
   0x00000000004b30f1 <+1>:	mov    rbp,rsp
   0x00000000004b30f4 <+4>:	sub    rsp,0x30
   0x00000000004b30f8 <+8>:	mov    rdi,QWORD PTR [rbp+0x8]
   0x00000000004b30fc <+12>:	call   0x489840 <__tsan_func_entry>
   0x00000000004b3101 <+17>:	xor    eax,eax
   0x00000000004b3103 <+19>:	mov    ecx,eax
   0x00000000004b3105 <+21>:	movabs rdx,0x4b3050
   0x00000000004b310f <+31>:	mov    DWORD PTR [rbp-0x4],0x0
   0x00000000004b3116 <+38>:	lea    rdi,[rbp-0x10]
   0x00000000004b311a <+42>:	mov    rsi,rcx
   0x00000000004b311d <+45>:	call   0x4245b0 <pthread_create>
   0x00000000004b3122 <+50>:	call   0x41ccd0 <pthread_self@plt>
   0x00000000004b3127 <+55>:	movabs rcx,0x11132f8
   0x00000000004b3131 <+65>:	mov    edx,DWORD PTR ds:0x11132f8
   0x00000000004b3138 <+72>:	add    edx,0x1
   0x00000000004b313b <+75>:	mov    rdi,rcx
   0x00000000004b313e <+78>:	mov    QWORD PTR [rbp-0x18],rax
   0x00000000004b3142 <+82>:	mov    DWORD PTR [rbp-0x1c],edx
   0x00000000004b3145 <+85>:	call   0x484640 <__tsan_write4>
   0x00000000004b314a <+90>:	mov    edx,DWORD PTR [rbp-0x1c]
   0x00000000004b314d <+93>:	mov    DWORD PTR ds:0x11132f8,edx
   0x00000000004b3154 <+100>:	movabs rdi,0x4c29c9
   0x00000000004b315e <+110>:	mov    rsi,QWORD PTR [rbp-0x18]
   0x00000000004b3162 <+114>:	mov    al,0x0
   0x00000000004b3164 <+116>:	call   0x4359e0 <printf>
   0x00000000004b3169 <+121>:	mov    edi,0x1
   0x00000000004b316e <+126>:	mov    DWORD PTR [rbp-0x20],eax
   0x00000000004b3171 <+129>:	call   0x421a10 <sleep>
   0x00000000004b3176 <+134>:	mov    DWORD PTR [rbp-0x24],eax
   0x00000000004b3179 <+137>:	jmp    0x4b3122 <main+50>
End of assembler dump.
```
### run
==================
WARNING: ThreadSanitizer: data race (pid=10647)
  Read of size 4 at 0x0000011132f8 by thread T1:
    #0 thread_fn /home/vagrant/compiler_options/fsanitize_thread_main.c:13:13 (fsanitize_thread_main+0x4b30c9)

  Previous write of size 4 at 0x0000011132f8 by main thread:
    #0 main /home/vagrant/compiler_options/fsanitize_thread_main.c:22:57 (fsanitize_thread_main+0x4b3149)

  As if synchronized via sleep:
    #0 sleep <null> (fsanitize_thread_main+0x421a46)
    #1 thread_fn /home/vagrant/compiler_options/fsanitize_thread_main.c:12:9 (fsanitize_thread_main+0x4b30b4)

  Location is global 'global' of size 4 at 0x0000011132f8 (fsanitize_thread_main+0x0000011132f8)

  Thread T1 (tid=10649, running) created by main thread at:
    #0 pthread_create <null> (fsanitize_thread_main+0x4245fb)
    #1 main /home/vagrant/compiler_options/fsanitize_thread_main.c:19:5 (fsanitize_thread_main+0x4b3121)

SUMMARY: ThreadSanitizer: data race /home/vagrant/compiler_options/fsanitize_thread_main.c:13:13 in thread_fn
==================


generated with:
```bash
rm README.md ; (echo "# Compiler Options"; for b in $BINARIES; do echo "## => "$b; echo "### disassemble of main"; echo "\`\`\`nasm" ; gdb -batch  -ex 'file '$b  -ex 'disassemble main'; echo "\`\`\`"; echo "### run"; ./$b; echo ""; done 2>&1 ) |  tee  README.md```
