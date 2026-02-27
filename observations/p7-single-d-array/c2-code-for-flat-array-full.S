CompileCommand: print com/mpataki/Tensor4DBenchmark.realTest bool print = true
# JMH version: 1.37
# VM version: JDK 24.0.2-internal, OpenJDK 64-Bit Server VM, 24.0.2-internal-adhoc.mpataki.jdk24u
# VM invoker: /home/mpataki/projects/jdk24u/build/linux-x86_64-server-release/jdk/bin/java
# VM options: -XX:+UnlockDiagnosticVMOptions -XX:CompileCommand=print,com.mpataki.Tensor4DBenchmark::realTest
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 2 iterations, 10 s each
# Measurement: 2 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Throughput, ops/time
# Benchmark: com.mpataki.Tensor4DBenchmark.accessTest

# Run progress: 0.00% complete, ETA 00:01:20
# Warmup Fork: 1 of 1
CompileCommand: print com/mpataki/Tensor4DBenchmark.realTest bool print = true
WARNING: A terminally deprecated method in sun.misc.Unsafe has been called
WARNING: sun.misc.Unsafe::objectFieldOffset has been called by org.openjdk.jmh.util.Utils (file:/home/mpataki/projects/jmh/tensor.benchmark/target/benchmarks.jar)
WARNING: Please consider reporting this to the maintainers of class org.openjdk.jmh.util.Utils
WARNING: sun.misc.Unsafe::objectFieldOffset will be removed in a future release

============================= C1-compiled nmethod ==============================
----------------------------------- Assembly -----------------------------------

Compiled method (c1) 513  913 %     3       com.mpataki.Tensor4DBenchmark::realTest @ 4 (58 bytes)
 total in heap  [0x00007fcde1118388,0x00007fcde1118838] = 1200
 relocation     [0x00007fcde1118460,0x00007fcde11184b8] = 88
 main code      [0x00007fcde11184c0,0x00007fcde11187e0] = 800
 stub code      [0x00007fcde11187e0,0x00007fcde1118820] = 64
 oops           [0x00007fcde1118820,0x00007fcde1118828] = 8
 metadata       [0x00007fcde1118828,0x00007fcde1118838] = 16
 immutable data [0x00007fcda02fc020,0x00007fcda02fc1a0] = 384
 dependencies   [0x00007fcda02fc020,0x00007fcda02fc028] = 8
 nul chk table  [0x00007fcda02fc028,0x00007fcda02fc060] = 56
 scopes pcs     [0x00007fcda02fc060,0x00007fcda02fc120] = 192
 scopes data    [0x00007fcda02fc120,0x00007fcda02fc1a0] = 128

[Disassembly]
--------------------------------------------------------------------------------
[Constant Pool (empty)]

--------------------------------------------------------------------------------

add    %al,(%rax)
[Instructions begin]
  0x00007fcde11184c0:   data16 data16 nopw 0x0(%rax,%rax,1)
  0x00007fcde11184cb:   data16 data16 xchg %ax,%ax
  0x00007fcde11184cf:   data16 xchg %ax,%ax
[Entry Point]
  # {method} {0x00007fcdbc95ca80} 'realTest' '()F' in 'com/mpataki/Tensor4DBenchmark'
  0x00007fcde11184d2:   mov    0x8(%rsi),%r10d
  0x00007fcde11184d6:   cmp    0x8(%rax),%r10d
  0x00007fcde11184da:   jne    0x00007fcde8586060           ;   {runtime_call Shared Runtime ic_miss_blob}
[Verified Entry Point]
  0x00007fcde11184e0:   mov    %eax,-0x14000(%rsp)
  0x00007fcde11184e7:   push   %rbp
  0x00007fcde11184e8:   sub    $0x60,%rsp
  0x00007fcde11184ec:   cmpl   $0x0,0x20(%r15)
  0x00007fcde11184f4:   je     0x00007fcde11184fb
  0x00007fcde11184f6:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
  0x00007fcde11184fb:   movabs $0x7fcdbca1a080,%rdi         ;   {metadata(method data for {method} {0x00007fcdbc95ca80} 'realTest' '()F' in 'com/mpataki/Tensor4DBenchmark')}
  0x00007fcde1118505:   mov    0xf4(%rdi),%ebx
  0x00007fcde111850b:   add    $0x2,%ebx
  0x00007fcde111850e:   mov    %ebx,0xf4(%rdi)
  0x00007fcde1118514:   and    $0x7fe,%ebx
  0x00007fcde111851a:   test   %ebx,%ebx
  0x00007fcde111851c:   je     0x00007fcde111873e
  0x00007fcde1118522:   mov    $0x0,%edi
  0x00007fcde1118527:   vxorps %xmm0,%xmm0,%xmm0
  0x00007fcde111852b:   vmovss %xmm0,0x54(%rsp)
  0x00007fcde1118531:   jmp    0x00007fcde1118679
  0x00007fcde1118536:   xchg   %ax,%ax
  0x00007fcde1118538:   mov    %rdi,%rax
  0x00007fcde111853b:   mov    $0x40,%ecx
  0x00007fcde1118540:   cmp    $0x80000000,%eax
  0x00007fcde1118545:   jne    0x00007fcde1118556
  0x00007fcde111854b:   xor    %edx,%edx
  0x00007fcde111854d:   cmp    $0xffffffff,%ecx
  0x00007fcde1118550:   je     0x00007fcde1118559
  0x00007fcde1118556:   cltd
  0x00007fcde1118557:   idiv   %ecx                         ; implicit exception: dispatches to 0x00007fcde111875f
  0x00007fcde1118559:   mov    %rdx,%rcx
  0x00007fcde111855c:   mov    %rdi,%rax
  0x00007fcde111855f:   mov    $0x10,%r8d
  0x00007fcde1118565:   cmp    $0x80000000,%eax
  0x00007fcde111856a:   jne    0x00007fcde111857c
  0x00007fcde1118570:   xor    %edx,%edx
  0x00007fcde1118572:   cmp    $0xffffffff,%r8d
  0x00007fcde1118576:   je     0x00007fcde1118580
  0x00007fcde111857c:   cltd
  0x00007fcde111857d:   idiv   %r8d                         ; implicit exception: dispatches to 0x00007fcde1118764
  0x00007fcde1118580:   mov    %rdx,%r8
  0x00007fcde1118583:   mov    %rdi,%rax
  0x00007fcde1118586:   mov    $0x1c,%r9d
  0x00007fcde111858c:   cmp    $0x80000000,%eax
  0x00007fcde1118591:   jne    0x00007fcde11185a3
  0x00007fcde1118597:   xor    %edx,%edx
  0x00007fcde1118599:   cmp    $0xffffffff,%r9d
  0x00007fcde111859d:   je     0x00007fcde11185a7
  0x00007fcde11185a3:   cltd
  0x00007fcde11185a4:   idiv   %r9d                         ; implicit exception: dispatches to 0x00007fcde1118769
  0x00007fcde11185a7:   mov    %rdx,%r9
  0x00007fcde11185aa:   mov    %rdi,%rax
  0x00007fcde11185ad:   mov    $0x20,%ebx
  0x00007fcde11185b2:   cmp    $0x80000000,%eax
  0x00007fcde11185b7:   jne    0x00007fcde11185c8
  0x00007fcde11185bd:   xor    %edx,%edx
  0x00007fcde11185bf:   cmp    $0xffffffff,%ebx
  0x00007fcde11185c2:   je     0x00007fcde11185cb
  0x00007fcde11185c8:   cltd
  0x00007fcde11185c9:   idiv   %ebx                         ; implicit exception: dispatches to 0x00007fcde111876e
  0x00007fcde11185cb:   mov    %rdx,%rbx
  0x00007fcde11185ce:   mov    0x1c(%rsi),%eax              ; implicit exception: dispatches to 0x00007fcde1118773
  0x00007fcde11185d1:   shl    $0x3,%rax
  0x00007fcde11185d5:   cmp    (%rax),%rax                  ; implicit exception: dispatches to 0x00007fcde1118778
  0x00007fcde11185d8:   mov    %rax,%rdx
  0x00007fcde11185db:   movabs $0x7fcdbca1a080,%r11         ;   {metadata(method data for {method} {0x00007fcdbc95ca80} 'realTest' '()F' in 'com/mpataki/Tensor4DBenchmark')}
  0x00007fcde11185e5:   movabs $0xb40dc460,%r10             ;   {metadata('com/mpataki/Tensor4D')}
  0x00007fcde11185ef:   mov    %r10,0x160(%r11)
  0x00007fcde11185f6:   addq   $0x1,0x168(%r11)
  0x00007fcde11185fe:   mov    %rcx,%rdx
  0x00007fcde1118601:   mov    %r8,%rcx
  0x00007fcde1118604:   mov    %r9,%r8
  0x00007fcde1118607:   mov    %rbx,%r9
  0x00007fcde111860a:   mov    %rsi,0x48(%rsp)
  0x00007fcde111860f:   mov    %rax,%rsi
  0x00007fcde1118612:   mov    %edi,0x3c(%rsp)
  0x00007fcde1118616:   nop
  0x00007fcde1118617:   call   0x00007fcde8586360           ; ImmutableOopMap {[72]=Oop }
                                                            ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                            ; - com.mpataki.Tensor4DBenchmark::realTest@45 (line 26)
                                                            ;   {optimized virtual_call}
  0x00007fcde111861c:   nopl   0x294(%rax,%rax,1)           ;   {post_call_nop}
  0x00007fcde1118624:   vaddss 0x54(%rsp),%xmm0,%xmm0
  0x00007fcde111862a:   mov    0x3c(%rsp),%edi
  0x00007fcde111862e:   inc    %edi
  0x00007fcde1118630:   movabs $0x7fcdbca1a080,%rsi         ;   {metadata(method data for {method} {0x00007fcdbc95ca80} 'realTest' '()F' in 'com/mpataki/Tensor4DBenchmark')}
  0x00007fcde111863a:   mov    0xf8(%rsi),%ebx
  0x00007fcde1118640:   add    $0x2,%ebx
  0x00007fcde1118643:   mov    %ebx,0xf8(%rsi)
  0x00007fcde1118649:   and    $0x3ffe,%ebx
  0x00007fcde111864f:   test   %ebx,%ebx
  0x00007fcde1118651:   je     0x00007fcde111877d
  0x00007fcde1118657:   mov    0x30(%r15),%r10              ; ImmutableOopMap {[72]=Oop }
                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                            ; - (reexecute) com.mpataki.Tensor4DBenchmark::realTest@53 (line 21)
  0x00007fcde111865b:   test   %eax,(%r10)                  ;   {poll}
  0x00007fcde111865e:   movabs $0x7fcdbca1a080,%rsi         ;   {metadata(method data for {method} {0x00007fcdbc95ca80} 'realTest' '()F' in 'com/mpataki/Tensor4DBenchmark')}
  0x00007fcde1118668:   incl   0x188(%rsi)
  0x00007fcde111866e:   vmovss %xmm0,0x54(%rsp)
  0x00007fcde1118674:   mov    0x48(%rsp),%rsi
  0x00007fcde1118679:   cmp    $0xf4240,%edi
  0x00007fcde111867f:   movabs $0x7fcdbca1a080,%rax         ;   {metadata(method data for {method} {0x00007fcdbc95ca80} 'realTest' '()F' in 'com/mpataki/Tensor4DBenchmark')}
  0x00007fcde1118689:   mov    $0x148,%edx
  0x00007fcde111868e:   jl     0x00007fcde1118695
  0x00007fcde1118690:   mov    $0x138,%edx
  0x00007fcde1118695:   mov    (%rax,%rdx,1),%rcx
  0x00007fcde1118699:   lea    0x1(%rcx),%rcx
  0x00007fcde111869d:   mov    %rcx,(%rax,%rdx,1)
  0x00007fcde11186a1:   jl     0x00007fcde1118538
  0x00007fcde11186a7:   vmovss 0x54(%rsp),%xmm0
  0x00007fcde11186ad:   add    $0x60,%rsp
  0x00007fcde11186b1:   pop    %rbp
  0x00007fcde11186b2:   cmp    0x28(%r15),%rsp              ;   {poll_return}
  0x00007fcde11186b6:   ja     0x00007fcde111879e
  0x00007fcde11186bc:   ret
  0x00007fcde11186bd:   mov    %eax,-0x14000(%rsp)
  0x00007fcde11186c4:   push   %rbp
  0x00007fcde11186c5:   sub    $0x60,%rsp
  0x00007fcde11186c9:   data16 xchg %ax,%ax
  0x00007fcde11186cc:   cmpl   $0x0,0x20(%r15)
  0x00007fcde11186d4:   je     0x00007fcde11186db
  0x00007fcde11186d6:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
  0x00007fcde11186db:   mov    $0x30,%edi
  0x00007fcde11186e0:   movslq %edi,%rdi
  0x00007fcde11186e3:   mov    (%rsi,%rdi,1),%rbx
  0x00007fcde11186e7:   mov    $0x28,%edi
  0x00007fcde11186ec:   movslq %edi,%rdi
  0x00007fcde11186ef:   vmovss (%rsi,%rdi,1),%xmm0
  0x00007fcde11186f4:   mov    $0x20,%edi
  0x00007fcde11186f9:   movslq %edi,%rdi
  0x00007fcde11186fc:   mov    (%rsi,%rdi,1),%eax
  0x00007fcde11186ff:   mov    %rsi,%rdi
  0x00007fcde1118702:   mov    %rbx,0x40(%rsp)
  0x00007fcde1118707:   mov    %eax,0x38(%rsp)
  0x00007fcde111870b:   vmovss %xmm0,0x50(%rsp)
  0x00007fcde1118711:   call   0x00007fcdf6052190           ;   {runtime_call SharedRuntime::OSR_migration_end(long*)}
  0x00007fcde1118716:   nopl   0x0(%rax,%rax,1)             ;   {post_call_nop}
  0x00007fcde111871e:   mov    0x38(%rsp),%eax
  0x00007fcde1118722:   mov    %rax,%rdi
  0x00007fcde1118725:   vmovss 0x50(%rsp),%xmm0
  0x00007fcde111872b:   mov    0x40(%rsp),%rbx
  0x00007fcde1118730:   mov    %rbx,%rsi
  0x00007fcde1118733:   vmovss %xmm0,0x54(%rsp)
  0x00007fcde1118739:   jmp    0x00007fcde1118679
  0x00007fcde111873e:   movabs $0x7fcdbc95ca80,%r10         ;   {metadata({method} {0x00007fcdbc95ca80} 'realTest' '()F' in 'com/mpataki/Tensor4DBenchmark')}
  0x00007fcde1118748:   mov    %r10,0x8(%rsp)
  0x00007fcde111874d:   movq   $0xffffffffffffffff,(%rsp)
  0x00007fcde1118755:   call   0x00007fcde864a3e0           ; ImmutableOopMap {rsi=Oop }
                                                            ;*synchronization entry
                                                            ; - com.mpataki.Tensor4DBenchmark::realTest@-1 (line 20)
                                                            ;   {runtime_call C1 Runtime counter_overflow_blob}
  0x00007fcde111875a:   jmp    0x00007fcde1118522
  0x00007fcde111875f:   call   0x00007fcde86451e0           ; ImmutableOopMap {rsi=Oop }
                                                            ;*irem {reexecute=0 rethrow=0 return_oop=0}
                                                            ; - com.mpataki.Tensor4DBenchmark::realTest@13 (line 22)
                                                            ;   {runtime_call C1 Runtime throw_div0_exception_blob}
  0x00007fcde1118764:   call   0x00007fcde86451e0           ; ImmutableOopMap {rsi=Oop }
                                                            ;*irem {reexecute=0 rethrow=0 return_oop=0}
                                                            ; - com.mpataki.Tensor4DBenchmark::realTest@18 (line 23)
                                                            ;   {runtime_call C1 Runtime throw_div0_exception_blob}
  0x00007fcde1118769:   call   0x00007fcde86451e0           ; ImmutableOopMap {rsi=Oop }
                                                            ;*irem {reexecute=0 rethrow=0 return_oop=0}
                                                            ; - com.mpataki.Tensor4DBenchmark::realTest@24 (line 24)
                                                            ;   {runtime_call C1 Runtime throw_div0_exception_blob}
  0x00007fcde111876e: # Warmup Iteration   1:   call   0x00007fcde86451e0           ; ImmutableOopMap {rsi=Oop }
                                                            ;*irem {reexecute=0 rethrow=0 return_oop=0}
                                                            ; - com.mpataki.Tensor4DBenchmark::realTest@30 (line 25)
                                                            ;   {runtime_call C1 Runtime throw_div0_exception_blob}
  0x00007fcde1118773:   call   0x00007fcde86454e0           ; ImmutableOopMap {rsi=Oop }
                                                            ;*getfield tensor {reexecute=1 rethrow=0 return_oop=0}
                                                            ; - (reexecute) com.mpataki.Tensor4DBenchmark::realTest@35 (line 26)
                                                            ;   {runtime_call C1 Runtime throw_null_pointer_exception_blob}
  0x00007fcde1118778:   call   0x00007fcde86454e0           ; ImmutableOopMap {rsi=Oop rax=Oop }
                                                            ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                            ; - com.mpataki.Tensor4DBenchmark::realTest@45 (line 26)
                                                            ;   {runtime_call C1 Runtime throw_null_pointer_exception_blob}
  0x00007fcde111877d:   movabs $0x7fcdbc95ca80,%r10         ;   {metadata({method} {0x00007fcdbc95ca80} 'realTest' '()F' in 'com/mpataki/Tensor4DBenchmark')}
  0x00007fcde1118787:   mov    %r10,0x8(%rsp)
  0x00007fcde111878c:   movq   $0x35,(%rsp)
  0x00007fcde1118794:   call   0x00007fcde864a3e0           ; ImmutableOopMap {[72]=Oop }
                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                            ; - (reexecute) com.mpataki.Tensor4DBenchmark::realTest@53 (line 21)
                                                            ;   {runtime_call C1 Runtime counter_overflow_blob}
  0x00007fcde1118799:   jmp    0x00007fcde1118657
  0x00007fcde111879e:   movabs $0x7fcde11186b2,%r10         ;   {internal_word}
  0x00007fcde11187a8:   mov    %r10,0x460(%r15)
  0x00007fcde11187af:   jmp    0x00007fcde858d8e0           ;   {runtime_call SafepointBlob}
  0x00007fcde11187b4:   mov    0x508(%r15),%rax
  0x00007fcde11187bb:   movq   $0x0,0x508(%r15)
  0x00007fcde11187c6:   movq   $0x0,0x510(%r15)
  0x00007fcde11187d1:   add    $0x60,%rsp
  0x00007fcde11187d5:   pop    %rbp
  0x00007fcde11187d6:   jmp    0x00007fcde86445e0           ;   {runtime_call C1 Runtime unwind_exception_blob}
  0x00007fcde11187db:   hlt
  0x00007fcde11187dc:   hlt
  0x00007fcde11187dd:   hlt
  0x00007fcde11187de:   hlt
  0x00007fcde11187df:   hlt
[Stub Code]
  0x00007fcde11187e0:   nopl   0x0(%rax,%rax,1)             ;   {no_reloc}
  0x00007fcde11187e5:   movabs $0x0,%rbx                    ;   {static_stub}
  0x00007fcde11187ef:   jmp    0x00007fcde11187ef           ;   {runtime_call nmethod}
[Exception Handler]
  0x00007fcde11187f4:   call   0x00007fcde86472e0           ;   {runtime_call C1 Runtime handle_exception_from_callee_blob}
  0x00007fcde11187f9:   movabs $0x7fcdf63c0632,%rdi         ;   {external_word}
  0x00007fcde1118803:   and    $0xfffffffffffffff0,%rsp
  0x00007fcde1118807:   call   0x00007fcdf5e6f4b0           ;   {runtime_call MacroAssembler::debug64(char*, long, long*)}
  0x00007fcde111880c:   hlt
[Deopt Handler Code]
  0x00007fcde111880d:   movabs $0x7fcde111880d,%r10         ;   {section_word}
  0x00007fcde1118817:   push   %r10
  0x00007fcde1118819:   jmp    0x00007fcde858ce80           ;   {runtime_call DeoptimizationBlob}
  0x00007fcde111881e:   hlt
  0x00007fcde111881f:   hlt
--------------------------------------------------------------------------------
[/Disassembly]

============================= C2-compiled nmethod ==============================
----------------------------------- Assembly -----------------------------------

Compiled method (c2) 541  914 %     4       com.mpataki.Tensor4DBenchmark::realTest @ 4 (58 bytes)
 total in heap  [0x00007fcde8b07e08,0x00007fcde8b08380] = 1400
 relocation     [0x00007fcde8b07ee0,0x00007fcde8b07f08] = 40
 main code      [0x00007fcde8b07f20,0x00007fcde8b08348] = 1064
 stub code      [0x00007fcde8b08348,0x00007fcde8b08360] = 24
 oops           [0x00007fcde8b08360,0x00007fcde8b08368] = 8
 metadata       [0x00007fcde8b08368,0x00007fcde8b08380] = 24
 immutable data [0x00007fcd9c24ea10,0x00007fcd9c24eb28] = 280
 dependencies   [0x00007fcd9c24ea10,0x00007fcd9c24ea20] = 16
 nul chk table  [0x00007fcd9c24ea20,0x00007fcd9c24ea38] = 24
 scopes pcs     [0x00007fcd9c24ea38,0x00007fcd9c24eaa8] = 112
 scopes data    [0x00007fcd9c24eaa8,0x00007fcd9c24eb28] = 128

[Disassembly]
--------------------------------------------------------------------------------
[Constant Pool (empty)]

--------------------------------------------------------------------------------

add    %al,(%rax)
[Verified Entry Point]
  # {method} {0x00007fcdbc95ca80} 'realTest' '()F' in 'com/mpataki/Tensor4DBenchmark'
  0x00007fcde8b07f20:   call   0x00007fcdf5f8db70           ;   {runtime_call os::breakpoint()}
  0x00007fcde8b07f25:   data16 data16 nopw 0x0(%rax,%rax,1)
  0x00007fcde8b07f30:   mov    %eax,-0x14000(%rsp)
  0x00007fcde8b07f37:   push   %rbp
  0x00007fcde8b07f38:   sub    $0x30,%rsp
  0x00007fcde8b07f3c:   cmpl   $0x1,0x20(%r15)
  0x00007fcde8b07f44:   jne    0x00007fcde8b0833d
  0x00007fcde8b07f4a:   mov    0x30(%rsi),%rbp
  0x00007fcde8b07f4e:   vmovss 0x28(%rsi),%xmm0
  0x00007fcde8b07f53:   vmovss %xmm0,(%rsp)
  0x00007fcde8b07f58:   mov    0x20(%rsi),%ebx
  0x00007fcde8b07f5b:   mov    %rsi,%rdi
  0x00007fcde8b07f5e:   movabs $0x7fcdf6052190,%r10
  0x00007fcde8b07f68:   call   *%r10
  0x00007fcde8b07f6b:   nopl   0x0(%rax,%rax,1)             ;   {post_call_nop}
  0x00007fcde8b07f73:   test   %rbp,%rbp
  0x00007fcde8b07f76:   je     0x00007fcde8b0823e
  0x00007fcde8b07f7c:   mov    0x8(%rbp),%r10d
  0x00007fcde8b07f80:   movabs $0xb40d2bf8,%r11             ;   {metadata('com/mpataki/Tensor4DBenchmark')}
  0x00007fcde8b07f8a:   mov    %r10d,%r8d
  0x00007fcde8b07f8d:   mov    0x38(%r8),%r10
  0x00007fcde8b07f91:   cmp    %r11,%r10
  0x00007fcde8b07f94:   jne    0x00007fcde8b08318
  0x00007fcde8b07f9a:   mov    0x1c(%rbp),%r11d
  0x00007fcde8b07f9e:   xchg   %ax,%ax
  0x00007fcde8b07fa0:   mov    0x1c(%r12,%r11,8),%r13d      ; implicit exception: dispatches to 0x00007fcde8b08240
  0x00007fcde8b07fa5:   mov    0xc(%r12,%r13,8),%r9d        ; implicit exception: dispatches to 0x00007fcde8b08240
  0x00007fcde8b07faa:   cmp    $0xf4240,%ebx
  0x00007fcde8b07fb0:   jge    0x00007fcde8b082ff
  0x00007fcde8b07fb6:   mov    0x18(%r12,%r11,8),%edx
  0x00007fcde8b07fbb:   mov    0x14(%r12,%r11,8),%edi
  0x00007fcde8b07fc0:   mov    %edi,%eax
  0x00007fcde8b07fc2:   imul   0x10(%r12,%r11,8),%eax
  0x00007fcde8b07fc8:   imul   %edx,%edi
  0x00007fcde8b07fcb:   imul   %edx,%eax
  0x00007fcde8b07fce:   mov    %ebx,%r14d
  0x00007fcde8b07fd1:   inc    %r14d
  0x00007fcde8b07fd4:   lea    (%r12,%r13,8),%rsi
  0x00007fcde8b07fd8:   vmovq  %rbp,%xmm0
  0x00007fcde8b07fdd:   movslq %ebx,%r11
  0x00007fcde8b07fe0:   mov    %ebx,%r10d
  0x00007fcde8b07fe3:   sar    $0x1f,%r10d
  0x00007fcde8b07fe7:   imul   $0xffffffff92492493,%r11,%r11
  0x00007fcde8b07fee:   mov    %r10d,%ecx
  0x00007fcde8b07ff1:   shr    $0x1c,%ecx
  0x00007fcde8b07ff4:   add    %ebx,%ecx
  0x00007fcde8b07ff6:   sar    $0x20,%r11
  0x00007fcde8b07ffa:   and    $0xfffffff0,%ecx
  0x00007fcde8b07ffd:   mov    %ebx,%r8d
  0x00007fcde8b08000:   sub    %ecx,%r8d
  0x00007fcde8b08003:   imul   %edi,%r8d
  0x00007fcde8b08007:   mov    %r11d,%r11d
  0x00007fcde8b0800a:   add    %ebx,%r11d
  0x00007fcde8b0800d:   mov    %r10d,%ecx
  0x00007fcde8b08010:   shr    $0x1a,%ecx
  0x00007fcde8b08013:   add    %ebx,%ecx
  0x00007fcde8b08015:   sar    $0x4,%r11d
  0x00007fcde8b08019:   sub    %r10d,%r11d
  0x00007fcde8b0801c:   and    $0xffffffc0,%ecx
  0x00007fcde8b0801f:   mov    %ebx,%ebp
  0x00007fcde8b08021:   sub    %ecx,%ebp
  0x00007fcde8b08023:   imul   %eax,%ebp
  0x00007fcde8b08026:   add    %r8d,%ebp
  0x00007fcde8b08029:   imul   $0x1c,%r11d,%r8d
  0x00007fcde8b0802d:   mov    %ebx,%r11d
  0x00007fcde8b08030:   sub    %r8d,%r11d
  0x00007fcde8b08033:   imul   %edx,%r11d
  0x00007fcde8b08037:   add    %r11d,%ebp
  0x00007fcde8b0803a:   shr    $0x1b,%r10d
  0x00007fcde8b0803e:   add    %ebx,%r10d
  0x00007fcde8b08041:   and    $0xffffffe0,%r10d
  0x00007fcde8b08045:   mov    %ebx,%r11d
  0x00007fcde8b08048:   sub    %r10d,%r11d
  0x00007fcde8b0804b:   add    %r11d,%ebp
  0x00007fcde8b0804e:   cmp    %r9d,%ebp
  0x00007fcde8b08051:   jae    0x00007fcde8b08234
  0x00007fcde8b08057:   vmovss (%rsp),%xmm2
  0x00007fcde8b0805c:   vaddss 0x10(%rsi,%rbp,4),%xmm2,%xmm3
  0x00007fcde8b08062:   inc    %ebx
  0x00007fcde8b08064:   cmp    %r14d,%ebx
  0x00007fcde8b08067:   jge    0x00007fcde8b08073
  0x00007fcde8b08069:   vmovss %xmm3,(%rsp)
  0x00007fcde8b0806e:   jmp    0x00007fcde8b07fdd
  0x00007fcde8b08073:   cmp    $0xf423f,%ebx
  0x00007fcde8b08079:   jge    0x00007fcde8b0825d
  0x00007fcde8b0807f:   mov    $0xf423f,%ecx                ;   {no_reloc}
  0x00007fcde8b08084:   sub    %ebx,%ecx
  0x00007fcde8b08086:   xor    %r11d,%r11d
  0x00007fcde8b08089:   cmp    $0xf423f,%ebx
  0x00007fcde8b0808f:   cmovg  %r11d,%ecx
  0x00007fcde8b08093:   cmp    $0x7d0,%ecx
  0x00007fcde8b08099:   mov    $0x7d0,%r11d
  0x00007fcde8b0809f:   cmova  %r11d,%ecx
  0x00007fcde8b080a3:   add    %ebx,%ecx
  0x00007fcde8b080a5:   vmovd  %r13d,%xmm1
  0x00007fcde8b080aa:   nopw   0x0(%rax,%rax,1)
  0x00007fcde8b080b0:   movslq %ebx,%r10
  0x00007fcde8b080b3:   mov    %ebx,%r13d
  0x00007fcde8b080b6:   sar    $0x1f,%r13d
  0x00007fcde8b080ba:   imul   $0xffffffff92492493,%r10,%r8
  0x00007fcde8b080c1:   mov    %r13d,%r10d
  0x00007fcde8b080c4:   shr    $0x1c,%r10d
  0x00007fcde8b080c8:   add    %ebx,%r10d
  0x00007fcde8b080cb:   sar    $0x20,%r8
  0x00007fcde8b080cf:   and    $0xfffffff0,%r10d
  0x00007fcde8b080d3:   mov    %ebx,%r11d
  0x00007fcde8b080d6:   sub    %r10d,%r11d
  0x00007fcde8b080d9:   imul   %edi,%r11d
  0x00007fcde8b080dd:   mov    %r8d,%r8d
  0x00007fcde8b080e0:   add    %ebx,%r8d
  0x00007fcde8b080e3:   mov    %r13d,%r10d
  0x00007fcde8b080e6:   shr    $0x1a,%r10d
  0x00007fcde8b080ea:   add    %ebx,%r10d
  0x00007fcde8b080ed:   sar    $0x4,%r8d
  0x00007fcde8b080f1:   sub    %r13d,%r8d
  0x00007fcde8b080f4:   and    $0xffffffc0,%r10d
  0x00007fcde8b080f8:   mov    %ebx,%ebp
  0x00007fcde8b080fa:   sub    %r10d,%ebp
  0x00007fcde8b080fd:   imul   %eax,%ebp
  0x00007fcde8b08100:   add    %r11d,%ebp
  0x00007fcde8b08103:   imul   $0x1c,%r8d,%r10d
  0x00007fcde8b08107:   mov    %ebx,%r8d
  0x00007fcde8b0810a:   sub    %r10d,%r8d
  0x00007fcde8b0810d:   imul   %edx,%r8d
  0x00007fcde8b08111:   add    %r8d,%ebp
  0x00007fcde8b08114:   shr    $0x1b,%r13d
  0x00007fcde8b08118:   add    %ebx,%r13d
  0x00007fcde8b0811b:   and    $0xffffffe0,%r13d
  0x00007fcde8b0811f:   mov    %ebx,%r11d
  0x00007fcde8b08122:   sub    %r13d,%r11d
  0x00007fcde8b08125:   add    %r11d,%ebp
  0x00007fcde8b08128:   cmp    %r9d,%ebp
  0x00007fcde8b0812b:   jae    0x00007fcde8b08205
  0x00007fcde8b08131:   vaddss 0x10(%rsi,%rbp,4),%xmm3,%xmm3
  0x00007fcde8b08137:   mov    %ebx,%r8d
  0x00007fcde8b0813a:   inc    %r8d
  0x00007fcde8b0813d:   movslq %r8d,%r10
  0x00007fcde8b08140:   mov    %r8d,%ebp
  0x00007fcde8b08143:   sar    $0x1f,%ebp
  0x00007fcde8b08146:   imul   $0xffffffff92492493,%r10,%r10
  0x00007fcde8b0814d:   mov    %ebp,%r11d
  0x00007fcde8b08150:   shr    $0x1c,%r11d
  0x00007fcde8b08154:   add    %ebx,%r11d
  0x00007fcde8b08157:   sar    $0x20,%r10
  0x00007fcde8b0815b:   inc    %r11d
  0x00007fcde8b0815e:   mov    %r10d,%r14d
  0x00007fcde8b08161:   add    %ebx,%r14d
  0x00007fcde8b08164:   and    $0xfffffff0,%r11d
  0x00007fcde8b08168:   mov    %ebx,%r10d
  0x00007fcde8b0816b:   sub    %r11d,%r10d
  0x00007fcde8b0816e:   inc    %r14d
  0x00007fcde8b08171:   inc    %r10d
  0x00007fcde8b08174:   imul   %edi,%r10d
  0x00007fcde8b08178:   sar    $0x4,%r14d
  0x00007fcde8b0817c:   sub    %ebp,%r14d                   ;   {no_reloc}
  0x00007fcde8b0817f:   mov    %ebp,%r13d
  0x00007fcde8b08182:   shr    $0x1a,%r13d
  0x00007fcde8b08186:   add    %ebx,%r13d
  0x00007fcde8b08189:   imul   $0x1c,%r14d,%r11d
  0x00007fcde8b0818d:   mov    %ebx,%r14d
  0x00007fcde8b08190:   sub    %r11d,%r14d
  0x00007fcde8b08193:   inc    %r13d
  0x00007fcde8b08196:   inc    %r14d
  0x00007fcde8b08199:   imul   %edx,%r14d
  0x00007fcde8b0819d:   and    $0xffffffc0,%r13d
  0x00007fcde8b081a1:   mov    %ebx,%r11d
  0x00007fcde8b081a4:   sub    %r13d,%r11d
  0x00007fcde8b081a7:   shr    $0x1b,%ebp
  0x00007fcde8b081aa:   add    %ebx,%ebp
  0x00007fcde8b081ac:   inc    %r11d
  0x00007fcde8b081af:   imul   %eax,%r11d
  0x00007fcde8b081b3:   add    %r10d,%r11d
  0x00007fcde8b081b6:   add    %r14d,%r11d
  0x00007fcde8b081b9:   inc    %ebp
  0x00007fcde8b081bb:   and    $0xffffffe0,%ebp
  0x00007fcde8b081be:   mov    %ebx,%r10d
  0x00007fcde8b081c1:   sub    %ebp,%r10d
  0x00007fcde8b081c4:   add    %r10d,%r11d
  0x00007fcde8b081c7:   mov    %r11d,%ebp
  0x00007fcde8b081ca:   inc    %ebp
  0x00007fcde8b081cc:   cmp    %r9d,%ebp
  0x00007fcde8b081cf:   jae    0x00007fcde8b08208
  0x00007fcde8b081d1:   movslq %r11d,%r10
  0x00007fcde8b081d4:   vaddss 0x14(%rsi,%r10,4),%xmm3,%xmm3
  0x00007fcde8b081db:   add    $0x2,%ebx
  0x00007fcde8b081de:   xchg   %ax,%ax
  0x00007fcde8b081e0:   cmp    %ecx,%ebx
  0x00007fcde8b081e2:   jl     0x00007fcde8b080b0
  0x00007fcde8b081e8:   mov    0x30(%r15),%r11              ; ImmutableOopMap {rsi=Oop xmm0=Oop xmm1=NarrowOop }
                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                            ; - (reexecute) com.mpataki.Tensor4DBenchmark::realTest@53 (line 21)
  0x00007fcde8b081ec:   test   %eax,(%r11)                  ;   {poll}
  0x00007fcde8b081ef:   cmp    $0xf423f,%ebx
  0x00007fcde8b081f5:   jge    0x00007fcde8b08258
  0x00007fcde8b081fb:   vmovd  %xmm1,%r13d
  0x00007fcde8b08200:   jmp    0x00007fcde8b0807f
  0x00007fcde8b08205:   mov    %ebx,%r8d
  0x00007fcde8b08208:   vmovd  %xmm1,%r13d
  0x00007fcde8b0820d:   vmovss %xmm3,(%rsp)
  0x00007fcde8b08212:   mov    $0xffffffe4,%esi
  0x00007fcde8b08217:   mov    %r8d,0x4(%rsp)
  0x00007fcde8b0821c:   vmovsd %xmm0,0x8(%rsp)
  0x00007fcde8b08222:   mov    %r13d,0x10(%rsp)
  0x00007fcde8b08227:   call   0x00007fcde864c1e0           ; ImmutableOopMap {[8]=Oop [16]=NarrowOop }
                                                            ;*faload {reexecute=0 rethrow=0 return_oop=0}
                                                            ; - com.mpataki.Tensor4D::get@44 (line 20)
                                                            ; - com.mpataki.Tensor4DBenchmark::realTest@45 (line 26)
                                                            ;   {runtime_call UncommonTrapBlob}
  0x00007fcde8b0822c:   nopl   0x1000424(%rax,%rax,1)       ;   {post_call_nop}
  0x00007fcde8b08234:   mov    %ebx,%r8d
  0x00007fcde8b08237:   vmovss (%rsp),%xmm3
  0x00007fcde8b0823c:   jmp    0x00007fcde8b0820d
  0x00007fcde8b0823e:   xor    %ebp,%ebp
  0x00007fcde8b08240:   mov    $0xffffff76,%esi
  0x00007fcde8b08245:   mov    %ebx,0x4(%rsp)
  0x00007fcde8b08249:   xchg   %ax,%ax
  0x00007fcde8b0824b:   call   0x00007fcde864c1e0           ; ImmutableOopMap {rbp=Oop }
                                                            ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                            ; - com.mpataki.Tensor4DBenchmark::realTest@4 (line 21)
                                                            ;   {runtime_call UncommonTrapBlob}
  0x00007fcde8b08250:   nopl   0x2000448(%rax,%rax,1)       ;   {post_call_nop}
  0x00007fcde8b08258:   vmovd  %xmm1,%r13d
  0x00007fcde8b0825d:   data16 xchg %ax,%ax
  0x00007fcde8b08260:   cmp    $0xf4240,%ebx
  0x00007fcde8b08266:   jge    0x00007fcde8b082f9
  0x00007fcde8b0826c:   movslq %ebx,%r10
  0x00007fcde8b0826f:   mov    %ebx,%ecx
  0x00007fcde8b08271:   sar    $0x1f,%ecx
  0x00007fcde8b08274:   imul   $0xffffffff92492493,%r10,%r8
  0x00007fcde8b0827b:   mov    %ecx,%r10d
  0x00007fcde8b0827e:   shr    $0x1c,%r10d
  0x00007fcde8b08282:   add    %ebx,%r10d
  0x00007fcde8b08285:   sar    $0x20,%r8
  0x00007fcde8b08289:   and    $0xfffffff0,%r10d
  0x00007fcde8b0828d:   mov    %ebx,%r11d
  0x00007fcde8b08290:   sub    %r10d,%r11d
  0x00007fcde8b08293:   imul   %edi,%r11d
  0x00007fcde8b08297:   mov    %r8d,%r8d
  0x00007fcde8b0829a:   add    %ebx,%r8d
  0x00007fcde8b0829d:   mov    %ecx,%r10d
  0x00007fcde8b082a0:   shr    $0x1a,%r10d
  0x00007fcde8b082a4:   add    %ebx,%r10d
  0x00007fcde8b082a7:   sar    $0x4,%r8d
  0x00007fcde8b082ab:   sub    %ecx,%r8d
  0x00007fcde8b082ae:   and    $0xffffffc0,%r10d
  0x00007fcde8b082b2:   mov    %ebx,%ebp
  0x00007fcde8b082b4:   sub    %r10d,%ebp
  0x00007fcde8b082b7:   imul   %eax,%ebp
  0x00007fcde8b082ba:   add    %r11d,%ebp
  0x00007fcde8b082bd:   imul   $0x1c,%r8d,%r10d
  0x00007fcde8b082c1:   mov    %ebx,%r8d
  0x00007fcde8b082c4:   sub    %r10d,%r8d
  0x00007fcde8b082c7:   imul   %edx,%r8d
  0x00007fcde8b082cb:   add    %r8d,%ebp
  0x00007fcde8b082ce:   shr    $0x1b,%ecx
  0x00007fcde8b082d1:   add    %ebx,%ecx
  0x00007fcde8b082d3:   and    $0xffffffe0,%ecx
  0x00007fcde8b082d6:   mov    %ebx,%r10d
  0x00007fcde8b082d9:   sub    %ecx,%r10d
  0x00007fcde8b082dc:   add    %r10d,%ebp
  0x00007fcde8b082df:   nop
  0x00007fcde8b082e0:   cmp    %r9d,%ebp
  0x00007fcde8b082e3:   jae    0x00007fcde8b08330
  0x00007fcde8b082e5:   vaddss 0x10(%rsi,%rbp,4),%xmm3,%xmm3
  0x00007fcde8b082eb:   inc    %ebx
  0x00007fcde8b082ed:   cmp    $0xf4240,%ebx
  0x00007fcde8b082f3:   jl     0x00007fcde8b0826c
  0x00007fcde8b082f9:   vmovd  %xmm3,%ebp
  0x00007fcde8b082fd:   jmp    0x00007fcde8b08302
  0x00007fcde8b082ff:   mov    (%rsp),%ebp
  0x00007fcde8b08302:   mov    $0xffffff4d,%esi
  0x00007fcde8b08307:   mov    %ebx,(%rsp)
  0x00007fcde8b0830a:   nop
  0x00007fcde8b0830b:   call   0x00007fcde864c1e0           ; ImmutableOopMap {}
                                                            ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                            ; - (reexecute) com.mpataki.Tensor4DBenchmark::realTest@7 (line 21)
                                                            ;   {runtime_call UncommonTrapBlob}
  0x00007fcde8b08310:   nopl   0x3000508(%rax,%rax,1)       ;   {post_call_nop}
  0x00007fcde8b08318:   mov    $0xffffff8d,%esi
  0x00007fcde8b0831d:   mov    %ebx,0x4(%rsp)
  0x00007fcde8b08321:   xchg   %ax,%ax
  0x00007fcde8b08323:   call   0x00007fcde864c1e0           ; ImmutableOopMap {rbp=Oop }
                                                            ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                            ; - com.mpataki.Tensor4DBenchmark::realTest@4 (line 21)
                                                            ;   {runtime_call UncommonTrapBlob}
  0x00007fcde8b08328:   nopl   0x4000520(%rax,%rax,1)       ;   {post_call_nop}
  0x00007fcde8b08330:   vmovss %xmm3,(%rsp)
  0x00007fcde8b08335:   mov    %ebx,%r8d
  0x00007fcde8b08338:   jmp    0x00007fcde8b08212
  0x00007fcde8b0833d:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
  0x00007fcde8b08342:   jmp    0x00007fcde8b07f4a
  0x00007fcde8b08347:   hlt
[Exception Handler]
  0x00007fcde8b08348:   jmp    0x00007fcde864c4e0           ;   {no_reloc}
[Deopt Handler Code]
  0x00007fcde8b0834d:   call   0x00007fcde8b08352
  0x00007fcde8b08352:   subq   $0x5,(%rsp)
  0x00007fcde8b08357:   jmp    0x00007fcde858ce80           ;   {runtime_call DeoptimizationBlob}
  0x00007fcde8b0835c:   hlt
  0x00007fcde8b0835d:   hlt
  0x00007fcde8b0835e:   hlt
  0x00007fcde8b0835f:   hlt
--------------------------------------------------------------------------------
[/Disassembly]

============================= C2-compiled nmethod ==============================
----------------------------------- Assembly -----------------------------------

Compiled method (c2) 564  915 %     4       com.mpataki.Tensor4DBenchmark::realTest @ 4 (58 bytes)
 total in heap  [0x00007fcde8b08388,0x00007fcde8b08918] = 1424
 relocation     [0x00007fcde8b08460,0x00007fcde8b08488] = 40
 main code      [0x00007fcde8b084a0,0x00007fcde8b088e0] = 1088
 stub code      [0x00007fcde8b088e0,0x00007fcde8b088f8] = 24
 oops           [0x00007fcde8b088f8,0x00007fcde8b08900] = 8
 metadata       [0x00007fcde8b08900,0x00007fcde8b08918] = 24
 immutable data [0x00007fcd9c24ec50,0x00007fcd9c24ed38] = 232
 dependencies   [0x00007fcd9c24ec50,0x00007fcd9c24ec60] = 16
 nul chk table  [0x00007fcd9c24ec60,0x00007fcd9c24ec78] = 24
 scopes pcs     [0x00007fcd9c24ec78,0x00007fcd9c24ecd8] = 96
 scopes data    [0x00007fcd9c24ecd8,0x00007fcd9c24ed38] = 96

[Disassembly]
--------------------------------------------------------------------------------
[Constant Pool (empty)]

--------------------------------------------------------------------------------

add    %al,(%rax)
[Verified Entry Point]
  # {method} {0x00007fcdbc95ca80} 'realTest' '()F' in 'com/mpataki/Tensor4DBenchmark'
  0x00007fcde8b084a0:   call   0x00007fcdf5f8db70           ;   {runtime_call os::breakpoint()}
  0x00007fcde8b084a5:   data16 data16 nopw 0x0(%rax,%rax,1)
  0x00007fcde8b084b0:   mov    %eax,-0x14000(%rsp)
  0x00007fcde8b084b7:   push   %rbp
  0x00007fcde8b084b8:   sub    $0x30,%rsp
  0x00007fcde8b084bc:   cmpl   $0x1,0x20(%r15)
  0x00007fcde8b084c4:   jne    0x00007fcde8b088d3
  0x00007fcde8b084ca:   mov    0x30(%rsi),%rbp
  0x00007fcde8b084ce:   vmovss 0x28(%rsi),%xmm0
  0x00007fcde8b084d3:   vmovss %xmm0,(%rsp)
  0x00007fcde8b084d8:   mov    0x20(%rsi),%ebx
  0x00007fcde8b084db:   mov    %rsi,%rdi
  0x00007fcde8b084de:   movabs $0x7fcdf6052190,%r10
  0x00007fcde8b084e8:   call   *%r10
  0x00007fcde8b084eb:   nopl   0x0(%rax,%rax,1)             ;   {post_call_nop}
  0x00007fcde8b084f3:   test   %rbp,%rbp
  0x00007fcde8b084f6:   je     0x00007fcde8b08880
  0x00007fcde8b084fc:   mov    0x8(%rbp),%r10d
  0x00007fcde8b08500:   movabs $0xb40d2bf8,%r11             ;   {metadata('com/mpataki/Tensor4DBenchmark')}
  0x00007fcde8b0850a:   mov    %r10d,%r8d
  0x00007fcde8b0850d:   mov    0x38(%r8),%r10
  0x00007fcde8b08511:   cmp    %r11,%r10
  0x00007fcde8b08514:   jne    0x00007fcde8b08898
  0x00007fcde8b0851a:   mov    0x1c(%rbp),%r11d
  0x00007fcde8b0851e:   xchg   %ax,%ax
  0x00007fcde8b08520:   mov    0x1c(%r12,%r11,8),%r13d      ; implicit exception: dispatches to 0x00007fcde8b08882
  0x00007fcde8b08525:   mov    0xc(%r12,%r13,8),%r9d        ; implicit exception: dispatches to 0x00007fcde8b08882
  0x00007fcde8b0852a:   cmp    $0xf4240,%ebx
  0x00007fcde8b08530:   jge    0x00007fcde8b087be
  0x00007fcde8b08536:   mov    0x18(%r12,%r11,8),%edx
  0x00007fcde8b0853b:   mov    0x14(%r12,%r11,8),%edi
  0x00007fcde8b08540:   mov    %edi,%eax
  0x00007fcde8b08542:   imul   0x10(%r12,%r11,8),%eax
  0x00007fcde8b08548:   imul   %edx,%edi
  0x00007fcde8b0854b:   imul   %edx,%eax
  0x00007fcde8b0854e:   mov    %ebx,%r14d
  0x00007fcde8b08551:   inc    %r14d
  0x00007fcde8b08554:   lea    (%r12,%r13,8),%rsi
  0x00007fcde8b08558:   vmovq  %rbp,%xmm0
  0x00007fcde8b0855d:   movslq %ebx,%r11
  0x00007fcde8b08560:   mov    %ebx,%r10d
  0x00007fcde8b08563:   sar    $0x1f,%r10d
  0x00007fcde8b08567:   imul   $0xffffffff92492493,%r11,%r11
  0x00007fcde8b0856e:   mov    %r10d,%ecx
  0x00007fcde8b08571:   shr    $0x1c,%ecx
  0x00007fcde8b08574:   add    %ebx,%ecx
  0x00007fcde8b08576:   sar    $0x20,%r11
  0x00007fcde8b0857a:   and    $0xfffffff0,%ecx
  0x00007fcde8b0857d:   mov    %ebx,%r8d
  0x00007fcde8b08580:   sub    %ecx,%r8d
  0x00007fcde8b08583:   imul   %edi,%r8d
  0x00007fcde8b08587:   mov    %r11d,%r11d
  0x00007fcde8b0858a:   add    %ebx,%r11d
  0x00007fcde8b0858d:   mov    %r10d,%ecx
  0x00007fcde8b08590:   shr    $0x1a,%ecx
  0x00007fcde8b08593:   add    %ebx,%ecx
  0x00007fcde8b08595:   sar    $0x4,%r11d
  0x00007fcde8b08599:   sub    %r10d,%r11d
  0x00007fcde8b0859c:   and    $0xffffffc0,%ecx
  0x00007fcde8b0859f:   mov    %ebx,%ebp
  0x00007fcde8b085a1:   sub    %ecx,%ebp
  0x00007fcde8b085a3:   imul   %eax,%ebp
  0x00007fcde8b085a6:   add    %r8d,%ebp
  0x00007fcde8b085a9:   imul   $0x1c,%r11d,%r8d
  0x00007fcde8b085ad:   mov    %ebx,%r11d
  0x00007fcde8b085b0:   sub    %r8d,%r11d
  0x00007fcde8b085b3:   imul   %edx,%r11d
  0x00007fcde8b085b7:   add    %r11d,%ebp
  0x00007fcde8b085ba:   shr    $0x1b,%r10d
  0x00007fcde8b085be:   add    %ebx,%r10d
  0x00007fcde8b085c1:   and    $0xffffffe0,%r10d
  0x00007fcde8b085c5:   mov    %ebx,%r11d
  0x00007fcde8b085c8:   sub    %r10d,%r11d
  0x00007fcde8b085cb:   add    %r11d,%ebp
  0x00007fcde8b085ce:   cmp    %r9d,%ebp
  0x00007fcde8b085d1:   jae    0x00007fcde8b087b4
  0x00007fcde8b085d7:   vmovss (%rsp),%xmm1
  0x00007fcde8b085dc:   vaddss 0x10(%rsi,%rbp,4),%xmm1,%xmm3
  0x00007fcde8b085e2:   inc    %ebx
  0x00007fcde8b085e4:   cmp    %r14d,%ebx
  0x00007fcde8b085e7:   jge    0x00007fcde8b085f3
  0x00007fcde8b085e9:   vmovss %xmm3,(%rsp)
  0x00007fcde8b085ee:   jmp    0x00007fcde8b0855d
  0x00007fcde8b085f3:   cmp    $0xf423f,%ebx
  0x00007fcde8b085f9:   jge    0x00007fcde8b087cd
  0x00007fcde8b085ff:   mov    $0xf423f,%ecx                ;   {no_reloc}
  0x00007fcde8b08604:   sub    %ebx,%ecx
  0x00007fcde8b08606:   xor    %r11d,%r11d
  0x00007fcde8b08609:   cmp    $0xf423f,%ebx
  0x00007fcde8b0860f:   cmovg  %r11d,%ecx
  0x00007fcde8b08613:   cmp    $0x7d0,%ecx
  0x00007fcde8b08619:   mov    $0x7d0,%r11d
  0x00007fcde8b0861f:   cmova  %r11d,%ecx
  0x00007fcde8b08623:   add    %ebx,%ecx
  0x00007fcde8b08625:   vmovd  %r13d,%xmm1
  0x00007fcde8b0862a:   nopw   0x0(%rax,%rax,1)
  0x00007fcde8b08630:   movslq %ebx,%r10
  0x00007fcde8b08633:   mov    %ebx,%r13d
  0x00007fcde8b08636:   sar    $0x1f,%r13d
  0x00007fcde8b0863a:   imul   $0xffffffff92492493,%r10,%r8
  0x00007fcde8b08641:   mov    %r13d,%r10d
  0x00007fcde8b08644:   shr    $0x1c,%r10d
  0x00007fcde8b08648:   add    %ebx,%r10d
  0x00007fcde8b0864b:   sar    $0x20,%r8
  0x00007fcde8b0864f:   and    $0xfffffff0,%r10d
  0x00007fcde8b08653:   mov    %ebx,%r11d
  0x00007fcde8b08656:   sub    %r10d,%r11d
  0x00007fcde8b08659:   imul   %edi,%r11d
  0x00007fcde8b0865d:   mov    %r8d,%r8d
  0x00007fcde8b08660:   add    %ebx,%r8d
  0x00007fcde8b08663:   mov    %r13d,%r10d
  0x00007fcde8b08666:   shr    $0x1a,%r10d
  0x00007fcde8b0866a:   add    %ebx,%r10d
  0x00007fcde8b0866d:   sar    $0x4,%r8d
  0x00007fcde8b08671:   sub    %r13d,%r8d
  0x00007fcde8b08674:   and    $0xffffffc0,%r10d
  0x00007fcde8b08678:   mov    %ebx,%ebp
  0x00007fcde8b0867a:   sub    %r10d,%ebp
  0x00007fcde8b0867d:   imul   %eax,%ebp
  0x00007fcde8b08680:   add    %r11d,%ebp
  0x00007fcde8b08683:   imul   $0x1c,%r8d,%r10d
  0x00007fcde8b08687:   mov    %ebx,%r8d
  0x00007fcde8b0868a:   sub    %r10d,%r8d
  0x00007fcde8b0868d:   imul   %edx,%r8d
  0x00007fcde8b08691:   add    %r8d,%ebp
  0x00007fcde8b08694:   shr    $0x1b,%r13d
  0x00007fcde8b08698:   add    %ebx,%r13d
  0x00007fcde8b0869b:   and    $0xffffffe0,%r13d
  0x00007fcde8b0869f:   mov    %ebx,%r11d
  0x00007fcde8b086a2:   sub    %r13d,%r11d
  0x00007fcde8b086a5:   add    %r11d,%ebp
  0x00007fcde8b086a8:   cmp    %r9d,%ebp
  0x00007fcde8b086ab:   jae    0x00007fcde8b08785
  0x00007fcde8b086b1:   vaddss 0x10(%rsi,%rbp,4),%xmm3,%xmm3
  0x00007fcde8b086b7:   mov    %ebx,%r8d
  0x00007fcde8b086ba:   inc    %r8d
  0x00007fcde8b086bd:   movslq %r8d,%r10
  0x00007fcde8b086c0:   mov    %r8d,%ebp
  0x00007fcde8b086c3:   sar    $0x1f,%ebp
  0x00007fcde8b086c6:   imul   $0xffffffff92492493,%r10,%r10
  0x00007fcde8b086cd:   mov    %ebp,%r11d
  0x00007fcde8b086d0:   shr    $0x1c,%r11d
  0x00007fcde8b086d4:   add    %ebx,%r11d
  0x00007fcde8b086d7:   sar    $0x20,%r10
  0x00007fcde8b086db:   inc    %r11d
  0x00007fcde8b086de:   mov    %r10d,%r14d
  0x00007fcde8b086e1:   add    %ebx,%r14d
  0x00007fcde8b086e4:   and    $0xfffffff0,%r11d
  0x00007fcde8b086e8:   mov    %ebx,%r10d
  0x00007fcde8b086eb:   sub    %r11d,%r10d
  0x00007fcde8b086ee:   inc    %r14d
  0x00007fcde8b086f1:   inc    %r10d
  0x00007fcde8b086f4:   imul   %edi,%r10d
  0x00007fcde8b086f8:   sar    $0x4,%r14d
  0x00007fcde8b086fc:   sub    %ebp,%r14d                   ;   {no_reloc}
  0x00007fcde8b086ff:   mov    %ebp,%r13d
  0x00007fcde8b08702:   shr    $0x1a,%r13d
  0x00007fcde8b08706:   add    %ebx,%r13d
  0x00007fcde8b08709:   imul   $0x1c,%r14d,%r11d
  0x00007fcde8b0870d:   mov    %ebx,%r14d
  0x00007fcde8b08710:   sub    %r11d,%r14d
  0x00007fcde8b08713:   inc    %r13d
  0x00007fcde8b08716:   inc    %r14d
  0x00007fcde8b08719:   imul   %edx,%r14d
  0x00007fcde8b0871d:   and    $0xffffffc0,%r13d
  0x00007fcde8b08721:   mov    %ebx,%r11d
  0x00007fcde8b08724:   sub    %r13d,%r11d
  0x00007fcde8b08727:   shr    $0x1b,%ebp
  0x00007fcde8b0872a:   add    %ebx,%ebp
  0x00007fcde8b0872c:   inc    %r11d
  0x00007fcde8b0872f:   imul   %eax,%r11d
  0x00007fcde8b08733:   add    %r10d,%r11d
  0x00007fcde8b08736:   add    %r14d,%r11d
  0x00007fcde8b08739:   inc    %ebp
  0x00007fcde8b0873b:   and    $0xffffffe0,%ebp
  0x00007fcde8b0873e:   mov    %ebx,%r10d
  0x00007fcde8b08741:   sub    %ebp,%r10d
  0x00007fcde8b08744:   add    %r10d,%r11d
  0x00007fcde8b08747:   mov    %r11d,%ebp
  0x00007fcde8b0874a:   inc    %ebp
  0x00007fcde8b0874c:   cmp    %r9d,%ebp
  0x00007fcde8b0874f:   jae    0x00007fcde8b08788
  0x00007fcde8b08751:   movslq %r11d,%r10
  0x00007fcde8b08754:   vaddss 0x14(%rsi,%r10,4),%xmm3,%xmm3
  0x00007fcde8b0875b:   add    $0x2,%ebx
  0x00007fcde8b0875e:   xchg   %ax,%ax
  0x00007fcde8b08760:   cmp    %ecx,%ebx
  0x00007fcde8b08762:   jl     0x00007fcde8b08630
  0x00007fcde8b08768:   mov    0x30(%r15),%r11              ; ImmutableOopMap {rsi=Oop xmm0=Oop xmm1=NarrowOop }
                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                            ; - (reexecute) com.mpataki.Tensor4DBenchmark::realTest@53 (line 21)
  0x00007fcde8b0876c:   test   %eax,(%r11)                  ;   {poll}
  0x00007fcde8b0876f:   cmp    $0xf423f,%ebx
  0x00007fcde8b08775:   jge    0x00007fcde8b087c8
  0x00007fcde8b0877b:   vmovd  %xmm1,%r13d
  0x00007fcde8b08780:   jmp    0x00007fcde8b085ff
  0x00007fcde8b08785:   mov    %ebx,%r8d
  0x00007fcde8b08788:   vmovd  %xmm1,%r13d
  0x00007fcde8b0878d:   vmovss %xmm3,(%rsp)
  0x00007fcde8b08792:   mov    $0xffffffe4,%esi
  0x00007fcde8b08797:   mov    %r8d,0x4(%rsp)
  0x00007fcde8b0879c:   vmovsd %xmm0,0x8(%rsp)
  0x00007fcde8b087a2:   mov    %r13d,0x10(%rsp)
  0x00007fcde8b087a7:   call   0x00007fcde864c1e0           ; ImmutableOopMap {[8]=Oop [16]=NarrowOop }
                                                            ;*faload {reexecute=0 rethrow=0 return_oop=0}
                                                            ; - com.mpataki.Tensor4D::get@44 (line 20)
                                                            ; - com.mpataki.Tensor4DBenchmark::realTest@45 (line 26)
                                                            ;   {runtime_call UncommonTrapBlob}
  0x00007fcde8b087ac:   nopl   0x1000424(%rax,%rax,1)       ;   {post_call_nop}
  0x00007fcde8b087b4:   mov    %ebx,%r8d
  0x00007fcde8b087b7:   vmovss (%rsp),%xmm3
  0x00007fcde8b087bc:   jmp    0x00007fcde8b0878d
  0x00007fcde8b087be:   vmovss (%rsp),%xmm3
  0x00007fcde8b087c3:   jmp    0x00007fcde8b0886c
  0x00007fcde8b087c8:   vmovd  %xmm1,%r13d
  0x00007fcde8b087cd:   cmp    $0xf4240,%ebx
  0x00007fcde8b087d3:   jge    0x00007fcde8b0886c
  0x00007fcde8b087d9:   data16 xchg %ax,%ax
  0x00007fcde8b087dc:   movslq %ebx,%r10
  0x00007fcde8b087df:   mov    %ebx,%ecx
  0x00007fcde8b087e1:   sar    $0x1f,%ecx
  0x00007fcde8b087e4:   imul   $0xffffffff92492493,%r10,%r8
  0x00007fcde8b087eb:   mov    %ecx,%r10d
  0x00007fcde8b087ee:   shr    $0x1c,%r10d
  0x00007fcde8b087f2:   add    %ebx,%r10d
  0x00007fcde8b087f5:   sar    $0x20,%r8
  0x00007fcde8b087f9:   and    $0xfffffff0,%r10d
  0x00007fcde8b087fd:   mov    %ebx,%r11d
  0x00007fcde8b08800:   sub    %r10d,%r11d
  0x00007fcde8b08803:   imul   %edi,%r11d
  0x00007fcde8b08807:   mov    %r8d,%r8d
  0x00007fcde8b0880a:   add    %ebx,%r8d
  0x00007fcde8b0880d:   mov    %ecx,%r10d
  0x00007fcde8b08810:   shr    $0x1a,%r10d
  0x00007fcde8b08814:   add    %ebx,%r10d
  0x00007fcde8b08817:   sar    $0x4,%r8d
  0x00007fcde8b0881b:   sub    %ecx,%r8d
  0x00007fcde8b0881e:   and    $0xffffffc0,%r10d
  0x00007fcde8b08822:   mov    %ebx,%ebp
  0x00007fcde8b08824:   sub    %r10d,%ebp
  0x00007fcde8b08827:   imul   %eax,%ebp
  0x00007fcde8b0882a:   add    %r11d,%ebp
  0x00007fcde8b0882d:   imul   $0x1c,%r8d,%r10d
  0x00007fcde8b08831:   mov    %ebx,%r8d
  0x00007fcde8b08834:   sub    %r10d,%r8d
  0x00007fcde8b08837:   imul   %edx,%r8d
  0x00007fcde8b0883b:   add    %r8d,%ebp
  0x00007fcde8b0883e:   shr    $0x1b,%ecx
  0x00007fcde8b08841:   add    %ebx,%ecx
  0x00007fcde8b08843:   and    $0xffffffe0,%ecx
  0x00007fcde8b08846:   mov    %ebx,%r10d
  0x00007fcde8b08849:   sub    %ecx,%r10d
  0x00007fcde8b0884c:   add    %r10d,%ebp
  0x00007fcde8b0884f:   cmp    %r9d,%ebp
  0x00007fcde8b08852:   jae    0x00007fcde8b088b0
  0x00007fcde8b08854:   vaddss 0x10(%rsi,%rbp,4),%xmm3,%xmm3
  0x00007fcde8b0885a:   inc    %ebx
  0x00007fcde8b0885c:   nopl   0x0(%rax)
  0x00007fcde8b08860:   cmp    $0xf4240,%ebx
  0x00007fcde8b08866:   jl     0x00007fcde8b087dc
  0x00007fcde8b0886c:   vmovaps %xmm3,%xmm0
  0x00007fcde8b08870:   add    $0x30,%rsp
  0x00007fcde8b08874:   pop    %rbp
  0x00007fcde8b08875:   cmp    0x28(%r15),%rsp              ;   {poll_return}
  0x00007fcde8b08879:   ja     0x00007fcde8b088bd
  0x00007fcde8b0887f:   ret
  0x00007fcde8b08880:   xor    %ebp,%ebp
  0x00007fcde8b08882:   mov    $0xffffffbe,%esi
  0x00007fcde8b08887:   mov    %ebx,0x4(%rsp)
  0x00007fcde8b0888b:   call   0x00007fcde864c1e0           ; ImmutableOopMap {rbp=Oop }
                                                            ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                            ; - com.mpataki.Tensor4DBenchmark::realTest@4 (line 21)
                                                            ;   {runtime_call UncommonTrapBlob}
  0x00007fcde8b08890:   nopl   0x2000508(%rax,%rax,1)       ;   {post_call_nop}
  0x00007fcde8b08898:   mov    $0xffffff8d,%esi
  0x00007fcde8b0889d:   mov    %ebx,0x4(%rsp)
  0x00007fcde8b088a1:   xchg   %ax,%ax
  0x00007fcde8b088a3:   call   0x00007fcde864c1e0           ; ImmutableOopMap {rbp=Oop }
                                                            ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                            ; - com.mpataki.Tensor4DBenchmark::realTest@4 (line 21)
                                                            ;   {runtime_call UncommonTrapBlob}
  0x00007fcde8b088a8:   nopl   0x3000520(%rax,%rax,1)       ;   {post_call_nop}
  0x00007fcde8b088b0:   vmovss %xmm3,(%rsp)
  0x00007fcde8b088b5:   mov    %ebx,%r8d
  0x00007fcde8b088b8:   jmp    0x00007fcde8b08792
  0x00007fcde8b088bd:   movabs $0x7fcde8b08875,%r10         ;   {internal_word}
  0x00007fcde8b088c7:   mov    %r10,0x460(%r15)
  0x00007fcde8b088ce:   jmp    0x00007fcde858d8e0           ;   {runtime_call SafepointBlob}
  0x00007fcde8b088d3:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
  0x00007fcde8b088d8:   jmp    0x00007fcde8b084ca
  0x00007fcde8b088dd:   hlt
  0x00007fcde8b088de:   hlt
  0x00007fcde8b088df:   hlt
[Exception Handler]
  0x00007fcde8b088e0:   jmp    0x00007fcde864c4e0           ;   {no_reloc}
[Deopt Handler Code]
  0x00007fcde8b088e5:   call   0x00007fcde8b088ea
  0x00007fcde8b088ea:   subq   $0x5,(%rsp)
  0x00007fcde8b088ef:   jmp    0x00007fcde858ce80           ;   {runtime_call DeoptimizationBlob}
  0x00007fcde8b088f4:   hlt
  0x00007fcde8b088f5:   hlt
  0x00007fcde8b088f6:   hlt
  0x00007fcde8b088f7:   hlt
--------------------------------------------------------------------------------
[/Disassembly]

============================= C2-compiled nmethod ==============================
----------------------------------- Assembly -----------------------------------

Compiled method (c2) 582  916       4       com.mpataki.Tensor4DBenchmark::realTest (58 bytes)
 total in heap  [0x00007fcde8b08988,0x00007fcde8b08d40] = 952
 relocation     [0x00007fcde8b08a60,0x00007fcde8b08a80] = 32
 main code      [0x00007fcde8b08a80,0x00007fcde8b08d08] = 648
 stub code      [0x00007fcde8b08d08,0x00007fcde8b08d20] = 24
 oops           [0x00007fcde8b08d20,0x00007fcde8b08d28] = 8
 metadata       [0x00007fcde8b08d28,0x00007fcde8b08d40] = 24
 immutable data [0x00007fcd9c24ede0,0x00007fcd9c24eec0] = 224
 dependencies   [0x00007fcd9c24ede0,0x00007fcd9c24edf0] = 16
 nul chk table  [0x00007fcd9c24edf0,0x00007fcd9c24ee08] = 24
 scopes pcs     [0x00007fcd9c24ee08,0x00007fcd9c24ee58] = 80
 scopes data    [0x00007fcd9c24ee58,0x00007fcd9c24eec0] = 104

[Disassembly]
--------------------------------------------------------------------------------
[Constant Pool (empty)]

--------------------------------------------------------------------------------

add    %al,(%rax)
[Instructions begin]
  0x00007fcde8b08a80:   xchg   %ax,%ax
[Entry Point]
  # {method} {0x00007fcdbc95ca80} 'realTest' '()F' in 'com/mpataki/Tensor4DBenchmark'
  #           [sp+0x40]  (sp of caller)
  0x00007fcde8b08a82:   mov    0x8(%rsi),%r10d
  0x00007fcde8b08a86:   cmp    0x8(%rax),%r10d
  0x00007fcde8b08a8a:   jne    0x00007fcde8586060           ;   {runtime_call Shared Runtime ic_miss_blob}
[Verified Entry Point]
  0x00007fcde8b08a90:   mov    %eax,-0x14000(%rsp)
  0x00007fcde8b08a97:   push   %rbp
  0x00007fcde8b08a98:   sub    $0x30,%rsp
  0x00007fcde8b08a9c:   cmpl   $0x0,0x20(%r15)
  0x00007fcde8b08aa4:   jne    0x00007fcde8b08cfa
  0x00007fcde8b08aaa:   mov    %rsi,%rdx
  0x00007fcde8b08aad:   mov    0x1c(%rsi),%ecx
  0x00007fcde8b08ab0:   mov    0x1c(%r12,%rcx,8),%edi       ; implicit exception: dispatches to 0x00007fcde8b08ccd
  0x00007fcde8b08ab5:   mov    0xc(%r12,%rdi,8),%r10d       ; implicit exception: dispatches to 0x00007fcde8b08ccd
  0x00007fcde8b08aba:   vxorps %xmm0,%xmm0,%xmm0
  0x00007fcde8b08abe:   xchg   %ax,%ax
  0x00007fcde8b08ac0:   test   %r10d,%r10d
  0x00007fcde8b08ac3:   jbe    0x00007fcde8b08c40
  0x00007fcde8b08ac9:   vaddss 0x10(%r12,%rdi,8),%xmm0,%xmm0
  0x00007fcde8b08ad0:   mov    0x18(%r12,%rcx,8),%r11d
  0x00007fcde8b08ad5:   mov    0x14(%r12,%rcx,8),%r9d
  0x00007fcde8b08ada:   mov    %r9d,%r8d
  0x00007fcde8b08add:   imul   0x10(%r12,%rcx,8),%r8d
  0x00007fcde8b08ae3:   imul   %r11d,%r9d
  0x00007fcde8b08ae7:   imul   %r11d,%r8d
  0x00007fcde8b08aeb:   lea    (%r12,%rdi,8),%rbp
  0x00007fcde8b08aef:   mov    $0x1,%ebx
  0x00007fcde8b08af4:   mov    $0xf423f,%ecx
  0x00007fcde8b08af9:   sub    %ebx,%ecx
  0x00007fcde8b08afb:   cmp    $0x7d0,%ecx
  0x00007fcde8b08b01:   mov    $0x7d0,%eax
  0x00007fcde8b08b06:   cmova  %eax,%ecx
  0x00007fcde8b08b09:   add    %ebx,%ecx
  0x00007fcde8b08b0b:   vmovq  %rdx,%xmm1
  0x00007fcde8b08b10:   vmovd  %edi,%xmm3
  0x00007fcde8b08b14:   mov    %ebx,%edx
  0x00007fcde8b08b16:   and    $0xffffffe0,%edx
  0x00007fcde8b08b19:   mov    %ebx,%esi
  0x00007fcde8b08b1b:   sub    %edx,%esi
  0x00007fcde8b08b1d:   mov    %ebx,%edx
  0x00007fcde8b08b1f:   and    $0xffffffc0,%edx
  0x00007fcde8b08b22:   mov    %ebx,%eax
  0x00007fcde8b08b24:   sub    %edx,%eax
  0x00007fcde8b08b26:   imul   %r8d,%eax
  0x00007fcde8b08b2a:   mov    %ebx,%edi
  0x00007fcde8b08b2c:   and    $0xfffffff0,%edi
  0x00007fcde8b08b2f:   mov    %ebx,%edx
  0x00007fcde8b08b31:   sub    %edi,%edx
  0x00007fcde8b08b33:   imul   %r9d,%edx
  0x00007fcde8b08b37:   add    %edx,%eax
  0x00007fcde8b08b39:   movslq %ebx,%rdi
  0x00007fcde8b08b3c:   imul   $0xffffffff92492493,%rdi,%rdi
  0x00007fcde8b08b43:   mov    %rdi,%rdx
  0x00007fcde8b08b46:   sar    $0x20,%rdx
  0x00007fcde8b08b4a:   mov    %edx,%edx
  0x00007fcde8b08b4c:   add    %ebx,%edx
  0x00007fcde8b08b4e:   sar    $0x4,%edx
  0x00007fcde8b08b51:   imul   $0x1c,%edx,%edx
  0x00007fcde8b08b54:   mov    %ebx,%r13d
  0x00007fcde8b08b57:   sub    %edx,%r13d
  0x00007fcde8b08b5a:   imul   %r11d,%r13d
  0x00007fcde8b08b5e:   add    %r13d,%eax
  0x00007fcde8b08b61:   add    %esi,%eax
  0x00007fcde8b08b63:   cmp    %r10d,%eax
  0x00007fcde8b08b66:   jae    0x00007fcde8b08c0a
  0x00007fcde8b08b6c:   vaddss 0x10(%rbp,%rax,4),%xmm0,%xmm0
  0x00007fcde8b08b72:   add    $0xffffffff92492493,%rdi
  0x00007fcde8b08b79:   sar    $0x20,%rdi
  0x00007fcde8b08b7d:   mov    %edi,%eax
  0x00007fcde8b08b7f:   mov    %ebx,%r14d
  0x00007fcde8b08b82:   inc    %r14d
  0x00007fcde8b08b85:   add    %r14d,%eax
  0x00007fcde8b08b88:   mov    %r14d,%edi                   ;   {no_reloc}
  0x00007fcde8b08b8b:   and    $0xffffffe0,%edi
  0x00007fcde8b08b8e:   mov    %ebx,%edx
  0x00007fcde8b08b90:   sub    %edi,%edx
  0x00007fcde8b08b92:   sar    $0x4,%eax
  0x00007fcde8b08b95:   mov    %r14d,%esi
  0x00007fcde8b08b98:   and    $0xfffffff0,%esi
  0x00007fcde8b08b9b:   mov    %ebx,%edi
  0x00007fcde8b08b9d:   sub    %esi,%edi
  0x00007fcde8b08b9f:   imul   $0x1c,%eax,%r13d
  0x00007fcde8b08ba3:   mov    %ebx,%eax
  0x00007fcde8b08ba5:   sub    %r13d,%eax
  0x00007fcde8b08ba8:   inc    %edi
  0x00007fcde8b08baa:   imul   %r9d,%edi
  0x00007fcde8b08bae:   inc    %eax
  0x00007fcde8b08bb0:   imul   %r11d,%eax
  0x00007fcde8b08bb4:   mov    %r14d,%esi
  0x00007fcde8b08bb7:   and    $0xffffffc0,%esi
  0x00007fcde8b08bba:   mov    %ebx,%r13d
  0x00007fcde8b08bbd:   sub    %esi,%r13d
  0x00007fcde8b08bc0:   inc    %r13d
  0x00007fcde8b08bc3:   imul   %r8d,%r13d
  0x00007fcde8b08bc7:   add    %edi,%r13d
  0x00007fcde8b08bca:   add    %eax,%r13d
  0x00007fcde8b08bcd:   add    %edx,%r13d
  0x00007fcde8b08bd0:   mov    %r13d,%eax
  0x00007fcde8b08bd3:   inc    %eax
  0x00007fcde8b08bd5:   cmp    %r10d,%eax
  0x00007fcde8b08bd8:   jae    0x00007fcde8b08c0d
  0x00007fcde8b08bda:   movslq %r13d,%rdi
  0x00007fcde8b08bdd:   vaddss 0x14(%rbp,%rdi,4),%xmm0,%xmm0
  0x00007fcde8b08be3:   add    $0x2,%ebx
  0x00007fcde8b08be6:   cmp    %ecx,%ebx
  0x00007fcde8b08be8:   jl     0x00007fcde8b08b14
  0x00007fcde8b08bee:   mov    0x30(%r15),%rcx              ; ImmutableOopMap {rbp=Oop xmm1=Oop xmm3=NarrowOop }
                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                            ; - (reexecute) com.mpataki.Tensor4DBenchmark::realTest@53 (line 21)
  0x00007fcde8b08bf2:   test   %eax,(%rcx)                  ;   {poll}
  0x00007fcde8b08bf4:   cmp    $0xf423f,%ebx
  0x00007fcde8b08bfa:   jge    0x00007fcde8b08c47
  0x00007fcde8b08bfc:   vmovq  %xmm1,%rdx
  0x00007fcde8b08c01:   vmovd  %xmm3,%edi
  0x00007fcde8b08c05:   jmp    0x00007fcde8b08af4
  0x00007fcde8b08c0a:   mov    %ebx,%r14d
  0x00007fcde8b08c0d:   vmovq  %xmm1,%rdx
  0x00007fcde8b08c12:   vmovd  %xmm3,%edi
  0x00007fcde8b08c16:   vmovd  %xmm0,%ebp
  0x00007fcde8b08c1a:   mov    $0xffffffe4,%esi
  0x00007fcde8b08c1f:   mov    %r14d,(%rsp)
  0x00007fcde8b08c23:   mov    %eax,0x4(%rsp)
  0x00007fcde8b08c27:   mov    %rdx,0x8(%rsp)
  0x00007fcde8b08c2c:   mov    %edi,0x10(%rsp)
  0x00007fcde8b08c30:   data16 xchg %ax,%ax
  0x00007fcde8b08c33:   call   0x00007fcde864c1e0           ; ImmutableOopMap {[8]=Oop [16]=NarrowOop }
                                                            ;*faload {reexecute=0 rethrow=0 return_oop=0}
                                                            ; - com.mpataki.Tensor4D::get@44 (line 20)
                                                            ; - com.mpataki.Tensor4DBenchmark::realTest@45 (line 26)
                                                            ;   {runtime_call UncommonTrapBlob}
  0x00007fcde8b08c38:   nopl   0x10002b0(%rax,%rax,1)       ;   {post_call_nop}
  0x00007fcde8b08c40:   xor    %r14d,%r14d
  0x00007fcde8b08c43:   xor    %eax,%eax
  0x00007fcde8b08c45:   jmp    0x00007fcde8b08c16
  0x00007fcde8b08c47:   mov    %ebx,%edx
  0x00007fcde8b08c49:   and    $0xffffffe0,%edx
  0x00007fcde8b08c4c:   mov    %ebx,%edi
  0x00007fcde8b08c4e:   sub    %edx,%edi
  0x00007fcde8b08c50:   mov    %ebx,%ecx
  0x00007fcde8b08c52:   and    $0xffffffc0,%ecx
  0x00007fcde8b08c55:   mov    %ebx,%eax
  0x00007fcde8b08c57:   sub    %ecx,%eax
  0x00007fcde8b08c59:   imul   %r8d,%eax
  0x00007fcde8b08c5d:   mov    %ebx,%ecx
  0x00007fcde8b08c5f:   and    $0xfffffff0,%ecx
  0x00007fcde8b08c62:   mov    %ebx,%edx
  0x00007fcde8b08c64:   sub    %ecx,%edx
  0x00007fcde8b08c66:   imul   %r9d,%edx
  0x00007fcde8b08c6a:   add    %edx,%eax
  0x00007fcde8b08c6c:   movslq %ebx,%rcx
  0x00007fcde8b08c6f:   imul   $0xffffffff92492493,%rcx,%rcx
  0x00007fcde8b08c76:   sar    $0x20,%rcx
  0x00007fcde8b08c7a:   mov    %ecx,%ecx
  0x00007fcde8b08c7c:   add    %ebx,%ecx
  0x00007fcde8b08c7e:   sar    $0x4,%ecx
  0x00007fcde8b08c81:   imul   $0x1c,%ecx,%edx
  0x00007fcde8b08c84:   mov    %ebx,%ecx
  0x00007fcde8b08c86:   sub    %edx,%ecx
  0x00007fcde8b08c88:   imul   %r11d,%ecx
  0x00007fcde8b08c8c:   add    %ecx,%eax
  0x00007fcde8b08c8e:   add    %edi,%eax
  0x00007fcde8b08c90:   cmp    %r10d,%eax
  0x00007fcde8b08c93:   jae    0x00007fcde8b08cb8
  0x00007fcde8b08c95:   vaddss 0x10(%rbp,%rax,4),%xmm0,%xmm0
  0x00007fcde8b08c9b:   inc    %ebx
  0x00007fcde8b08c9d:   data16 xchg %ax,%ax
  0x00007fcde8b08ca0:   cmp    $0xf4240,%ebx
  0x00007fcde8b08ca6:   jl     0x00007fcde8b08c47
  0x00007fcde8b08ca8:   add    $0x30,%rsp
  0x00007fcde8b08cac:   pop    %rbp
  0x00007fcde8b08cad:   cmp    0x28(%r15),%rsp              ;   {poll_return}
  0x00007fcde8b08cb1:   ja     0x00007fcde8b08ce4
  0x00007fcde8b08cb7:   ret
  0x00007fcde8b08cb8:   vmovd  %xmm0,%ebp
  0x00007fcde8b08cbc:   mov    %ebx,%r14d
  0x00007fcde8b08cbf:   vmovq  %xmm1,%rdx
  0x00007fcde8b08cc4:   vmovd  %xmm3,%edi
  0x00007fcde8b08cc8:   jmp    0x00007fcde8b08c1a
  0x00007fcde8b08ccd:   mov    $0xffffff76,%esi
  0x00007fcde8b08cd2:   mov    %rdx,%rbp
  0x00007fcde8b08cd5:   xchg   %ax,%ax
  0x00007fcde8b08cd7:   call   0x00007fcde864c1e0           ; ImmutableOopMap {rbp=Oop }
                                                            ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                            ; - (reexecute) com.mpataki.Tensor4DBenchmark::realTest@7 (line 21)
                                                            ;   {runtime_call UncommonTrapBlob}
  0x00007fcde8b08cdc:   nopl   0x2000354(%rax,%rax,1)       ;   {post_call_nop}
  0x00007fcde8b08ce4:   movabs $0x7fcde8b08cad,%r10         ;   {internal_word}
  0x00007fcde8b08cee:   mov    %r10,0x460(%r15)
  0x00007fcde8b08cf5:   jmp    0x00007fcde858d8e0           ;   {runtime_call SafepointBlob}
  0x00007fcde8b08cfa:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
  0x00007fcde8b08cff:   jmp    0x00007fcde8b08aaa
  0x00007fcde8b08d04:   hlt
  0x00007fcde8b08d05:   hlt
  0x00007fcde8b08d06:   hlt
  0x00007fcde8b08d07:   hlt
[Exception Handler]
  0x00007fcde8b08d08:   jmp    0x00007fcde864c4e0           ;   {no_reloc}
[Deopt Handler Code]
  0x00007fcde8b08d0d:   call   0x00007fcde8b08d12
  0x00007fcde8b08d12:   subq   $0x5,(%rsp)
  0x00007fcde8b08d17:   jmp    0x00007fcde858ce80           ;   {runtime_call DeoptimizationBlob}
  0x00007fcde8b08d1c:   hlt
  0x00007fcde8b08d1d:   hlt
  0x00007fcde8b08d1e:   hlt
  0x00007fcde8b08d1f:   hlt
--------------------------------------------------------------------------------
[/Disassembly]
278.441 ops/s
# Warmup Iteration   2: 281.006 ops/s
Iteration   1: 288.592 ops/s
Iteration   2: 288.348 ops/s
------------------------------------------------------------------------
com.mpataki.Tensor4DBenchmark::realTest()F
  interpreter_invocation_count:           5
  invocation_counter:                     5
  backedge_counter:                  823296
  decompile_count:                        1
  mdo size: 480 bytes

   0 fconst_0
   1 fstore_1
   2 iconst_0
   3 istore_2
   4 iload_2
   5 ldc 1000000
   7 if_icmpge 56
  0    bci: 7    BranchData         trap(intrinsic_or_type_checked_inlining recompiled) taken(1) displacement(104)
                                    not taken(762879)
  10 iload_2
  11 bipush 64
  13 irem
  14 istore_3
  15 iload_2
  16 bipush 16
  18 irem
  19 istore #4
  21 iload_2
  22 bipush 28
  24 irem
  25 istore #5
  27 iload_2
  28 bipush 32
  30 irem
  31 istore #6
  33 fload_1
  34 fast_aaccess_0
  35 fast_agetfield 27 <com/mpataki/Tensor4DBenchmark.tensor:Lcom/mpataki/Tensor4D;> 
  38 iload_3
  39 fast_iload #4
  41 fast_iload2 #5
  43 fast_iload #6
  45 invokevirtual 32 <com/mpataki/Tensor4D.get(IIII)F> 
  32   bci: 45   VirtualCallData    count(0) entries(1)
                                    'com/mpataki/Tensor4D'(762879 1.00)
  48 fadd
  49 fstore_1
  50 iinc #2 1
  53 goto 4
  80   bci: 53   JumpData           taken(762879) displacement(-80)
  56 fload_1
  57 freturn
------------------------------------------------------------------------
Total MDO size: 480 bytes

# Run progress: 50.00% complete, ETA 00:00:40
# Fork: 1 of 1
CompileCommand: print com/mpataki/Tensor4DBenchmark.realTest bool print = true
WARNING: A terminally deprecated method in sun.misc.Unsafe has been called
WARNING: sun.misc.Unsafe::objectFieldOffset has been called by org.openjdk.jmh.util.Utils (file:/home/mpataki/projects/jmh/tensor.benchmark/target/benchmarks.jar)
WARNING: Please consider reporting this to the maintainers of class org.openjdk.jmh.util.Utils
WARNING: sun.misc.Unsafe::objectFieldOffset will be removed in a future release
# Warmup Iteration   1: 
============================= C1-compiled nmethod ==============================
----------------------------------- Assembly -----------------------------------

Compiled method (c1) 496  914 %     3       com.mpataki.Tensor4DBenchmark::realTest @ 4 (58 bytes)
 total in heap  [0x000079796d11ae08,0x000079796d11b2b8] = 1200
 relocation     [0x000079796d11aee0,0x000079796d11af38] = 88
 main code      [0x000079796d11af40,0x000079796d11b260] = 800
 stub code      [0x000079796d11b260,0x000079796d11b2a0] = 64
 oops           [0x000079796d11b2a0,0x000079796d11b2a8] = 8
 metadata       [0x000079796d11b2a8,0x000079796d11b2b8] = 16
 immutable data [0x000079792c356a20,0x000079792c356ba0] = 384
 dependencies   [0x000079792c356a20,0x000079792c356a28] = 8
 nul chk table  [0x000079792c356a28,0x000079792c356a60] = 56
 scopes pcs     [0x000079792c356a60,0x000079792c356b20] = 192
 scopes data    [0x000079792c356b20,0x000079792c356ba0] = 128

[Disassembly]
--------------------------------------------------------------------------------
[Constant Pool (empty)]

--------------------------------------------------------------------------------

add    %al,(%rax)
[Instructions begin]
  0x000079796d11af40:   data16 data16 nopw 0x0(%rax,%rax,1)
  0x000079796d11af4b:   data16 data16 xchg %ax,%ax
  0x000079796d11af4f:   data16 xchg %ax,%ax
[Entry Point]
  # {method} {0x000079794895de78} 'realTest' '()F' in 'com/mpataki/Tensor4DBenchmark'
  0x000079796d11af52:   mov    0x8(%rsi),%r10d
  0x000079796d11af56:   cmp    0x8(%rax),%r10d
  0x000079796d11af5a:   jne    0x0000797974586060           ;   {runtime_call Shared Runtime ic_miss_blob}
[Verified Entry Point]
  0x000079796d11af60:   mov    %eax,-0x14000(%rsp)
  0x000079796d11af67:   push   %rbp
  0x000079796d11af68:   sub    $0x60,%rsp
  0x000079796d11af6c:   cmpl   $0x1,0x20(%r15)
  0x000079796d11af74:   je     0x000079796d11af7b
  0x000079796d11af76:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
  0x000079796d11af7b:   movabs $0x797948a1d080,%rdi         ;   {metadata(method data for {method} {0x000079794895de78} 'realTest' '()F' in 'com/mpataki/Tensor4DBenchmark')}
  0x000079796d11af85:   mov    0xf4(%rdi),%ebx
  0x000079796d11af8b:   add    $0x2,%ebx
  0x000079796d11af8e:   mov    %ebx,0xf4(%rdi)
  0x000079796d11af94:   and    $0x7fe,%ebx
  0x000079796d11af9a:   test   %ebx,%ebx
  0x000079796d11af9c:   je     0x000079796d11b1be
  0x000079796d11afa2:   mov    $0x0,%edi
  0x000079796d11afa7:   vxorps %xmm0,%xmm0,%xmm0
  0x000079796d11afab:   vmovss %xmm0,0x54(%rsp)
  0x000079796d11afb1:   jmp    0x000079796d11b0f9
  0x000079796d11afb6:   xchg   %ax,%ax
  0x000079796d11afb8:   mov    %rdi,%rax
  0x000079796d11afbb:   mov    $0x40,%ecx
  0x000079796d11afc0:   cmp    $0x80000000,%eax
  0x000079796d11afc5:   jne    0x000079796d11afd6
  0x000079796d11afcb:   xor    %edx,%edx
  0x000079796d11afcd:   cmp    $0xffffffff,%ecx
  0x000079796d11afd0:   je     0x000079796d11afd9
  0x000079796d11afd6:   cltd
  0x000079796d11afd7:   idiv   %ecx                         ; implicit exception: dispatches to 0x000079796d11b1df
  0x000079796d11afd9:   mov    %rdx,%rcx
  0x000079796d11afdc:   mov    %rdi,%rax
  0x000079796d11afdf:   mov    $0x10,%r8d
  0x000079796d11afe5:   cmp    $0x80000000,%eax
  0x000079796d11afea:   jne    0x000079796d11affc
  0x000079796d11aff0:   xor    %edx,%edx
  0x000079796d11aff2:   cmp    $0xffffffff,%r8d
  0x000079796d11aff6:   je     0x000079796d11b000
  0x000079796d11affc:   cltd
  0x000079796d11affd:   idiv   %r8d                         ; implicit exception: dispatches to 0x000079796d11b1e4
  0x000079796d11b000:   mov    %rdx,%r8
  0x000079796d11b003:   mov    %rdi,%rax
  0x000079796d11b006:   mov    $0x1c,%r9d
  0x000079796d11b00c:   cmp    $0x80000000,%eax
  0x000079796d11b011:   jne    0x000079796d11b023
  0x000079796d11b017:   xor    %edx,%edx
  0x000079796d11b019:   cmp    $0xffffffff,%r9d
  0x000079796d11b01d:   je     0x000079796d11b027
  0x000079796d11b023:   cltd
  0x000079796d11b024:   idiv   %r9d                         ; implicit exception: dispatches to 0x000079796d11b1e9
  0x000079796d11b027:   mov    %rdx,%r9
  0x000079796d11b02a:   mov    %rdi,%rax
  0x000079796d11b02d:   mov    $0x20,%ebx
  0x000079796d11b032:   cmp    $0x80000000,%eax
  0x000079796d11b037:   jne    0x000079796d11b048
  0x000079796d11b03d:   xor    %edx,%edx
  0x000079796d11b03f:   cmp    $0xffffffff,%ebx
  0x000079796d11b042:   je     0x000079796d11b04b
  0x000079796d11b048:   cltd
  0x000079796d11b049:   idiv   %ebx                         ; implicit exception: dispatches to 0x000079796d11b1ee
  0x000079796d11b04b:   mov    %rdx,%rbx
  0x000079796d11b04e:   mov    0x1c(%rsi),%eax              ; implicit exception: dispatches to 0x000079796d11b1f3
  0x000079796d11b051:   shl    $0x3,%rax
  0x000079796d11b055:   cmp    (%rax),%rax                  ; implicit exception: dispatches to 0x000079796d11b1f8
  0x000079796d11b058:   mov    %rax,%rdx
  0x000079796d11b05b:   movabs $0x797948a1d080,%r11         ;   {metadata(method data for {method} {0x000079794895de78} 'realTest' '()F' in 'com/mpataki/Tensor4DBenchmark')}
  0x000079796d11b065:   movabs $0x140dc460,%r10             ;   {metadata('com/mpataki/Tensor4D')}
  0x000079796d11b06f:   mov    %r10,0x160(%r11)
  0x000079796d11b076:   addq   $0x1,0x168(%r11)
  0x000079796d11b07e:   mov    %rcx,%rdx
  0x000079796d11b081:   mov    %r8,%rcx
  0x000079796d11b084:   mov    %r9,%r8
  0x000079796d11b087:   mov    %rbx,%r9
  0x000079796d11b08a:   mov    %rsi,0x48(%rsp)
  0x000079796d11b08f:   mov    %rax,%rsi
  0x000079796d11b092:   mov    %edi,0x3c(%rsp)
  0x000079796d11b096:   nop
  0x000079796d11b097:   call   0x0000797974b09190           ; ImmutableOopMap {[72]=Oop }
                                                            ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                            ; - com.mpataki.Tensor4DBenchmark::realTest@45 (line 26)
                                                            ;   {optimized virtual_call}
  0x000079796d11b09c:   nopl   0x294(%rax,%rax,1)           ;   {post_call_nop}
  0x000079796d11b0a4:   vaddss 0x54(%rsp),%xmm0,%xmm0
  0x000079796d11b0aa:   mov    0x3c(%rsp),%edi
  0x000079796d11b0ae:   inc    %edi
  0x000079796d11b0b0:   movabs $0x797948a1d080,%rsi         ;   {metadata(method data for {method} {0x000079794895de78} 'realTest' '()F' in 'com/mpataki/Tensor4DBenchmark')}
  0x000079796d11b0ba:   mov    0xf8(%rsi),%ebx
  0x000079796d11b0c0:   add    $0x2,%ebx
  0x000079796d11b0c3:   mov    %ebx,0xf8(%rsi)
  0x000079796d11b0c9:   and    $0x3ffe,%ebx
  0x000079796d11b0cf:   test   %ebx,%ebx
  0x000079796d11b0d1:   je     0x000079796d11b1fd
  0x000079796d11b0d7:   mov    0x30(%r15),%r10              ; ImmutableOopMap {[72]=Oop }
                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                            ; - (reexecute) com.mpataki.Tensor4DBenchmark::realTest@53 (line 21)
  0x000079796d11b0db:   test   %eax,(%r10)                  ;   {poll}
  0x000079796d11b0de:   movabs $0x797948a1d080,%rsi         ;   {metadata(method data for {method} {0x000079794895de78} 'realTest' '()F' in 'com/mpataki/Tensor4DBenchmark')}
  0x000079796d11b0e8:   incl   0x188(%rsi)
  0x000079796d11b0ee:   vmovss %xmm0,0x54(%rsp)
  0x000079796d11b0f4:   mov    0x48(%rsp),%rsi
  0x000079796d11b0f9:   cmp    $0xf4240,%edi
  0x000079796d11b0ff:   movabs $0x797948a1d080,%rax         ;   {metadata(method data for {method} {0x000079794895de78} 'realTest' '()F' in 'com/mpataki/Tensor4DBenchmark')}
  0x000079796d11b109:   mov    $0x148,%edx
  0x000079796d11b10e:   jl     0x000079796d11b115
  0x000079796d11b110:   mov    $0x138,%edx
  0x000079796d11b115:   mov    (%rax,%rdx,1),%rcx
  0x000079796d11b119:   lea    0x1(%rcx),%rcx
  0x000079796d11b11d:   mov    %rcx,(%rax,%rdx,1)
  0x000079796d11b121:   jl     0x000079796d11afb8
  0x000079796d11b127:   vmovss 0x54(%rsp),%xmm0
  0x000079796d11b12d:   add    $0x60,%rsp
  0x000079796d11b131:   pop    %rbp
  0x000079796d11b132:   cmp    0x28(%r15),%rsp              ;   {poll_return}
  0x000079796d11b136:   ja     0x000079796d11b21e
  0x000079796d11b13c:   ret
  0x000079796d11b13d:   mov    %eax,-0x14000(%rsp)
  0x000079796d11b144:   push   %rbp
  0x000079796d11b145:   sub    $0x60,%rsp
  0x000079796d11b149:   data16 xchg %ax,%ax
  0x000079796d11b14c:   cmpl   $0x0,0x20(%r15)
  0x000079796d11b154:   je     0x000079796d11b15b
  0x000079796d11b156:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
  0x000079796d11b15b:   mov    $0x30,%edi
  0x000079796d11b160:   movslq %edi,%rdi
  0x000079796d11b163:   mov    (%rsi,%rdi,1),%rbx
  0x000079796d11b167:   mov    $0x28,%edi
  0x000079796d11b16c:   movslq %edi,%rdi
  0x000079796d11b16f:   vmovss (%rsi,%rdi,1),%xmm0
  0x000079796d11b174:   mov    $0x20,%edi
  0x000079796d11b179:   movslq %edi,%rdi
  0x000079796d11b17c:   mov    (%rsi,%rdi,1),%eax
  0x000079796d11b17f:   mov    %rsi,%rdi
  0x000079796d11b182:   mov    %rbx,0x40(%rsp)
  0x000079796d11b187:   mov    %eax,0x38(%rsp)
  0x000079796d11b18b:   vmovss %xmm0,0x50(%rsp)
  0x000079796d11b191:   call   0x0000797982a52190           ;   {runtime_call SharedRuntime::OSR_migration_end(long*)}
  0x000079796d11b196:   nopl   0x0(%rax,%rax,1)             ;   {post_call_nop}
  0x000079796d11b19e:   mov    0x38(%rsp),%eax
  0x000079796d11b1a2:   mov    %rax,%rdi
  0x000079796d11b1a5:   vmovss 0x50(%rsp),%xmm0
  0x000079796d11b1ab:   mov    0x40(%rsp),%rbx
  0x000079796d11b1b0:   mov    %rbx,%rsi
  0x000079796d11b1b3:   vmovss %xmm0,0x54(%rsp)
  0x000079796d11b1b9:   jmp    0x000079796d11b0f9
  0x000079796d11b1be:   movabs $0x79794895de78,%r10         ;   {metadata({method} {0x000079794895de78} 'realTest' '()F' in 'com/mpataki/Tensor4DBenchmark')}
  0x000079796d11b1c8:   mov    %r10,0x8(%rsp)
  0x000079796d11b1cd:   movq   $0xffffffffffffffff,(%rsp)
  0x000079796d11b1d5:   call   0x000079797464ec60           ; ImmutableOopMap {rsi=Oop }
                                                            ;*synchronization entry
                                                            ; - com.mpataki.Tensor4DBenchmark::realTest@-1 (line 20)
                                                            ;   {runtime_call C1 Runtime counter_overflow_blob}
  0x000079796d11b1da:   jmp    0x000079796d11afa2
  0x000079796d11b1df:   call   0x00007979745bef60           ; ImmutableOopMap {rsi=Oop }
                                                            ;*irem {reexecute=0 rethrow=0 return_oop=0}
                                                            ; - com.mpataki.Tensor4DBenchmark::realTest@13 (line 22)
                                                            ;   {runtime_call C1 Runtime throw_div0_exception_blob}
  0x000079796d11b1e4:   call   0x00007979745bef60           ; ImmutableOopMap {rsi=Oop }
                                                            ;*irem {reexecute=0 rethrow=0 return_oop=0}
                                                            ; - com.mpataki.Tensor4DBenchmark::realTest@18 (line 23)
                                                            ;   {runtime_call C1 Runtime throw_div0_exception_blob}
  0x000079796d11b1e9:   call   0x00007979745bef60           ; ImmutableOopMap {rsi=Oop }
                                                            ;*irem {reexecute=0 rethrow=0 return_oop=0}
                                                            ; - com.mpataki.Tensor4DBenchmark::realTest@24 (line 24)
                                                            ;   {runtime_call C1 Runtime throw_div0_exception_blob}
  0x000079796d11b1ee:   call   0x00007979745bef60           ; ImmutableOopMap {rsi=Oop }
                                                            ;*irem {reexecute=0 rethrow=0 return_oop=0}
                                                            ; - com.mpataki.Tensor4DBenchmark::realTest@30 (line 25)
                                                            ;   {runtime_call C1 Runtime throw_div0_exception_blob}
  0x000079796d11b1f3:   call   0x00007979745bec60           ; ImmutableOopMap {rsi=Oop }
                                                            ;*getfield tensor {reexecute=1 rethrow=0 return_oop=0}
                                                            ; - (reexecute) com.mpataki.Tensor4DBenchmark::realTest@35 (line 26)
                                                            ;   {runtime_call C1 Runtime throw_null_pointer_exception_blob}
  0x000079796d11b1f8:   call   0x00007979745bec60           ; ImmutableOopMap {rsi=Oop rax=Oop }
                                                            ;*invokevirtual get {reexecute=0 rethrow=0 return_oop=0}
                                                            ; - com.mpataki.Tensor4DBenchmark::realTest@45 (line 26)
                                                            ;   {runtime_call C1 Runtime throw_null_pointer_exception_blob}
  0x000079796d11b1fd:   movabs $0x79794895de78,%r10         ;   {metadata({method} {0x000079794895de78} 'realTest' '()F' in 'com/mpataki/Tensor4DBenchmark')}
  0x000079796d11b207:   mov    %r10,0x8(%rsp)
  0x000079796d11b20c:   movq   $0x35,(%rsp)
  0x000079796d11b214:   call   0x000079797464ec60           ; ImmutableOopMap {[72]=Oop }
                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                            ; - (reexecute) com.mpataki.Tensor4DBenchmark::realTest@53 (line 21)
                                                            ;   {runtime_call C1 Runtime counter_overflow_blob}
  0x000079796d11b219:   jmp    0x000079796d11b0d7
  0x000079796d11b21e:   movabs $0x79796d11b132,%r10         ;   {internal_word}
  0x000079796d11b228:   mov    %r10,0x460(%r15)
  0x000079796d11b22f:   jmp    0x000079797458d8e0           ;   {runtime_call SafepointBlob}
  0x000079796d11b234:   mov    0x508(%r15),%rax
  0x000079796d11b23b:   movq   $0x0,0x508(%r15)
  0x000079796d11b246:   movq   $0x0,0x510(%r15)
  0x000079796d11b251:   add    $0x60,%rsp
  0x000079796d11b255:   pop    %rbp
  0x000079796d11b256:   jmp    0x00007979745ba360           ;   {runtime_call C1 Runtime unwind_exception_blob}
  0x000079796d11b25b:   hlt
  0x000079796d11b25c:   hlt
  0x000079796d11b25d:   hlt
  0x000079796d11b25e:   hlt
  0x000079796d11b25f:   hlt
[Stub Code]
  0x000079796d11b260:   nopl   0x0(%rax,%rax,1)             ;   {no_reloc}
  0x000079796d11b265:   movabs $0x0,%rbx                    ;   {static_stub}
  0x000079796d11b26f:   jmp    0x000079796d11b26f           ;   {runtime_call nmethod}
[Exception Handler]
  0x000079796d11b274:   call   0x00007979745bce60           ;   {runtime_call C1 Runtime handle_exception_from_callee_blob}
  0x000079796d11b279:   movabs $0x797982dc0632,%rdi         ;   {external_word}
  0x000079796d11b283:   and    $0xfffffffffffffff0,%rsp
  0x000079796d11b287:   call   0x000079798286f4b0           ;   {runtime_call MacroAssembler::debug64(char*, long, long*)}
  0x000079796d11b28c:   hlt
[Deopt Handler Code]
  0x000079796d11b28d:   movabs $0x79796d11b28d,%r10         ;   {section_word}
  0x000079796d11b297:   push   %r10
  0x000079796d11b299:   jmp    0x000079797458ce80           ;   {runtime_call DeoptimizationBlob}
  0x000079796d11b29e:   hlt
  0x000079796d11b29f:   hlt
--------------------------------------------------------------------------------
[/Disassembly]

============================= C2-compiled nmethod ==============================
----------------------------------- Assembly -----------------------------------

Compiled method (c2) 517  915 %     4       com.mpataki.Tensor4DBenchmark::realTest @ 4 (58 bytes)
 total in heap  [0x0000797974b09388,0x0000797974b09900] = 1400
 relocation     [0x0000797974b09460,0x0000797974b09488] = 40
 main code      [0x0000797974b094a0,0x0000797974b098c8] = 1064
 stub code      [0x0000797974b098c8,0x0000797974b098e0] = 24
 oops           [0x0000797974b098e0,0x0000797974b098e8] = 8
 metadata       [0x0000797974b098e8,0x0000797974b09900] = 24
 immutable data [0x0000797928144b30,0x0000797928144c48] = 280
 dependencies   [0x0000797928144b30,0x0000797928144b40] = 16
 nul chk table  [0x0000797928144b40,0x0000797928144b58] = 24
 scopes pcs     [0x0000797928144b58,0x0000797928144bc8] = 112
 scopes data    [0x0000797928144bc8,0x0000797928144c48] = 128

[Disassembly]
--------------------------------------------------------------------------------
[Constant Pool (empty)]

--------------------------------------------------------------------------------

add    %al,(%rax)
[Verified Entry Point]
  # {method} {0x000079794895de78} 'realTest' '()F' in 'com/mpataki/Tensor4DBenchmark'
  0x0000797974b094a0:   call   0x000079798298db70           ;   {runtime_call os::breakpoint()}
  0x0000797974b094a5:   data16 data16 nopw 0x0(%rax,%rax,1)
  0x0000797974b094b0:   mov    %eax,-0x14000(%rsp)
  0x0000797974b094b7:   push   %rbp
  0x0000797974b094b8:   sub    $0x30,%rsp
  0x0000797974b094bc:   cmpl   $0x1,0x20(%r15)
  0x0000797974b094c4:   jne    0x0000797974b098bd
  0x0000797974b094ca:   mov    0x30(%rsi),%rbp
  0x0000797974b094ce:   vmovss 0x28(%rsi),%xmm0
  0x0000797974b094d3:   vmovss %xmm0,(%rsp)
  0x0000797974b094d8:   mov    0x20(%rsi),%ebx
  0x0000797974b094db:   mov    %rsi,%rdi
  0x0000797974b094de:   movabs $0x797982a52190,%r10
  0x0000797974b094e8:   call   *%r10
  0x0000797974b094eb:   nopl   0x0(%rax,%rax,1)             ;   {post_call_nop}
  0x0000797974b094f3:   test   %rbp,%rbp
  0x0000797974b094f6:   je     0x0000797974b097be
  0x0000797974b094fc:   mov    0x8(%rbp),%r10d
  0x0000797974b09500:   movabs $0x140d2bf8,%r11             ;   {metadata('com/mpataki/Tensor4DBenchmark')}
  0x0000797974b0950a:   mov    %r10d,%r8d
  0x0000797974b0950d:   mov    0x38(%r8),%r10
  0x0000797974b09511:   cmp    %r11,%r10
  0x0000797974b09514:   jne    0x0000797974b09898
  0x0000797974b0951a:   mov    0x1c(%rbp),%r11d
  0x0000797974b0951e:   xchg   %ax,%ax
  0x0000797974b09520:   mov    0x1c(%r12,%r11,8),%r13d      ; implicit exception: dispatches to 0x0000797974b097c0
  0x0000797974b09525:   mov    0xc(%r12,%r13,8),%r9d        ; implicit exception: dispatches to 0x0000797974b097c0
  0x0000797974b0952a:   cmp    $0xf4240,%ebx
  0x0000797974b09530:   jge    0x0000797974b0987f
  0x0000797974b09536:   mov    0x18(%r12,%r11,8),%edx
  0x0000797974b0953b:   mov    0x14(%r12,%r11,8),%edi
  0x0000797974b09540:   mov    %edi,%eax
  0x0000797974b09542:   imul   0x10(%r12,%r11,8),%eax
  0x0000797974b09548:   imul   %edx,%edi
  0x0000797974b0954b:   imul   %edx,%eax
  0x0000797974b0954e:   mov    %ebx,%r14d
  0x0000797974b09551:   inc    %r14d
  0x0000797974b09554:   lea    (%r12,%r13,8),%rsi
  0x0000797974b09558:   vmovq  %rbp,%xmm0
  0x0000797974b0955d:   movslq %ebx,%r11
  0x0000797974b09560:   mov    %ebx,%r10d
  0x0000797974b09563:   sar    $0x1f,%r10d
  0x0000797974b09567:   imul   $0xffffffff92492493,%r11,%r11
  0x0000797974b0956e:   mov    %r10d,%ecx
  0x0000797974b09571:   shr    $0x1c,%ecx
  0x0000797974b09574:   add    %ebx,%ecx
  0x0000797974b09576:   sar    $0x20,%r11
  0x0000797974b0957a:   and    $0xfffffff0,%ecx
  0x0000797974b0957d:   mov    %ebx,%r8d
  0x0000797974b09580:   sub    %ecx,%r8d
  0x0000797974b09583:   imul   %edi,%r8d
  0x0000797974b09587:   mov    %r11d,%r11d
  0x0000797974b0958a:   add    %ebx,%r11d
  0x0000797974b0958d:   mov    %r10d,%ecx
  0x0000797974b09590:   shr    $0x1a,%ecx
  0x0000797974b09593:   add    %ebx,%ecx
  0x0000797974b09595:   sar    $0x4,%r11d
  0x0000797974b09599:   sub    %r10d,%r11d
  0x0000797974b0959c:   and    $0xffffffc0,%ecx
  0x0000797974b0959f:   mov    %ebx,%ebp
  0x0000797974b095a1:   sub    %ecx,%ebp
  0x0000797974b095a3:   imul   %eax,%ebp
  0x0000797974b095a6:   add    %r8d,%ebp
  0x0000797974b095a9:   imul   $0x1c,%r11d,%r8d
  0x0000797974b095ad:   mov    %ebx,%r11d
  0x0000797974b095b0:   sub    %r8d,%r11d
  0x0000797974b095b3:   imul   %edx,%r11d
  0x0000797974b095b7:   add    %r11d,%ebp
  0x0000797974b095ba:   shr    $0x1b,%r10d
  0x0000797974b095be:   add    %ebx,%r10d
  0x0000797974b095c1:   and    $0xffffffe0,%r10d
  0x0000797974b095c5:   mov    %ebx,%r11d
  0x0000797974b095c8:   sub    %r10d,%r11d
  0x0000797974b095cb:   add    %r11d,%ebp
  0x0000797974b095ce:   cmp    %r9d,%ebp
  0x0000797974b095d1:   jae    0x0000797974b097b4
  0x0000797974b095d7:   vmovss (%rsp),%xmm2
  0x0000797974b095dc:   vaddss 0x10(%rsi,%rbp,4),%xmm2,%xmm3
  0x0000797974b095e2:   inc    %ebx
  0x0000797974b095e4:   cmp    %r14d,%ebx
  0x0000797974b095e7:   jge    0x0000797974b095f3
  0x0000797974b095e9:   vmovss %xmm3,(%rsp)
  0x0000797974b095ee:   jmp    0x0000797974b0955d
  0x0000797974b095f3:   cmp    $0xf423f,%ebx
  0x0000797974b095f9:   jge    0x0000797974b097dd
  0x0000797974b095ff:   mov    $0xf423f,%ecx                ;   {no_reloc}
  0x0000797974b09604:   sub    %ebx,%ecx
  0x0000797974b09606:   xor    %r11d,%r11d
  0x0000797974b09609:   cmp    $0xf423f,%ebx
  0x0000797974b0960f:   cmovg  %r11d,%ecx
  0x0000797974b09613:   cmp    $0x7d0,%ecx
  0x0000797974b09619:   mov    $0x7d0,%r11d
  0x0000797974b0961f:   cmova  %r11d,%ecx
  0x0000797974b09623:   add    %ebx,%ecx
  0x0000797974b09625:   vmovd  %r13d,%xmm1
  0x0000797974b0962a:   nopw   0x0(%rax,%rax,1)
  0x0000797974b09630:   movslq %ebx,%r10
  0x0000797974b09633:   mov    %ebx,%r13d
  0x0000797974b09636:   sar    $0x1f,%r13d
  0x0000797974b0963a:   imul   $0xffffffff92492493,%r10,%r8
  0x0000797974b09641:   mov    %r13d,%r10d
  0x0000797974b09644:   shr    $0x1c,%r10d
  0x0000797974b09648:   add    %ebx,%r10d
  0x0000797974b0964b:   sar    $0x20,%r8
  0x0000797974b0964f:   and    $0xfffffff0,%r10d
  0x0000797974b09653:   mov    %ebx,%r11d
  0x0000797974b09656:   sub    %r10d,%r11d
  0x0000797974b09659:   imul   %edi,%r11d
  0x0000797974b0965d:   mov    %r8d,%r8d
  0x0000797974b09660:   add    %ebx,%r8d
  0x0000797974b09663:   mov    %r13d,%r10d
  0x0000797974b09666:   shr    $0x1a,%r10d
  0x0000797974b0966a:   add    %ebx,%r10d
  0x0000797974b0966d:   sar    $0x4,%r8d
  0x0000797974b09671:   sub    %r13d,%r8d
  0x0000797974b09674:   and    $0xffffffc0,%r10d
  0x0000797974b09678:   mov    %ebx,%ebp
  0x0000797974b0967a:   sub    %r10d,%ebp
  0x0000797974b0967d:   imul   %eax,%ebp
  0x0000797974b09680:   add    %r11d,%ebp
  0x0000797974b09683:   imul   $0x1c,%r8d,%r10d
  0x0000797974b09687:   mov    %ebx,%r8d
  0x0000797974b0968a:   sub    %r10d,%r8d
  0x0000797974b0968d:   imul   %edx,%r8d
  0x0000797974b09691:   add    %r8d,%ebp
  0x0000797974b09694:   shr    $0x1b,%r13d
  0x0000797974b09698:   add    %ebx,%r13d
  0x0000797974b0969b:   and    $0xffffffe0,%r13d
  0x0000797974b0969f:   mov    %ebx,%r11d
  0x0000797974b096a2:   sub    %r13d,%r11d
  0x0000797974b096a5:   add    %r11d,%ebp
  0x0000797974b096a8:   cmp    %r9d,%ebp
  0x0000797974b096ab:   jae    0x0000797974b09785
  0x0000797974b096b1:   vaddss 0x10(%rsi,%rbp,4),%xmm3,%xmm3
  0x0000797974b096b7:   mov    %ebx,%r8d
  0x0000797974b096ba:   inc    %r8d
  0x0000797974b096bd:   movslq %r8d,%r10
  0x0000797974b096c0:   mov    %r8d,%ebp
  0x0000797974b096c3:   sar    $0x1f,%ebp
  0x0000797974b096c6:   imul   $0xffffffff92492493,%r10,%r10
  0x0000797974b096cd:   mov    %ebp,%r11d
  0x0000797974b096d0:   shr    $0x1c,%r11d
  0x0000797974b096d4:   add    %ebx,%r11d
  0x0000797974b096d7:   sar    $0x20,%r10
  0x0000797974b096db:   inc    %r11d
  0x0000797974b096de:   mov    %r10d,%r14d
  0x0000797974b096e1:   add    %ebx,%r14d
  0x0000797974b096e4:   and    $0xfffffff0,%r11d
  0x0000797974b096e8:   mov    %ebx,%r10d
  0x0000797974b096eb:   sub    %r11d,%r10d
  0x0000797974b096ee:   inc    %r14d
  0x0000797974b096f1:   inc    %r10d
  0x0000797974b096f4:   imul   %edi,%r10d
  0x0000797974b096f8:   sar    $0x4,%r14d
  0x0000797974b096fc:   sub    %ebp,%r14d                   ;   {no_reloc}
  0x0000797974b096ff:   mov    %ebp,%r13d
  0x0000797974b09702:   shr    $0x1a,%r13d
  0x0000797974b09706:   add    %ebx,%r13d
  0x0000797974b09709:   imul   $0x1c,%r14d,%r11d
  0x0000797974b0970d:   mov    %ebx,%r14d
  0x0000797974b09710:   sub    %r11d,%r14d
  0x0000797974b09713:   inc    %r13d
  0x0000797974b09716:   inc    %r14d
  0x0000797974b09719:   imul   %edx,%r14d
  0x0000797974b0971d:   and    $0xffffffc0,%r13d
  0x0000797974b09721:   mov    %ebx,%r11d
  0x0000797974b09724:   sub    %r13d,%r11d
  0x0000797974b09727:   shr    $0x1b,%ebp
  0x0000797974b0972a:   add    %ebx,%ebp
  0x0000797974b0972c:   inc    %r11d
  0x0000797974b0972f:   imul   %eax,%r11d
  0x0000797974b09733:   add    %r10d,%r11d
  0x0000797974b09736:   add    %r14d,%r11d
  0x0000797974b09739:   inc    %ebp
  0x0000797974b0973b:   and    $0xffffffe0,%ebp
  0x0000797974b0973e:   mov    %ebx,%r10d
  0x0000797974b09741:   sub    %ebp,%r10d
  0x0000797974b09744:   add    %r10d,%r11d
  0x0000797974b09747:   mov    %r11d,%ebp
  0x0000797974b0974a:   inc    %ebp
  0x0000797974b0974c:   cmp    %r9d,%ebp
  0x0000797974b0974f:   jae    0x0000797974b09788
  0x0000797974b09751:   movslq %r11d,%r10
  0x0000797974b09754:   vaddss 0x14(%rsi,%r10,4),%xmm3,%xmm3
  0x0000797974b0975b:   add    $0x2,%ebx
  0x0000797974b0975e:   xchg   %ax,%ax
  0x0000797974b09760:   cmp    %ecx,%ebx
  0x0000797974b09762:   jl     0x0000797974b09630
  0x0000797974b09768:   mov    0x30(%r15),%r11              ; ImmutableOopMap {rsi=Oop xmm0=Oop xmm1=NarrowOop }
                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                            ; - (reexecute) com.mpataki.Tensor4DBenchmark::realTest@53 (line 21)
  0x0000797974b0976c:   test   %eax,(%r11)                  ;   {poll}
  0x0000797974b0976f:   cmp    $0xf423f,%ebx
  0x0000797974b09775:   jge    0x0000797974b097d8
  0x0000797974b0977b:   vmovd  %xmm1,%r13d
  0x0000797974b09780:   jmp    0x0000797974b095ff
  0x0000797974b09785:   mov    %ebx,%r8d
  0x0000797974b09788:   vmovd  %xmm1,%r13d
  0x0000797974b0978d:   vmovss %xmm3,(%rsp)
  0x0000797974b09792:   mov    $0xffffffe4,%esi
  0x0000797974b09797:   mov    %r8d,0x4(%rsp)
  0x0000797974b0979c:   vmovsd %xmm0,0x8(%rsp)
  0x0000797974b097a2:   mov    %r13d,0x10(%rsp)
  0x0000797974b097a7:   call   0x00007979745b8760           ; ImmutableOopMap {[8]=Oop [16]=NarrowOop }
                                                            ;*faload {reexecute=0 rethrow=0 return_oop=0}
                                                            ; - com.mpataki.Tensor4D::get@44 (line 20)
                                                            ; - com.mpataki.Tensor4DBenchmark::realTest@45 (line 26)
                                                            ;   {runtime_call UncommonTrapBlob}
  0x0000797974b097ac:   nopl   0x1000424(%rax,%rax,1)       ;   {post_call_nop}
  0x0000797974b097b4:   mov    %ebx,%r8d
  0x0000797974b097b7:   vmovss (%rsp),%xmm3
  0x0000797974b097bc:   jmp    0x0000797974b0978d
  0x0000797974b097be:   xor    %ebp,%ebp
  0x0000797974b097c0:   mov    $0xffffff76,%esi
  0x0000797974b097c5:   mov    %ebx,0x4(%rsp)
  0x0000797974b097c9:   xchg   %ax,%ax
  0x0000797974b097cb:   call   0x00007979745b8760           ; ImmutableOopMap {rbp=Oop }
                                                            ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                            ; - com.mpataki.Tensor4DBenchmark::realTest@4 (line 21)
                                                            ;   {runtime_call UncommonTrapBlob}
  0x0000797974b097d0:   nopl   0x2000448(%rax,%rax,1)       ;   {post_call_nop}
  0x0000797974b097d8:   vmovd  %xmm1,%r13d
  0x0000797974b097dd:   data16 xchg %ax,%ax
  0x0000797974b097e0:   cmp    $0xf4240,%ebx
  0x0000797974b097e6:   jge    0x0000797974b09879
  0x0000797974b097ec:   movslq %ebx,%r10
  0x0000797974b097ef:   mov    %ebx,%ecx
  0x0000797974b097f1:   sar    $0x1f,%ecx
  0x0000797974b097f4:   imul   $0xffffffff92492493,%r10,%r8
  0x0000797974b097fb:   mov    %ecx,%r10d
  0x0000797974b097fe:   shr    $0x1c,%r10d
  0x0000797974b09802:   add    %ebx,%r10d
  0x0000797974b09805:   sar    $0x20,%r8
  0x0000797974b09809:   and    $0xfffffff0,%r10d
  0x0000797974b0980d:   mov    %ebx,%r11d
  0x0000797974b09810:   sub    %r10d,%r11d
  0x0000797974b09813:   imul   %edi,%r11d
  0x0000797974b09817:   mov    %r8d,%r8d
  0x0000797974b0981a:   add    %ebx,%r8d
  0x0000797974b0981d:   mov    %ecx,%r10d
  0x0000797974b09820:   shr    $0x1a,%r10d
  0x0000797974b09824:   add    %ebx,%r10d
  0x0000797974b09827:   sar    $0x4,%r8d
  0x0000797974b0982b:   sub    %ecx,%r8d
  0x0000797974b0982e:   and    $0xffffffc0,%r10d
  0x0000797974b09832:   mov    %ebx,%ebp
  0x0000797974b09834:   sub    %r10d,%ebp
  0x0000797974b09837:   imul   %eax,%ebp
  0x0000797974b0983a:   add    %r11d,%ebp
  0x0000797974b0983d:   imul   $0x1c,%r8d,%r10d
  0x0000797974b09841:   mov    %ebx,%r8d
  0x0000797974b09844:   sub    %r10d,%r8d
  0x0000797974b09847:   imul   %edx,%r8d
  0x0000797974b0984b:   add    %r8d,%ebp
  0x0000797974b0984e:   shr    $0x1b,%ecx
  0x0000797974b09851:   add    %ebx,%ecx
  0x0000797974b09853:   and    $0xffffffe0,%ecx
  0x0000797974b09856:   mov    %ebx,%r10d
  0x0000797974b09859:   sub    %ecx,%r10d
  0x0000797974b0985c:   add    %r10d,%ebp
  0x0000797974b0985f:   nop
  0x0000797974b09860:   cmp    %r9d,%ebp
  0x0000797974b09863:   jae    0x0000797974b098b0
  0x0000797974b09865:   vaddss 0x10(%rsi,%rbp,4),%xmm3,%xmm3
  0x0000797974b0986b:   inc    %ebx
  0x0000797974b0986d:   cmp    $0xf4240,%ebx
  0x0000797974b09873:   jl     0x0000797974b097ec
  0x0000797974b09879:   vmovd  %xmm3,%ebp
  0x0000797974b0987d:   jmp    0x0000797974b09882
  0x0000797974b0987f:   mov    (%rsp),%ebp
  0x0000797974b09882:   mov    $0xffffff4d,%esi
  0x0000797974b09887:   mov    %ebx,(%rsp)
  0x0000797974b0988a:   nop
  0x0000797974b0988b:   call   0x00007979745b8760           ; ImmutableOopMap {}
                                                            ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                            ; - (reexecute) com.mpataki.Tensor4DBenchmark::realTest@7 (line 21)
                                                            ;   {runtime_call UncommonTrapBlob}
  0x0000797974b09890:   nopl   0x3000508(%rax,%rax,1)       ;   {post_call_nop}
  0x0000797974b09898:   mov    $0xffffff8d,%esi
  0x0000797974b0989d:   mov    %ebx,0x4(%rsp)
  0x0000797974b098a1:   xchg   %ax,%ax
  0x0000797974b098a3:   call   0x00007979745b8760           ; ImmutableOopMap {rbp=Oop }
                                                            ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                            ; - com.mpataki.Tensor4DBenchmark::realTest@4 (line 21)
                                                            ;   {runtime_call UncommonTrapBlob}
  0x0000797974b098a8:   nopl   0x4000520(%rax,%rax,1)       ;   {post_call_nop}
  0x0000797974b098b0:   vmovss %xmm3,(%rsp)
  0x0000797974b098b5:   mov    %ebx,%r8d
  0x0000797974b098b8:   jmp    0x0000797974b09792
  0x0000797974b098bd:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
  0x0000797974b098c2:   jmp    0x0000797974b094ca
  0x0000797974b098c7:   hlt
[Exception Handler]
  0x0000797974b098c8:   jmp    0x00007979745b8a60           ;   {no_reloc}
[Deopt Handler Code]
  0x0000797974b098cd:   call   0x0000797974b098d2
  0x0000797974b098d2:   subq   $0x5,(%rsp)
  0x0000797974b098d7:   jmp    0x000079797458ce80           ;   {runtime_call DeoptimizationBlob}
  0x0000797974b098dc:   hlt
  0x0000797974b098dd:   hlt
  0x0000797974b098de:   hlt
  0x0000797974b098df:   hlt
--------------------------------------------------------------------------------
[/Disassembly]

============================= C2-compiled nmethod ==============================
----------------------------------- Assembly -----------------------------------

Compiled method (c2) 538  916 %     4       com.mpataki.Tensor4DBenchmark::realTest @ 4 (58 bytes)
 total in heap  [0x0000797974b09908,0x0000797974b09e98] = 1424
 relocation     [0x0000797974b099e0,0x0000797974b09a08] = 40
 main code      [0x0000797974b09a20,0x0000797974b09e60] = 1088
 stub code      [0x0000797974b09e60,0x0000797974b09e78] = 24
 oops           [0x0000797974b09e78,0x0000797974b09e80] = 8
 metadata       [0x0000797974b09e80,0x0000797974b09e98] = 24
 immutable data [0x00007979280b94c0,0x00007979280b95a8] = 232
 dependencies   [0x00007979280b94c0,0x00007979280b94d0] = 16
 nul chk table  [0x00007979280b94d0,0x00007979280b94e8] = 24
 scopes pcs     [0x00007979280b94e8,0x00007979280b9548] = 96
 scopes data    [0x00007979280b9548,0x00007979280b95a8] = 96

[Disassembly]
--------------------------------------------------------------------------------
[Constant Pool (empty)]

--------------------------------------------------------------------------------

add    %al,(%rax)
[Verified Entry Point]
  # {method} {0x000079794895de78} 'realTest' '()F' in 'com/mpataki/Tensor4DBenchmark'
  0x0000797974b09a20:   call   0x000079798298db70           ;   {runtime_call os::breakpoint()}
  0x0000797974b09a25:   data16 data16 nopw 0x0(%rax,%rax,1)
  0x0000797974b09a30:   mov    %eax,-0x14000(%rsp)
  0x0000797974b09a37:   push   %rbp
  0x0000797974b09a38:   sub    $0x30,%rsp
  0x0000797974b09a3c:   cmpl   $0x1,0x20(%r15)
  0x0000797974b09a44:   jne    0x0000797974b09e53
  0x0000797974b09a4a:   mov    0x30(%rsi),%rbp
  0x0000797974b09a4e:   vmovss 0x28(%rsi),%xmm0
  0x0000797974b09a53:   vmovss %xmm0,(%rsp)
  0x0000797974b09a58:   mov    0x20(%rsi),%ebx
  0x0000797974b09a5b:   mov    %rsi,%rdi
  0x0000797974b09a5e:   movabs $0x797982a52190,%r10
  0x0000797974b09a68:   call   *%r10
  0x0000797974b09a6b:   nopl   0x0(%rax,%rax,1)             ;   {post_call_nop}
  0x0000797974b09a73:   test   %rbp,%rbp
  0x0000797974b09a76:   je     0x0000797974b09e00
  0x0000797974b09a7c:   mov    0x8(%rbp),%r10d
  0x0000797974b09a80:   movabs $0x140d2bf8,%r11             ;   {metadata('com/mpataki/Tensor4DBenchmark')}
  0x0000797974b09a8a:   mov    %r10d,%r8d
  0x0000797974b09a8d:   mov    0x38(%r8),%r10
  0x0000797974b09a91:   cmp    %r11,%r10
  0x0000797974b09a94:   jne    0x0000797974b09e18
  0x0000797974b09a9a:   mov    0x1c(%rbp),%r11d
  0x0000797974b09a9e:   xchg   %ax,%ax
  0x0000797974b09aa0:   mov    0x1c(%r12,%r11,8),%r13d      ; implicit exception: dispatches to 0x0000797974b09e02
  0x0000797974b09aa5:   mov    0xc(%r12,%r13,8),%r9d        ; implicit exception: dispatches to 0x0000797974b09e02
  0x0000797974b09aaa:   cmp    $0xf4240,%ebx
  0x0000797974b09ab0:   jge    0x0000797974b09d3e
  0x0000797974b09ab6:   mov    0x18(%r12,%r11,8),%edx
  0x0000797974b09abb:   mov    0x14(%r12,%r11,8),%edi
  0x0000797974b09ac0:   mov    %edi,%eax
  0x0000797974b09ac2:   imul   0x10(%r12,%r11,8),%eax
  0x0000797974b09ac8:   imul   %edx,%edi
  0x0000797974b09acb:   imul   %edx,%eax
  0x0000797974b09ace:   mov    %ebx,%r14d
  0x0000797974b09ad1:   inc    %r14d
  0x0000797974b09ad4:   lea    (%r12,%r13,8),%rsi
  0x0000797974b09ad8:   vmovq  %rbp,%xmm0
  0x0000797974b09add:   movslq %ebx,%r11
  0x0000797974b09ae0:   mov    %ebx,%r10d
  0x0000797974b09ae3:   sar    $0x1f,%r10d
  0x0000797974b09ae7:   imul   $0xffffffff92492493,%r11,%r11
  0x0000797974b09aee:   mov    %r10d,%ecx
  0x0000797974b09af1:   shr    $0x1c,%ecx
  0x0000797974b09af4:   add    %ebx,%ecx
  0x0000797974b09af6:   sar    $0x20,%r11
  0x0000797974b09afa:   and    $0xfffffff0,%ecx
  0x0000797974b09afd:   mov    %ebx,%r8d
  0x0000797974b09b00:   sub    %ecx,%r8d
  0x0000797974b09b03:   imul   %edi,%r8d
  0x0000797974b09b07:   mov    %r11d,%r11d
  0x0000797974b09b0a:   add    %ebx,%r11d
  0x0000797974b09b0d:   mov    %r10d,%ecx
  0x0000797974b09b10:   shr    $0x1a,%ecx
  0x0000797974b09b13:   add    %ebx,%ecx
  0x0000797974b09b15:   sar    $0x4,%r11d
  0x0000797974b09b19:   sub    %r10d,%r11d
  0x0000797974b09b1c:   and    $0xffffffc0,%ecx
  0x0000797974b09b1f:   mov    %ebx,%ebp
  0x0000797974b09b21:   sub    %ecx,%ebp
  0x0000797974b09b23:   imul   %eax,%ebp
  0x0000797974b09b26:   add    %r8d,%ebp
  0x0000797974b09b29:   imul   $0x1c,%r11d,%r8d
  0x0000797974b09b2d:   mov    %ebx,%r11d
  0x0000797974b09b30:   sub    %r8d,%r11d
  0x0000797974b09b33:   imul   %edx,%r11d
  0x0000797974b09b37:   add    %r11d,%ebp
  0x0000797974b09b3a:   shr    $0x1b,%r10d
  0x0000797974b09b3e:   add    %ebx,%r10d
  0x0000797974b09b41:   and    $0xffffffe0,%r10d
  0x0000797974b09b45:   mov    %ebx,%r11d
  0x0000797974b09b48:   sub    %r10d,%r11d
  0x0000797974b09b4b:   add    %r11d,%ebp
  0x0000797974b09b4e:   cmp    %r9d,%ebp
  0x0000797974b09b51:   jae    0x0000797974b09d34
  0x0000797974b09b57:   vmovss (%rsp),%xmm1
  0x0000797974b09b5c:   vaddss 0x10(%rsi,%rbp,4),%xmm1,%xmm3
  0x0000797974b09b62:   inc    %ebx
  0x0000797974b09b64:   cmp    %r14d,%ebx
  0x0000797974b09b67:   jge    0x0000797974b09b73
  0x0000797974b09b69:   vmovss %xmm3,(%rsp)
  0x0000797974b09b6e:   jmp    0x0000797974b09add
  0x0000797974b09b73:   cmp    $0xf423f,%ebx
  0x0000797974b09b79:   jge    0x0000797974b09d4d
  0x0000797974b09b7f:   mov    $0xf423f,%ecx                ;   {no_reloc}
  0x0000797974b09b84:   sub    %ebx,%ecx
  0x0000797974b09b86:   xor    %r11d,%r11d
  0x0000797974b09b89:   cmp    $0xf423f,%ebx
  0x0000797974b09b8f:   cmovg  %r11d,%ecx
  0x0000797974b09b93:   cmp    $0x7d0,%ecx
  0x0000797974b09b99:   mov    $0x7d0,%r11d
  0x0000797974b09b9f:   cmova  %r11d,%ecx
  0x0000797974b09ba3:   add    %ebx,%ecx
  0x0000797974b09ba5:   vmovd  %r13d,%xmm1
  0x0000797974b09baa:   nopw   0x0(%rax,%rax,1)
  0x0000797974b09bb0:   movslq %ebx,%r10
  0x0000797974b09bb3:   mov    %ebx,%r13d
  0x0000797974b09bb6:   sar    $0x1f,%r13d
  0x0000797974b09bba:   imul   $0xffffffff92492493,%r10,%r8
  0x0000797974b09bc1:   mov    %r13d,%r10d
  0x0000797974b09bc4:   shr    $0x1c,%r10d
  0x0000797974b09bc8:   add    %ebx,%r10d
  0x0000797974b09bcb:   sar    $0x20,%r8
  0x0000797974b09bcf:   and    $0xfffffff0,%r10d
  0x0000797974b09bd3:   mov    %ebx,%r11d
  0x0000797974b09bd6:   sub    %r10d,%r11d
  0x0000797974b09bd9:   imul   %edi,%r11d
  0x0000797974b09bdd:   mov    %r8d,%r8d
  0x0000797974b09be0:   add    %ebx,%r8d
  0x0000797974b09be3:   mov    %r13d,%r10d
  0x0000797974b09be6:   shr    $0x1a,%r10d
  0x0000797974b09bea:   add    %ebx,%r10d
  0x0000797974b09bed:   sar    $0x4,%r8d
  0x0000797974b09bf1:   sub    %r13d,%r8d
  0x0000797974b09bf4:   and    $0xffffffc0,%r10d
  0x0000797974b09bf8:   mov    %ebx,%ebp
  0x0000797974b09bfa:   sub    %r10d,%ebp
  0x0000797974b09bfd:   imul   %eax,%ebp
  0x0000797974b09c00:   add    %r11d,%ebp
  0x0000797974b09c03:   imul   $0x1c,%r8d,%r10d
  0x0000797974b09c07:   mov    %ebx,%r8d
  0x0000797974b09c0a:   sub    %r10d,%r8d
  0x0000797974b09c0d:   imul   %edx,%r8d
  0x0000797974b09c11:   add    %r8d,%ebp
  0x0000797974b09c14:   shr    $0x1b,%r13d
  0x0000797974b09c18:   add    %ebx,%r13d
  0x0000797974b09c1b:   and    $0xffffffe0,%r13d
  0x0000797974b09c1f:   mov    %ebx,%r11d
  0x0000797974b09c22:   sub    %r13d,%r11d
  0x0000797974b09c25:   add    %r11d,%ebp
  0x0000797974b09c28:   cmp    %r9d,%ebp
  0x0000797974b09c2b:   jae    0x0000797974b09d05
  0x0000797974b09c31:   vaddss 0x10(%rsi,%rbp,4),%xmm3,%xmm3
  0x0000797974b09c37:   mov    %ebx,%r8d
  0x0000797974b09c3a:   inc    %r8d
  0x0000797974b09c3d:   movslq %r8d,%r10
  0x0000797974b09c40:   mov    %r8d,%ebp
  0x0000797974b09c43:   sar    $0x1f,%ebp
  0x0000797974b09c46:   imul   $0xffffffff92492493,%r10,%r10
  0x0000797974b09c4d:   mov    %ebp,%r11d
  0x0000797974b09c50:   shr    $0x1c,%r11d
  0x0000797974b09c54:   add    %ebx,%r11d
  0x0000797974b09c57:   sar    $0x20,%r10
  0x0000797974b09c5b:   inc    %r11d
  0x0000797974b09c5e:   mov    %r10d,%r14d
  0x0000797974b09c61:   add    %ebx,%r14d
  0x0000797974b09c64:   and    $0xfffffff0,%r11d
  0x0000797974b09c68:   mov    %ebx,%r10d
  0x0000797974b09c6b:   sub    %r11d,%r10d
  0x0000797974b09c6e:   inc    %r14d
  0x0000797974b09c71:   inc    %r10d
  0x0000797974b09c74:   imul   %edi,%r10d
  0x0000797974b09c78:   sar    $0x4,%r14d
  0x0000797974b09c7c:   sub    %ebp,%r14d                   ;   {no_reloc}
  0x0000797974b09c7f:   mov    %ebp,%r13d
  0x0000797974b09c82:   shr    $0x1a,%r13d
  0x0000797974b09c86:   add    %ebx,%r13d
  0x0000797974b09c89:   imul   $0x1c,%r14d,%r11d
  0x0000797974b09c8d:   mov    %ebx,%r14d
  0x0000797974b09c90:   sub    %r11d,%r14d
  0x0000797974b09c93:   inc    %r13d
  0x0000797974b09c96:   inc    %r14d
  0x0000797974b09c99:   imul   %edx,%r14d
  0x0000797974b09c9d:   and    $0xffffffc0,%r13d
  0x0000797974b09ca1:   mov    %ebx,%r11d
  0x0000797974b09ca4:   sub    %r13d,%r11d
  0x0000797974b09ca7:   shr    $0x1b,%ebp
  0x0000797974b09caa:   add    %ebx,%ebp
  0x0000797974b09cac:   inc    %r11d
  0x0000797974b09caf:   imul   %eax,%r11d
  0x0000797974b09cb3:   add    %r10d,%r11d
  0x0000797974b09cb6:   add    %r14d,%r11d
  0x0000797974b09cb9:   inc    %ebp
  0x0000797974b09cbb:   and    $0xffffffe0,%ebp
  0x0000797974b09cbe:   mov    %ebx,%r10d
  0x0000797974b09cc1:   sub    %ebp,%r10d
  0x0000797974b09cc4:   add    %r10d,%r11d
  0x0000797974b09cc7:   mov    %r11d,%ebp
  0x0000797974b09cca:   inc    %ebp
  0x0000797974b09ccc:   cmp    %r9d,%ebp
  0x0000797974b09ccf:   jae    0x0000797974b09d08
  0x0000797974b09cd1:   movslq %r11d,%r10
  0x0000797974b09cd4:   vaddss 0x14(%rsi,%r10,4),%xmm3,%xmm3
  0x0000797974b09cdb:   add    $0x2,%ebx
  0x0000797974b09cde:   xchg   %ax,%ax
  0x0000797974b09ce0:   cmp    %ecx,%ebx
  0x0000797974b09ce2:   jl     0x0000797974b09bb0
  0x0000797974b09ce8:   mov    0x30(%r15),%r11              ; ImmutableOopMap {rsi=Oop xmm0=Oop xmm1=NarrowOop }
                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                            ; - (reexecute) com.mpataki.Tensor4DBenchmark::realTest@53 (line 21)
  0x0000797974b09cec:   test   %eax,(%r11)                  ;   {poll}
  0x0000797974b09cef:   cmp    $0xf423f,%ebx
  0x0000797974b09cf5:   jge    0x0000797974b09d48
  0x0000797974b09cfb:   vmovd  %xmm1,%r13d
  0x0000797974b09d00:   jmp    0x0000797974b09b7f
  0x0000797974b09d05:   mov    %ebx,%r8d
  0x0000797974b09d08:   vmovd  %xmm1,%r13d
  0x0000797974b09d0d:   vmovss %xmm3,(%rsp)
  0x0000797974b09d12:   mov    $0xffffffe4,%esi
  0x0000797974b09d17:   mov    %r8d,0x4(%rsp)
  0x0000797974b09d1c:   vmovsd %xmm0,0x8(%rsp)
  0x0000797974b09d22:   mov    %r13d,0x10(%rsp)
  0x0000797974b09d27:   call   0x00007979745b8760           ; ImmutableOopMap {[8]=Oop [16]=NarrowOop }
                                                            ;*faload {reexecute=0 rethrow=0 return_oop=0}
                                                            ; - com.mpataki.Tensor4D::get@44 (line 20)
                                                            ; - com.mpataki.Tensor4DBenchmark::realTest@45 (line 26)
                                                            ;   {runtime_call UncommonTrapBlob}
  0x0000797974b09d2c:   nopl   0x1000424(%rax,%rax,1)       ;   {post_call_nop}
  0x0000797974b09d34:   mov    %ebx,%r8d
  0x0000797974b09d37:   vmovss (%rsp),%xmm3
  0x0000797974b09d3c:   jmp    0x0000797974b09d0d
  0x0000797974b09d3e:   vmovss (%rsp),%xmm3
  0x0000797974b09d43:   jmp    0x0000797974b09dec
  0x0000797974b09d48:   vmovd  %xmm1,%r13d
  0x0000797974b09d4d:   cmp    $0xf4240,%ebx
  0x0000797974b09d53:   jge    0x0000797974b09dec
  0x0000797974b09d59:   data16 xchg %ax,%ax
  0x0000797974b09d5c:   movslq %ebx,%r10
  0x0000797974b09d5f:   mov    %ebx,%ecx
  0x0000797974b09d61:   sar    $0x1f,%ecx
  0x0000797974b09d64:   imul   $0xffffffff92492493,%r10,%r8
  0x0000797974b09d6b:   mov    %ecx,%r10d
  0x0000797974b09d6e:   shr    $0x1c,%r10d
  0x0000797974b09d72:   add    %ebx,%r10d
  0x0000797974b09d75:   sar    $0x20,%r8
  0x0000797974b09d79:   and    $0xfffffff0,%r10d
  0x0000797974b09d7d:   mov    %ebx,%r11d
  0x0000797974b09d80:   sub    %r10d,%r11d
  0x0000797974b09d83:   imul   %edi,%r11d
  0x0000797974b09d87:   mov    %r8d,%r8d
  0x0000797974b09d8a:   add    %ebx,%r8d
  0x0000797974b09d8d:   mov    %ecx,%r10d
  0x0000797974b09d90:   shr    $0x1a,%r10d
  0x0000797974b09d94:   add    %ebx,%r10d
  0x0000797974b09d97:   sar    $0x4,%r8d
  0x0000797974b09d9b:   sub    %ecx,%r8d
  0x0000797974b09d9e:   and    $0xffffffc0,%r10d
  0x0000797974b09da2:   mov    %ebx,%ebp
  0x0000797974b09da4:   sub    %r10d,%ebp
  0x0000797974b09da7:   imul   %eax,%ebp
  0x0000797974b09daa:   add    %r11d,%ebp
  0x0000797974b09dad:   imul   $0x1c,%r8d,%r10d
  0x0000797974b09db1:   mov    %ebx,%r8d
  0x0000797974b09db4:   sub    %r10d,%r8d
  0x0000797974b09db7:   imul   %edx,%r8d
  0x0000797974b09dbb:   add    %r8d,%ebp
  0x0000797974b09dbe:   shr    $0x1b,%ecx
  0x0000797974b09dc1:   add    %ebx,%ecx
  0x0000797974b09dc3:   and    $0xffffffe0,%ecx
  0x0000797974b09dc6:   mov    %ebx,%r10d
  0x0000797974b09dc9:   sub    %ecx,%r10d
  0x0000797974b09dcc:   add    %r10d,%ebp
  0x0000797974b09dcf:   cmp    %r9d,%ebp
  0x0000797974b09dd2:   jae    0x0000797974b09e30
  0x0000797974b09dd4:   vaddss 0x10(%rsi,%rbp,4),%xmm3,%xmm3
  0x0000797974b09dda:   inc    %ebx
  0x0000797974b09ddc:   nopl   0x0(%rax)
  0x0000797974b09de0:   cmp    $0xf4240,%ebx
  0x0000797974b09de6:   jl     0x0000797974b09d5c
  0x0000797974b09dec:   vmovaps %xmm3,%xmm0
  0x0000797974b09df0:   add    $0x30,%rsp
  0x0000797974b09df4:   pop    %rbp
  0x0000797974b09df5:   cmp    0x28(%r15),%rsp              ;   {poll_return}
  0x0000797974b09df9:   ja     0x0000797974b09e3d
  0x0000797974b09dff:   ret
  0x0000797974b09e00:   xor    %ebp,%ebp
  0x0000797974b09e02:   mov    $0xffffffbe,%esi
  0x0000797974b09e07:   mov    %ebx,0x4(%rsp)
  0x0000797974b09e0b:   call   0x00007979745b8760           ; ImmutableOopMap {rbp=Oop }
                                                            ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                            ; - com.mpataki.Tensor4DBenchmark::realTest@4 (line 21)
                                                            ;   {runtime_call UncommonTrapBlob}
  0x0000797974b09e10:   nopl   0x2000508(%rax,%rax,1)       ;   {post_call_nop}
  0x0000797974b09e18:   mov    $0xffffff8d,%esi
  0x0000797974b09e1d:   mov    %ebx,0x4(%rsp)
  0x0000797974b09e21:   xchg   %ax,%ax
  0x0000797974b09e23:   call   0x00007979745b8760           ; ImmutableOopMap {rbp=Oop }
                                                            ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                            ; - com.mpataki.Tensor4DBenchmark::realTest@4 (line 21)
                                                            ;   {runtime_call UncommonTrapBlob}
  0x0000797974b09e28:   nopl   0x3000520(%rax,%rax,1)       ;   {post_call_nop}
  0x0000797974b09e30:   vmovss %xmm3,(%rsp)
  0x0000797974b09e35:   mov    %ebx,%r8d
  0x0000797974b09e38:   jmp    0x0000797974b09d12
  0x0000797974b09e3d:   movabs $0x797974b09df5,%r10         ;   {internal_word}
  0x0000797974b09e47:   mov    %r10,0x460(%r15)
  0x0000797974b09e4e:   jmp    0x000079797458d8e0           ;   {runtime_call SafepointBlob}
  0x0000797974b09e53:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
  0x0000797974b09e58:   jmp    0x0000797974b09a4a
  0x0000797974b09e5d:   hlt
  0x0000797974b09e5e:   hlt
  0x0000797974b09e5f:   hlt
[Exception Handler]
  0x0000797974b09e60:   jmp    0x00007979745b8a60           ;   {no_reloc}
[Deopt Handler Code]
  0x0000797974b09e65:   call   0x0000797974b09e6a
  0x0000797974b09e6a:   subq   $0x5,(%rsp)
  0x0000797974b09e6f:   jmp    0x000079797458ce80           ;   {runtime_call DeoptimizationBlob}
  0x0000797974b09e74:   hlt
  0x0000797974b09e75:   hlt
  0x0000797974b09e76:   hlt
  0x0000797974b09e77:   hlt
--------------------------------------------------------------------------------
[/Disassembly]

============================= C2-compiled nmethod ==============================
----------------------------------- Assembly -----------------------------------

Compiled method (c2) 561  917       4       com.mpataki.Tensor4DBenchmark::realTest (58 bytes)
 total in heap  [0x0000797974b09f08,0x0000797974b0a2c0] = 952
 relocation     [0x0000797974b09fe0,0x0000797974b0a000] = 32
 main code      [0x0000797974b0a000,0x0000797974b0a288] = 648
 stub code      [0x0000797974b0a288,0x0000797974b0a2a0] = 24
 oops           [0x0000797974b0a2a0,0x0000797974b0a2a8] = 8
 metadata       [0x0000797974b0a2a8,0x0000797974b0a2c0] = 24
 immutable data [0x00007979280b9650,0x00007979280b9730] = 224
 dependencies   [0x00007979280b9650,0x00007979280b9660] = 16
 nul chk table  [0x00007979280b9660,0x00007979280b9678] = 24
 scopes pcs     [0x00007979280b9678,0x00007979280b96c8] = 80
 scopes data    [0x00007979280b96c8,0x00007979280b9730] = 104

[Disassembly]
--------------------------------------------------------------------------------
[Constant Pool (empty)]

--------------------------------------------------------------------------------

add    %al,(%rax)
[Instructions begin]
  0x0000797974b0a000:   xchg   %ax,%ax
[Entry Point]
  # {method} {0x000079794895de78} 'realTest' '()F' in 'com/mpataki/Tensor4DBenchmark'
  #           [sp+0x40]  (sp of caller)
  0x0000797974b0a002:   mov    0x8(%rsi),%r10d
  0x0000797974b0a006:   cmp    0x8(%rax),%r10d
  0x0000797974b0a00a:   jne    0x0000797974586060           ;   {runtime_call Shared Runtime ic_miss_blob}
[Verified Entry Point]
  0x0000797974b0a010:   mov    %eax,-0x14000(%rsp)
  0x0000797974b0a017:   push   %rbp
  0x0000797974b0a018:   sub    $0x30,%rsp
  0x0000797974b0a01c:   cmpl   $0x1,0x20(%r15)
  0x0000797974b0a024:   jne    0x0000797974b0a27a
  0x0000797974b0a02a:   mov    %rsi,%rdx
  0x0000797974b0a02d:   mov    0x1c(%rsi),%ecx
  0x0000797974b0a030:   mov    0x1c(%r12,%rcx,8),%edi       ; implicit exception: dispatches to 0x0000797974b0a24d
  0x0000797974b0a035:   mov    0xc(%r12,%rdi,8),%r10d       ; implicit exception: dispatches to 0x0000797974b0a24d
  0x0000797974b0a03a:   vxorps %xmm0,%xmm0,%xmm0
  0x0000797974b0a03e:   xchg   %ax,%ax
  0x0000797974b0a040:   test   %r10d,%r10d
  0x0000797974b0a043:   jbe    0x0000797974b0a1c0
  0x0000797974b0a049:   vaddss 0x10(%r12,%rdi,8),%xmm0,%xmm0
  0x0000797974b0a050:   mov    0x18(%r12,%rcx,8),%r11d
  0x0000797974b0a055:   mov    0x14(%r12,%rcx,8),%r9d
  0x0000797974b0a05a:   mov    %r9d,%r8d
  0x0000797974b0a05d:   imul   0x10(%r12,%rcx,8),%r8d
  0x0000797974b0a063:   imul   %r11d,%r9d
  0x0000797974b0a067:   imul   %r11d,%r8d
  0x0000797974b0a06b:   lea    (%r12,%rdi,8),%rbp
  0x0000797974b0a06f:   mov    $0x1,%ebx
  0x0000797974b0a074:   mov    $0xf423f,%ecx
  0x0000797974b0a079:   sub    %ebx,%ecx
  0x0000797974b0a07b:   cmp    $0x7d0,%ecx
  0x0000797974b0a081:   mov    $0x7d0,%eax
  0x0000797974b0a086:   cmova  %eax,%ecx
  0x0000797974b0a089:   add    %ebx,%ecx
  0x0000797974b0a08b:   vmovq  %rdx,%xmm1
  0x0000797974b0a090:   vmovd  %edi,%xmm3
  0x0000797974b0a094:   mov    %ebx,%edx
  0x0000797974b0a096:   and    $0xffffffe0,%edx
  0x0000797974b0a099:   mov    %ebx,%esi
  0x0000797974b0a09b:   sub    %edx,%esi
  0x0000797974b0a09d:   mov    %ebx,%edx
  0x0000797974b0a09f:   and    $0xffffffc0,%edx
  0x0000797974b0a0a2:   mov    %ebx,%eax
  0x0000797974b0a0a4:   sub    %edx,%eax
  0x0000797974b0a0a6:   imul   %r8d,%eax
  0x0000797974b0a0aa:   mov    %ebx,%edi
  0x0000797974b0a0ac:   and    $0xfffffff0,%edi
  0x0000797974b0a0af:   mov    %ebx,%edx
  0x0000797974b0a0b1:   sub    %edi,%edx
  0x0000797974b0a0b3:   imul   %r9d,%edx
  0x0000797974b0a0b7:   add    %edx,%eax
  0x0000797974b0a0b9:   movslq %ebx,%rdi
  0x0000797974b0a0bc:   imul   $0xffffffff92492493,%rdi,%rdi
  0x0000797974b0a0c3:   mov    %rdi,%rdx
  0x0000797974b0a0c6:   sar    $0x20,%rdx
  0x0000797974b0a0ca:   mov    %edx,%edx
  0x0000797974b0a0cc:   add    %ebx,%edx
  0x0000797974b0a0ce:   sar    $0x4,%edx
  0x0000797974b0a0d1:   imul   $0x1c,%edx,%edx
  0x0000797974b0a0d4:   mov    %ebx,%r13d
  0x0000797974b0a0d7:   sub    %edx,%r13d
  0x0000797974b0a0da:   imul   %r11d,%r13d
  0x0000797974b0a0de:   add    %r13d,%eax
  0x0000797974b0a0e1:   add    %esi,%eax
  0x0000797974b0a0e3:   cmp    %r10d,%eax
  0x0000797974b0a0e6:   jae    0x0000797974b0a18a
  0x0000797974b0a0ec:   vaddss 0x10(%rbp,%rax,4),%xmm0,%xmm0
  0x0000797974b0a0f2:   add    $0xffffffff92492493,%rdi
  0x0000797974b0a0f9:   sar    $0x20,%rdi
  0x0000797974b0a0fd:   mov    %edi,%eax
  0x0000797974b0a0ff:   mov    %ebx,%r14d
  0x0000797974b0a102:   inc    %r14d
  0x0000797974b0a105:   add    %r14d,%eax
  0x0000797974b0a108:   mov    %r14d,%edi                   ;   {no_reloc}
  0x0000797974b0a10b:   and    $0xffffffe0,%edi
  0x0000797974b0a10e:   mov    %ebx,%edx
  0x0000797974b0a110:   sub    %edi,%edx
  0x0000797974b0a112:   sar    $0x4,%eax
  0x0000797974b0a115:   mov    %r14d,%esi
  0x0000797974b0a118:   and    $0xfffffff0,%esi
  0x0000797974b0a11b:   mov    %ebx,%edi
  0x0000797974b0a11d:   sub    %esi,%edi
  0x0000797974b0a11f:   imul   $0x1c,%eax,%r13d
  0x0000797974b0a123:   mov    %ebx,%eax
  0x0000797974b0a125:   sub    %r13d,%eax
  0x0000797974b0a128:   inc    %edi
  0x0000797974b0a12a:   imul   %r9d,%edi
  0x0000797974b0a12e:   inc    %eax
  0x0000797974b0a130:   imul   %r11d,%eax
  0x0000797974b0a134:   mov    %r14d,%esi
  0x0000797974b0a137:   and    $0xffffffc0,%esi
  0x0000797974b0a13a:   mov    %ebx,%r13d
  0x0000797974b0a13d:   sub    %esi,%r13d
  0x0000797974b0a140:   inc    %r13d
  0x0000797974b0a143:   imul   %r8d,%r13d
  0x0000797974b0a147:   add    %edi,%r13d
  0x0000797974b0a14a:   add    %eax,%r13d
  0x0000797974b0a14d:   add    %edx,%r13d
  0x0000797974b0a150:   mov    %r13d,%eax
  0x0000797974b0a153:   inc    %eax
  0x0000797974b0a155:   cmp    %r10d,%eax
  0x0000797974b0a158:   jae    0x0000797974b0a18d
  0x0000797974b0a15a:   movslq %r13d,%rdi
  0x0000797974b0a15d:   vaddss 0x14(%rbp,%rdi,4),%xmm0,%xmm0
  0x0000797974b0a163:   add    $0x2,%ebx
  0x0000797974b0a166:   cmp    %ecx,%ebx
  0x0000797974b0a168:   jl     0x0000797974b0a094
  0x0000797974b0a16e:   mov    0x30(%r15),%rcx              ; ImmutableOopMap {rbp=Oop xmm1=Oop xmm3=NarrowOop }
                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                            ; - (reexecute) com.mpataki.Tensor4DBenchmark::realTest@53 (line 21)
  0x0000797974b0a172:   test   %eax,(%rcx)                  ;   {poll}
  0x0000797974b0a174:   cmp    $0xf423f,%ebx
  0x0000797974b0a17a:   jge    0x0000797974b0a1c7
  0x0000797974b0a17c:   vmovq  %xmm1,%rdx
  0x0000797974b0a181:   vmovd  %xmm3,%edi
  0x0000797974b0a185:   jmp    0x0000797974b0a074
  0x0000797974b0a18a:   mov    %ebx,%r14d
  0x0000797974b0a18d:   vmovq  %xmm1,%rdx
  0x0000797974b0a192:   vmovd  %xmm3,%edi
  0x0000797974b0a196:   vmovd  %xmm0,%ebp
  0x0000797974b0a19a:   mov    $0xffffffe4,%esi
  0x0000797974b0a19f:   mov    %r14d,(%rsp)
  0x0000797974b0a1a3:   mov    %eax,0x4(%rsp)
  0x0000797974b0a1a7:   mov    %rdx,0x8(%rsp)
  0x0000797974b0a1ac:   mov    %edi,0x10(%rsp)
  0x0000797974b0a1b0:   data16 xchg %ax,%ax
  0x0000797974b0a1b3:   call   0x00007979745b8760           ; ImmutableOopMap {[8]=Oop [16]=NarrowOop }
                                                            ;*faload {reexecute=0 rethrow=0 return_oop=0}
                                                            ; - com.mpataki.Tensor4D::get@44 (line 20)
                                                            ; - com.mpataki.Tensor4DBenchmark::realTest@45 (line 26)
                                                            ;   {runtime_call UncommonTrapBlob}
  0x0000797974b0a1b8:   nopl   0x10002b0(%rax,%rax,1)       ;   {post_call_nop}
  0x0000797974b0a1c0:   xor    %r14d,%r14d
  0x0000797974b0a1c3:   xor    %eax,%eax
  0x0000797974b0a1c5:   jmp    0x0000797974b0a196
  0x0000797974b0a1c7:   mov    %ebx,%edx
  0x0000797974b0a1c9:   and    $0xffffffe0,%edx
  0x0000797974b0a1cc:   mov    %ebx,%edi
  0x0000797974b0a1ce:   sub    %edx,%edi
  0x0000797974b0a1d0:   mov    %ebx,%ecx
  0x0000797974b0a1d2:   and    $0xffffffc0,%ecx
  0x0000797974b0a1d5:   mov    %ebx,%eax
  0x0000797974b0a1d7:   sub    %ecx,%eax
  0x0000797974b0a1d9:   imul   %r8d,%eax
  0x0000797974b0a1dd:   mov    %ebx,%ecx
  0x0000797974b0a1df:   and    $0xfffffff0,%ecx
  0x0000797974b0a1e2:   mov    %ebx,%edx
  0x0000797974b0a1e4:   sub    %ecx,%edx
  0x0000797974b0a1e6:   imul   %r9d,%edx
  0x0000797974b0a1ea:   add    %edx,%eax
  0x0000797974b0a1ec:   movslq %ebx,%rcx
  0x0000797974b0a1ef:   imul   $0xffffffff92492493,%rcx,%rcx
  0x0000797974b0a1f6:   sar    $0x20,%rcx
  0x0000797974b0a1fa:   mov    %ecx,%ecx
  0x0000797974b0a1fc:   add    %ebx,%ecx
  0x0000797974b0a1fe:   sar    $0x4,%ecx
  0x0000797974b0a201:   imul   $0x1c,%ecx,%edx
  0x0000797974b0a204:   mov    %ebx,%ecx
  0x0000797974b0a206:   sub    %edx,%ecx
  0x0000797974b0a208:   imul   %r11d,%ecx
  0x0000797974b0a20c:   add    %ecx,%eax
  0x0000797974b0a20e:   add    %edi,%eax
  0x0000797974b0a210:   cmp    %r10d,%eax
  0x0000797974b0a213:   jae    0x0000797974b0a238
  0x0000797974b0a215:   vaddss 0x10(%rbp,%rax,4),%xmm0,%xmm0
  0x0000797974b0a21b:   inc    %ebx
  0x0000797974b0a21d:   data16 xchg %ax,%ax
  0x0000797974b0a220:   cmp    $0xf4240,%ebx
  0x0000797974b0a226:   jl     0x0000797974b0a1c7
  0x0000797974b0a228:   add    $0x30,%rsp
  0x0000797974b0a22c:   pop    %rbp
  0x0000797974b0a22d:   cmp    0x28(%r15),%rsp              ;   {poll_return}
  0x0000797974b0a231:   ja     0x0000797974b0a264
  0x0000797974b0a237:   ret
  0x0000797974b0a238:   vmovd  %xmm0,%ebp
  0x0000797974b0a23c:   mov    %ebx,%r14d
  0x0000797974b0a23f:   vmovq  %xmm1,%rdx
  0x0000797974b0a244:   vmovd  %xmm3,%edi
  0x0000797974b0a248:   jmp    0x0000797974b0a19a
  0x0000797974b0a24d:   mov    $0xffffff76,%esi
  0x0000797974b0a252:   mov    %rdx,%rbp
  0x0000797974b0a255:   xchg   %ax,%ax
  0x0000797974b0a257:   call   0x00007979745b8760           ; ImmutableOopMap {rbp=Oop }
                                                            ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                            ; - (reexecute) com.mpataki.Tensor4DBenchmark::realTest@7 (line 21)
                                                            ;   {runtime_call UncommonTrapBlob}
  0x0000797974b0a25c:   nopl   0x2000354(%rax,%rax,1)       ;   {post_call_nop}
  0x0000797974b0a264:   movabs $0x797974b0a22d,%r10         ;   {internal_word}
  0x0000797974b0a26e:   mov    %r10,0x460(%r15)
  0x0000797974b0a275:   jmp    0x000079797458d8e0           ;   {runtime_call SafepointBlob}
  0x0000797974b0a27a:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
  0x0000797974b0a27f:   jmp    0x0000797974b0a02a
  0x0000797974b0a284:   hlt
  0x0000797974b0a285:   hlt
  0x0000797974b0a286:   hlt
  0x0000797974b0a287:   hlt
[Exception Handler]
  0x0000797974b0a288:   jmp    0x00007979745b8a60           ;   {no_reloc}
[Deopt Handler Code]
  0x0000797974b0a28d:   call   0x0000797974b0a292
  0x0000797974b0a292:   subq   $0x5,(%rsp)
  0x0000797974b0a297:   jmp    0x000079797458ce80           ;   {runtime_call DeoptimizationBlob}
  0x0000797974b0a29c:   hlt
  0x0000797974b0a29d:   hlt
  0x0000797974b0a29e:   hlt
  0x0000797974b0a29f:   hlt
--------------------------------------------------------------------------------
[/Disassembly]
283.628 ops/s
# Warmup Iteration   2: 285.500 ops/s
Iteration   1: 288.985 ops/s
Iteration   2: 289.106 ops/s
------------------------------------------------------------------------
com.mpataki.Tensor4DBenchmark::realTest()F
  interpreter_invocation_count:           7
  invocation_counter:                     7
  backedge_counter:                 1498941
  decompile_count:                        1
  mdo size: 480 bytes

   0 fconst_0
   1 fstore_1
   2 iconst_0
   3 istore_2
   4 iload_2
   5 ldc 1000000
   7 if_icmpge 56
  0    bci: 7    BranchData         trap(intrinsic_or_type_checked_inlining recompiled) taken(2) displacement(104)
                                    not taken(1427455)
  10 iload_2
  11 bipush 64
  13 irem
  14 istore_3
  15 iload_2
  16 bipush 16
  18 irem
  19 istore #4
  21 iload_2
  22 bipush 28
  24 irem
  25 istore #5
  27 iload_2
  28 bipush 32
  30 irem
  31 istore #6
  33 fload_1
  34 fast_aaccess_0
  35 fast_agetfield 27 <com/mpataki/Tensor4DBenchmark.tensor:Lcom/mpataki/Tensor4D;> 
  38 iload_3
  39 fast_iload #4
  41 fast_iload2 #5
  43 fast_iload #6
  45 invokevirtual 32 <com/mpataki/Tensor4D.get(IIII)F> 
  32   bci: 45   VirtualCallData    count(0) entries(1)
                                    'com/mpataki/Tensor4D'(1427455 1.00)
  48 fadd
  49 fstore_1
  50 iinc #2 1
  53 goto 4
  80   bci: 53   JumpData           taken(1427455) displacement(-80)
  56 fload_1
  57 freturn
------------------------------------------------------------------------
Total MDO size: 480 bytes


Result "com.mpataki.Tensor4DBenchmark.accessTest":
  289.045 ops/s


# Run complete. Total time: 00:01:21

REMEMBER: The numbers below are just data. To gain reusable insights, you need to follow up on
why the numbers are the way they are. Use profilers (see -prof, -lprof), design factorial
experiments, perform baseline and negative tests that provide experimental control, make sure
the benchmarking environment is safe on JVM/OS/HW level, ask for reviews from the domain experts.
Do not assume the numbers tell you what you want them to tell.

NOTE: Current JVM experimentally supports Compiler Blackholes, and they are in use. Please exercise
extra caution when trusting the results, look into the generated code to check the benchmark still
works, and factor in a small probability of new VM bugs. Additionally, while comparisons between
different JVMs are already problematic, the performance difference caused by different Blackhole
modes can be very significant. Please make sure you use the consistent Blackhole mode for comparisons.

Benchmark                      Mode  Cnt    Score   Error  Units
Tensor4DBenchmark.accessTest  thrpt    2  289.045          ops/s
