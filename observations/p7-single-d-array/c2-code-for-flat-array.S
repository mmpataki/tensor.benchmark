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