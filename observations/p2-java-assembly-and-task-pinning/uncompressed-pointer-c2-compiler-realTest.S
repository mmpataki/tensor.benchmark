============================= C2-compiled nmethod ==============================
----------------------------------- Assembly -----------------------------------

Compiled method (c2) 482  961       4       com.mpataki.Tensor4DBenchmark::realTest (59 bytes)
 total in heap  [0x000076c734b0e108,0x000076c734b0e610] = 1288
 relocation     [0x000076c734b0e1e0,0x000076c734b0e218] = 56
 main code      [0x000076c734b0e220,0x000076c734b0e5e8] = 968
 stub code      [0x000076c734b0e5e8,0x000076c734b0e600] = 24
 oops           [0x000076c734b0e600,0x000076c734b0e608] = 8
 metadata       [0x000076c734b0e608,0x000076c734b0e610] = 8
 immutable data [0x000076c5e0006c00,0x000076c5e0006de8] = 488
 dependencies   [0x000076c5e0006c00,0x000076c5e0006c08] = 8
 nul chk table  [0x000076c5e0006c08,0x000076c5e0006c60] = 88
 scopes pcs     [0x000076c5e0006c60,0x000076c5e0006d10] = 176
 scopes data    [0x000076c5e0006d10,0x000076c5e0006de8] = 216

[Disassembly]
--------------------------------------------------------------------------------
[Constant Pool (empty)]

--------------------------------------------------------------------------------

add    %al,(%rax)
[Instructions begin]
  0x000076c734b0e220:   xchg   %ax,%ax
[Entry Point]
  # {method} {0x000076c610961a10} 'realTest' '()F' in 'com/mpataki/Tensor4DBenchmark'
  #           [sp+0x50]  (sp of caller)
  0x000076c734b0e222:   mov    0x8(%rsi),%r10d
  0x000076c734b0e226:   cmp    0x8(%rax),%r10d
  0x000076c734b0e22a:   jne    0x000076c734585060           ;   {runtime_call Shared Runtime ic_miss_blob}
[Verified Entry Point]
  0x000076c734b0e230:   mov    %eax,-0x14000(%rsp)
  0x000076c734b0e237:   push   %rbp
  0x000076c734b0e238:   sub    $0x40,%rsp
  0x000076c734b0e23c:   cmpl   $0x0,0x20(%r15)
  0x000076c734b0e244:   jne    0x000076c734b0e5de
  0x000076c734b0e24a:   mov    %rsi,%r14
  0x000076c734b0e24d:   mov    0x20(%rsi),%r13
  0x000076c734b0e251:   mov    0xc(%r13),%r10d              ; implicit exception: dispatches to 0x000076c734b0e568
  0x000076c734b0e255:   xor    %edi,%edi
  0x000076c734b0e257:   vxorps %xmm0,%xmm0,%xmm0
  0x000076c734b0e25b:   nopl   0x0(%rax,%rax,1)
  0x000076c734b0e260:   test   %r10d,%r10d
  0x000076c734b0e263:   jbe    0x000076c734b0e47c
  0x000076c734b0e269:   mov    0x10(%r13),%rbp
  0x000076c734b0e26d:   mov    0xc(%rbp),%r8d               ; implicit exception: dispatches to 0x000076c734b0e580
  0x000076c734b0e271:   test   %r8d,%r8d
  0x000076c734b0e274:   jbe    0x000076c734b0e4b8
  0x000076c734b0e27a:   mov    0x10(%rbp),%r9
  0x000076c734b0e27e:   xchg   %ax,%ax
  0x000076c734b0e280:   mov    0xc(%r9),%r8d                ; implicit exception: dispatches to 0x000076c734b0e598
  0x000076c734b0e284:   test   %r8d,%r8d
  0x000076c734b0e287:   jbe    0x000076c734b0e4ec
  0x000076c734b0e28d:   mov    0x10(%r9),%r9
  0x000076c734b0e291:   mov    0xc(%r9),%r8d                ; implicit exception: dispatches to 0x000076c734b0e5b0
  0x000076c734b0e295:   test   %r8d,%r8d
  0x000076c734b0e298:   jbe    0x000076c734b0e51c
  0x000076c734b0e29e:   vaddss 0x10(%r9),%xmm0,%xmm0
  0x000076c734b0e2a4:   mov    $0x1,%edi
  0x000076c734b0e2a9:   mov    $0xf4240,%r8d
  0x000076c734b0e2af:   sub    %edi,%r8d
  0x000076c734b0e2b2:   cmp    $0x3e8,%r8d
  0x000076c734b0e2b9:   mov    $0x3e8,%r11d
  0x000076c734b0e2bf:   cmova  %r11d,%r8d
  0x000076c734b0e2c3:   add    %edi,%r8d
  0x000076c734b0e2c6:   data16 nopw 0x0(%rax,%rax,1)
  0x000076c734b0e2d0:   mov    %edi,%r11d
  0x000076c734b0e2d3:   and    $0xffffffe0,%r11d
  0x000076c734b0e2d7:   mov    %edi,%edx
  0x000076c734b0e2d9:   sub    %r11d,%edx
  0x000076c734b0e2dc:   mov    %edi,%r12d
  0x000076c734b0e2df:   and    $0xffffffc0,%r12d
  0x000076c734b0e2e3:   mov    %edi,%ebp
  0x000076c734b0e2e5:   sub    %r12d,%ebp
  0x000076c734b0e2e8:   movslq %edi,%rbx
  0x000076c734b0e2eb:   mov    %edi,%r9d
  0x000076c734b0e2ee:   and    $0xfffffff0,%r9d
  0x000076c734b0e2f2:   mov    %edi,%ecx
  0x000076c734b0e2f4:   sub    %r9d,%ecx
  0x000076c734b0e2f7:   imul   $0xffffffff92492493,%rbx,%rsi
  0x000076c734b0e2fe:   sar    $0x20,%rsi
  0x000076c734b0e302:   mov    %esi,%esi
  0x000076c734b0e304:   add    %edi,%esi
  0x000076c734b0e306:   sar    $0x4,%esi
  0x000076c734b0e309:   imul   $0x1c,%esi,%esi
  0x000076c734b0e30c:   mov    %edi,%eax
  0x000076c734b0e30e:   sub    %esi,%eax
  0x000076c734b0e310:   cmp    %r10d,%ebp
  0x000076c734b0e313:   jae    0x000076c734b0e484
  0x000076c734b0e319:   movslq %r12d,%r12
  0x000076c734b0e31c:   mov    %rbx,%rbp
  0x000076c734b0e31f:   sub    %r12,%rbp
  0x000076c734b0e322:   mov    0x10(%r13,%rbp,8),%rbp
  0x000076c734b0e327:   mov    0xc(%rbp),%r12d              ; implicit exception: dispatches to 0x000076c734b0e582
                                                            ;   {no_reloc}
  0x000076c734b0e32b:   cmp    %r12d,%ecx
  0x000076c734b0e32e:   jae    0x000076c734b0e4be
  0x000076c734b0e334:   movslq %r9d,%r9
  0x000076c734b0e337:   mov    %rbx,%r12
  0x000076c734b0e33a:   sub    %r9,%r12
  0x000076c734b0e33d:   mov    0x10(%rbp,%r12,8),%r9
  0x000076c734b0e342:   mov    0xc(%r9),%r12d               ; implicit exception: dispatches to 0x000076c734b0e59a
  0x000076c734b0e346:   cmp    %r12d,%eax
  0x000076c734b0e349:   jae    0x000076c734b0e4f0
  0x000076c734b0e34f:   movslq %esi,%r12
  0x000076c734b0e352:   mov    %rbx,%rcx
  0x000076c734b0e355:   sub    %r12,%rcx
  0x000076c734b0e358:   mov    0x10(%r9,%rcx,8),%r9
  0x000076c734b0e35d:   data16 xchg %ax,%ax
  0x000076c734b0e360:   mov    0xc(%r9),%r12d               ; implicit exception: dispatches to 0x000076c734b0e5b2
  0x000076c734b0e364:   cmp    %r12d,%edx
  0x000076c734b0e367:   jae    0x000076c734b0e51e
  0x000076c734b0e36d:   movslq %r11d,%r11
  0x000076c734b0e370:   sub    %r11,%rbx
  0x000076c734b0e373:   vaddss 0x10(%r9,%rbx,4),%xmm0,%xmm0
  0x000076c734b0e37a:   inc    %edi
  0x000076c734b0e37c:   nopl   0x0(%rax)
  0x000076c734b0e380:   cmp    %r8d,%edi
  0x000076c734b0e383:   jl     0x000076c734b0e2d0
  0x000076c734b0e389:   mov    0x30(%r15),%r8               ; ImmutableOopMap {r13=Oop r14=Oop }
                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                            ; - (reexecute) com.mpataki.Tensor4DBenchmark::realTest@54 (line 20)
  0x000076c734b0e38d:   test   %eax,(%r8)                   ;   {poll}
  0x000076c734b0e390:   cmp    $0xf4240,%edi
  0x000076c734b0e396:   jl     0x000076c734b0e2a9
  0x000076c734b0e39c:   nopl   0x0(%rax)
  0x000076c734b0e3a0:   cmp    $0xf4240,%edi
  0x000076c734b0e3a6:   jge    0x000076c734b0e46c
  0x000076c734b0e3ac:   mov    %edi,%r9d
  0x000076c734b0e3af:   and    $0xfffffff0,%r9d
  0x000076c734b0e3b3:   mov    %edi,%ecx
  0x000076c734b0e3b5:   sub    %r9d,%ecx
  0x000076c734b0e3b8:   mov    %edi,%r11d
  0x000076c734b0e3bb:   and    $0xffffffe0,%r11d
  0x000076c734b0e3bf:   mov    %edi,%edx
  0x000076c734b0e3c1:   sub    %r11d,%edx
  0x000076c734b0e3c4:   movslq %edi,%r12
  0x000076c734b0e3c7:   mov    %edi,%r8d
  0x000076c734b0e3ca:   and    $0xffffffc0,%r8d
  0x000076c734b0e3ce:   mov    %edi,%ebp
  0x000076c734b0e3d0:   sub    %r8d,%ebp
  0x000076c734b0e3d3:   imul   $0xffffffff92492493,%r12,%rbx
  0x000076c734b0e3da:   sar    $0x20,%rbx
  0x000076c734b0e3de:   mov    %ebx,%esi
  0x000076c734b0e3e0:   add    %edi,%esi
  0x000076c734b0e3e2:   sar    $0x4,%esi
  0x000076c734b0e3e5:   imul   $0x1c,%esi,%ebx
  0x000076c734b0e3e8:   mov    %edi,%eax
  0x000076c734b0e3ea:   sub    %ebx,%eax
  0x000076c734b0e3ec:   cmp    %r10d,%ebp
  0x000076c734b0e3ef:   jae    0x000076c734b0e548
  0x000076c734b0e3f5:   movslq %r8d,%r8
  0x000076c734b0e3f8:   mov    %r12,%rsi
  0x000076c734b0e3fb:   sub    %r8,%rsi
  0x000076c734b0e3fe:   mov    0x10(%r13,%rsi,8),%rbp
  0x000076c734b0e403:   mov    0xc(%rbp),%r8d               ; implicit exception: dispatches to 0x000076c734b0e582
  0x000076c734b0e407:   cmp    %r8d,%ecx
  0x000076c734b0e40a:   jae    0x000076c734b0e552
  0x000076c734b0e410:   movslq %r9d,%r8
  0x000076c734b0e413:   mov    %r12,%r9
  0x000076c734b0e416:   sub    %r8,%r9
  0x000076c734b0e419:   mov    0x10(%rbp,%r9,8),%r9
  0x000076c734b0e41e:   xchg   %ax,%ax
  0x000076c734b0e420:   mov    0xc(%r9),%r8d                ; implicit exception: dispatches to 0x000076c734b0e59a
  0x000076c734b0e424:   cmp    %r8d,%eax
  0x000076c734b0e427:   jae    0x000076c734b0e55c
  0x000076c734b0e42d:   movslq %ebx,%r8
  0x000076c734b0e430:   mov    %r12,%rcx
  0x000076c734b0e433:   sub    %r8,%rcx
  0x000076c734b0e436:   mov    0x10(%r9,%rcx,8),%r9
  0x000076c734b0e43b:   mov    0xc(%r9),%r8d                ; implicit exception: dispatches to 0x000076c734b0e5b2
  0x000076c734b0e43f:   nop
  0x000076c734b0e440:   cmp    %r8d,%edx
  0x000076c734b0e443:   jae    0x000076c734b0e562
  0x000076c734b0e449:   movslq %r11d,%r11
  0x000076c734b0e44c:   sub    %r11,%r12
  0x000076c734b0e44f:   vaddss 0x10(%r9,%r12,4),%xmm0,%xmm0
  0x000076c734b0e456:   inc    %edi
  0x000076c734b0e458:   nopl   0x0(%rax,%rax,1)
  0x000076c734b0e460:   cmp    $0xf4240,%edi
  0x000076c734b0e466:   jl     0x000076c734b0e3ac
  0x000076c734b0e46c:   add    $0x40,%rsp
  0x000076c734b0e470:   pop    %rbp
  0x000076c734b0e471:   cmp    0x28(%r15),%rsp              ;   {poll_return}
  0x000076c734b0e475:   ja     0x000076c734b0e5c8
  0x000076c734b0e47b:   ret
  0x000076c734b0e47c:   xor    %ecx,%ecx
  0x000076c734b0e47e:   xor    %eax,%eax
  0x000076c734b0e480:   xor    %edx,%edx
  0x000076c734b0e482:   xor    %ebp,%ebp
  0x000076c734b0e484:   vmovss %xmm0,(%rsp)
  0x000076c734b0e489:   mov    $0xffffffe4,%esi
  0x000076c734b0e48e:   mov    %edi,0x4(%rsp)
  0x000076c734b0e492:   mov    %ecx,0x8(%rsp)
  0x000076c734b0e496:   mov    %eax,0xc(%rsp)
  0x000076c734b0e49a:   mov    %edx,0x10(%rsp)
  0x000076c734b0e49e:   mov    %r13,0x18(%rsp)
  0x000076c734b0e4a3:   mov    %r14,0x20(%rsp)
  0x000076c734b0e4a8:   data16 xchg %ax,%ax
  0x000076c734b0e4ab:   call   0x000076c73464a8e0           ; ImmutableOopMap {[24]=Oop [32]=Oop }
                                                            ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                            ; - com.mpataki.Tensor4DBenchmark::realTest@39 (line 25)
                                                            ;   {runtime_call UncommonTrapBlob}
  0x000076c734b0e4b0:   nopl   0x10003a8(%rax,%rax,1)       ;   {post_call_nop}
  0x000076c734b0e4b8:   xor    %eax,%eax
  0x000076c734b0e4ba:   xor    %edx,%edx
  0x000076c734b0e4bc:   xor    %ecx,%ecx
  0x000076c734b0e4be:   vmovss %xmm0,(%rsp)
  0x000076c734b0e4c3:   mov    $0xffffffe4,%esi
  0x000076c734b0e4c8:   mov    %edi,0x4(%rsp)
  0x000076c734b0e4cc:   mov    %eax,0x8(%rsp)
  0x000076c734b0e4d0:   mov    %edx,0xc(%rsp)
  0x000076c734b0e4d4:   mov    %ecx,0x10(%rsp)
  0x000076c734b0e4d8:   mov    %r14,0x18(%rsp)
  0x000076c734b0e4dd:   xchg   %ax,%ax
  0x000076c734b0e4df:   call   0x000076c73464a8e0           ; ImmutableOopMap {rbp=Oop [24]=Oop }
                                                            ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                            ; - com.mpataki.Tensor4DBenchmark::realTest@42 (line 25)
                                                            ;   {runtime_call UncommonTrapBlob}
  0x000076c734b0e4e4:   nopl   0x20003dc(%rax,%rax,1)       ;   {post_call_nop}
  0x000076c734b0e4ec:   xor    %edx,%edx
  0x000076c734b0e4ee:   xor    %eax,%eax
  0x000076c734b0e4f0:   vmovd  %xmm0,%ebp
  0x000076c734b0e4f4:   mov    $0xffffffe4,%esi
  0x000076c734b0e4f9:   mov    %edi,(%rsp)
  0x000076c734b0e4fc:   mov    %edx,0x4(%rsp)
  0x000076c734b0e500:   mov    %r9,0x8(%rsp)
  0x000076c734b0e505:   mov    %eax,0x10(%rsp)
  0x000076c734b0e509:   mov    %r14,0x18(%rsp)
  0x000076c734b0e50e:   nop
  0x000076c734b0e50f:   call   0x000076c73464a8e0           ; ImmutableOopMap {[8]=Oop [24]=Oop }
                                                            ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                            ; - com.mpataki.Tensor4DBenchmark::realTest@45 (line 25)
                                                            ;   {runtime_call UncommonTrapBlob}
  0x000076c734b0e514:   nopl   0x300040c(%rax,%rax,1)       ;   {post_call_nop}
  0x000076c734b0e51c:   xor    %edx,%edx
  0x000076c734b0e51e:   vmovd  %xmm0,%ebp
  0x000076c734b0e522:   mov    $0xffffffe4,%esi
  0x000076c734b0e527:   mov    %edi,(%rsp)
  0x000076c734b0e52a:   mov    %r9,0x8(%rsp)
  0x000076c734b0e52f:   mov    %edx,0x4(%rsp)
  0x000076c734b0e533:   mov    %r14,0x10(%rsp)
  0x000076c734b0e538:   data16 xchg %ax,%ax
  0x000076c734b0e53b:   call   0x000076c73464a8e0           ; ImmutableOopMap {[8]=Oop [16]=Oop }
                                                            ;*faload {reexecute=0 rethrow=0 return_oop=0}
                                                            ; - com.mpataki.Tensor4DBenchmark::realTest@48 (line 25)
                                                            ;   {runtime_call UncommonTrapBlob}
  0x000076c734b0e540:   nopl   0x4000438(%rax,%rax,1)       ;   {post_call_nop}
  0x000076c734b0e548:   vmovss %xmm0,(%rsp)
  0x000076c734b0e54d:   jmp    0x000076c734b0e489
  0x000076c734b0e552:   vmovss %xmm0,(%rsp)
  0x000076c734b0e557:   jmp    0x000076c734b0e4c3
  0x000076c734b0e55c:   vmovd  %xmm0,%ebp
  0x000076c734b0e560:   jmp    0x000076c734b0e4f4
  0x000076c734b0e562:   vmovd  %xmm0,%ebp
  0x000076c734b0e566:   jmp    0x000076c734b0e522
  0x000076c734b0e568:   mov    $0xffffff76,%esi
  0x000076c734b0e56d:   mov    %r14,%rbp
  0x000076c734b0e570:   data16 xchg %ax,%ax
  0x000076c734b0e573:   call   0x000076c73464a8e0           ; ImmutableOopMap {rbp=Oop }
                                                            ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                            ; - (reexecute) com.mpataki.Tensor4DBenchmark::realTest@7 (line 20)
                                                            ;   {runtime_call UncommonTrapBlob}
  0x000076c734b0e578:   nopl   0x5000470(%rax,%rax,1)       ;   {post_call_nop}
  0x000076c734b0e580:   xor    %ecx,%ecx
  0x000076c734b0e582:   mov    $0xfffffff6,%esi
  0x000076c734b0e587:   mov    %ecx,%ebp
  0x000076c734b0e589:   xchg   %ax,%ax
  0x000076c734b0e58b:   call   0x000076c73464a8e0           ; ImmutableOopMap {}
                                                            ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                            ; - com.mpataki.Tensor4DBenchmark::realTest@42 (line 25)
                                                            ;   {runtime_call UncommonTrapBlob}
  0x000076c734b0e590:   nopl   0x6000488(%rax,%rax,1)       ;   {post_call_nop}
  0x000076c734b0e598:   xor    %eax,%eax
  0x000076c734b0e59a:   mov    $0xfffffff6,%esi
  0x000076c734b0e59f:   mov    %eax,%ebp
  0x000076c734b0e5a1:   xchg   %ax,%ax
  0x000076c734b0e5a3:   call   0x000076c73464a8e0           ; ImmutableOopMap {}
                                                            ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                            ; - com.mpataki.Tensor4DBenchmark::realTest@45 (line 25)
                                                            ;   {runtime_call UncommonTrapBlob}
  0x000076c734b0e5a8:   nopl   0x70004a0(%rax,%rax,1)       ;   {post_call_nop}
  0x000076c734b0e5b0:   xor    %edx,%edx
  0x000076c734b0e5b2:   mov    $0xfffffff6,%esi
  0x000076c734b0e5b7:   mov    %edx,%ebp
  0x000076c734b0e5b9:   xchg   %ax,%ax
  0x000076c734b0e5bb:   call   0x000076c73464a8e0           ; ImmutableOopMap {}
                                                            ;*faload {reexecute=0 rethrow=0 return_oop=0}
                                                            ; - com.mpataki.Tensor4DBenchmark::realTest@48 (line 25)
                                                            ;   {runtime_call UncommonTrapBlob}
  0x000076c734b0e5c0:   nopl   0x80004b8(%rax,%rax,1)       ;   {post_call_nop}
  0x000076c734b0e5c8:   movabs $0x76c734b0e471,%r10         ;   {internal_word}
  0x000076c734b0e5d2:   mov    %r10,0x460(%r15)
  0x000076c734b0e5d9:   jmp    0x000076c73458c8e0           ;   {runtime_call SafepointBlob}
  0x000076c734b0e5de:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
  0x000076c734b0e5e3:   jmp    0x000076c734b0e24a
[Exception Handler]
  0x000076c734b0e5e8:   jmp    0x000076c73464abe0           ;   {no_reloc}
[Deopt Handler Code]
  0x000076c734b0e5ed:   call   0x000076c734b0e5f2
  0x000076c734b0e5f2:   subq   $0x5,(%rsp)
  0x000076c734b0e5f7:   jmp    0x000076c73458be80           ;   {runtime_call DeoptimizationBlob}
  0x000076c734b0e5fc:   hlt
  0x000076c734b0e5fd:   hlt
  0x000076c734b0e5fe:   hlt
  0x000076c734b0e5ff:   hlt
--------------------------------------------------------------------------------
[/Disassembly]
