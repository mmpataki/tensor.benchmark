============================= C2-compiled nmethod ==============================
----------------------------------- Assembly -----------------------------------

Compiled method (c2) 487  950       4       com.mpataki.Tensor4DBenchmark::realTest (59 bytes)
 total in heap  [0x00007a9a54b0da08,0x00007a9a54b0dfb0] = 1448
 relocation     [0x00007a9a54b0dae0,0x00007a9a54b0db18] = 56
 main code      [0x00007a9a54b0db20,0x00007a9a54b0df88] = 1128
 stub code      [0x00007a9a54b0df88,0x00007a9a54b0dfa0] = 24
 oops           [0x00007a9a54b0dfa0,0x00007a9a54b0dfa8] = 8
 metadata       [0x00007a9a54b0dfa8,0x00007a9a54b0dfb0] = 8
 immutable data [0x00007a9a0832f220,0x00007a9a0832f408] = 488
 dependencies   [0x00007a9a0832f220,0x00007a9a0832f228] = 8
 nul chk table  [0x00007a9a0832f228,0x00007a9a0832f280] = 88
 scopes pcs     [0x00007a9a0832f280,0x00007a9a0832f330] = 176
 scopes data    [0x00007a9a0832f330,0x00007a9a0832f408] = 216

[Disassembly]
--------------------------------------------------------------------------------
[Constant Pool (empty)]

--------------------------------------------------------------------------------

add    %al,(%rax)
[Instructions begin]
  0x00007a9a54b0db20:   xchg   %ax,%ax
[Entry Point]
  # {method} {0x00007a9a2895de30} 'realTest' '()F' in 'com/mpataki/Tensor4DBenchmark'
  #           [sp+0x40]  (sp of caller)
  0x00007a9a54b0db22:   mov    0x8(%rsi),%r10d
  0x00007a9a54b0db26:   cmp    0x8(%rax),%r10d
  0x00007a9a54b0db2a:   jne    0x00007a9a54585060           ;   {runtime_call Shared Runtime ic_miss_blob}
[Verified Entry Point]
  0x00007a9a54b0db30:   mov    %eax,-0x14000(%rsp)
  0x00007a9a54b0db37:   push   %rbp
  0x00007a9a54b0db38:   sub    $0x30,%rsp
  0x00007a9a54b0db3c:   cmpl   $0x0,0x20(%r15)
  0x00007a9a54b0db44:   jne    0x00007a9a54b0df7a
  0x00007a9a54b0db4a:   mov    %rsi,%r8
  0x00007a9a54b0db4d:   mov    0x1c(%rsi),%r11d
  0x00007a9a54b0db51:   mov    0xc(%r12,%r11,8),%r13d       ; implicit exception: dispatches to 0x00007a9a54b0df05
  0x00007a9a54b0db56:   xor    %r9d,%r9d
  0x00007a9a54b0db59:   vxorps %xmm0,%xmm0,%xmm0
  0x00007a9a54b0db5d:   data16 xchg %ax,%ax
  0x00007a9a54b0db60:   test   %r13d,%r13d
  0x00007a9a54b0db63:   jbe    0x00007a9a54b0dda8
  0x00007a9a54b0db69:   mov    0x10(%r12,%r11,8),%r10d
  0x00007a9a54b0db6e:   mov    0xc(%r12,%r10,8),%ebx        ; implicit exception: dispatches to 0x00007a9a54b0df1c
  0x00007a9a54b0db73:   test   %ebx,%ebx
  0x00007a9a54b0db75:   jbe    0x00007a9a54b0ddb6
  0x00007a9a54b0db7b:   mov    0x10(%r12,%r10,8),%ecx
  0x00007a9a54b0db80:   mov    0xc(%r12,%rcx,8),%r10d       ; implicit exception: dispatches to 0x00007a9a54b0df34
  0x00007a9a54b0db85:   test   %r10d,%r10d
  0x00007a9a54b0db88:   jbe    0x00007a9a54b0ddc5
  0x00007a9a54b0db8e:   mov    0x10(%r12,%rcx,8),%r10d
  0x00007a9a54b0db93:   mov    0xc(%r12,%r10,8),%ebx        ; implicit exception: dispatches to 0x00007a9a54b0df4c
  0x00007a9a54b0db98:   nopl   0x0(%rax,%rax,1)
  0x00007a9a54b0dba0:   test   %ebx,%ebx
  0x00007a9a54b0dba2:   jbe    0x00007a9a54b0ddd2
  0x00007a9a54b0dba8:   vaddss 0x10(%r12,%r10,8),%xmm0,%xmm0
  0x00007a9a54b0dbaf:   lea    (%r12,%r11,8),%rax
  0x00007a9a54b0dbb3:   mov    $0x1,%r9d
  0x00007a9a54b0dbb9:   mov    $0xf4240,%r14d
  0x00007a9a54b0dbbf:   sub    %r9d,%r14d
  0x00007a9a54b0dbc2:   cmp    $0x3e8,%r14d
  0x00007a9a54b0dbc9:   mov    $0x3e8,%ecx
  0x00007a9a54b0dbce:   cmova  %ecx,%r14d
  0x00007a9a54b0dbd2:   add    %r9d,%r14d
  0x00007a9a54b0dbd5:   vmovq  %r8,%xmm1
  0x00007a9a54b0dbda:   vmovd  %r11d,%xmm3
  0x00007a9a54b0dbdf:   nop
  0x00007a9a54b0dbe0:   mov    %r9d,%esi
  0x00007a9a54b0dbe3:   and    $0xffffffe0,%esi
  0x00007a9a54b0dbe6:   mov    %r9d,%ecx
  0x00007a9a54b0dbe9:   sub    %esi,%ecx
  0x00007a9a54b0dbeb:   mov    %r9d,%r11d
  0x00007a9a54b0dbee:   and    $0xffffffc0,%r11d
  0x00007a9a54b0dbf2:   mov    %r9d,%r10d
  0x00007a9a54b0dbf5:   sub    %r11d,%r10d
  0x00007a9a54b0dbf8:   movslq %r9d,%r8
  0x00007a9a54b0dbfb:   mov    %r9d,%edx
  0x00007a9a54b0dbfe:   and    $0xfffffff0,%edx
  0x00007a9a54b0dc01:   mov    %r9d,%edi
  0x00007a9a54b0dc04:   sub    %edx,%edi
  0x00007a9a54b0dc06:   imul   $0xffffffff92492493,%r8,%rbx
  0x00007a9a54b0dc0d:   sar    $0x20,%rbx
  0x00007a9a54b0dc11:   mov    %ebx,%ebp
  0x00007a9a54b0dc13:   add    %r9d,%ebp
  0x00007a9a54b0dc16:   sar    $0x4,%ebp
  0x00007a9a54b0dc19:   imul   $0x1c,%ebp,%ebp
  0x00007a9a54b0dc1c:   mov    %r9d,%ebx
  0x00007a9a54b0dc1f:   sub    %ebp,%ebx
  0x00007a9a54b0dc21:   cmp    %r13d,%r10d
  0x00007a9a54b0dc24:   jae    0x00007a9a54b0dccc           ;   {no_reloc}
  0x00007a9a54b0dc2a:   movslq %r11d,%r10
  0x00007a9a54b0dc2d:   mov    %r8,%r11
  0x00007a9a54b0dc30:   sub    %r10,%r11
  0x00007a9a54b0dc33:   mov    0x10(%rax,%r11,4),%r10d
  0x00007a9a54b0dc38:   mov    0xc(%r12,%r10,8),%r11d       ; implicit exception: dispatches to 0x00007a9a54b0df1e
  0x00007a9a54b0dc3d:   shl    $0x3,%r10
  0x00007a9a54b0dc41:   cmp    %r11d,%edi
  0x00007a9a54b0dc44:   jae    0x00007a9a54b0dd0c
  0x00007a9a54b0dc4a:   movslq %edx,%r11
  0x00007a9a54b0dc4d:   mov    %r8,%rdi
  0x00007a9a54b0dc50:   sub    %r11,%rdi
  0x00007a9a54b0dc53:   mov    0x10(%r10,%rdi,4),%r10d
  0x00007a9a54b0dc58:   mov    0xc(%r12,%r10,8),%r11d       ; implicit exception: dispatches to 0x00007a9a54b0df36
  0x00007a9a54b0dc5d:   shl    $0x3,%r10
  0x00007a9a54b0dc61:   cmp    %r11d,%ebx
  0x00007a9a54b0dc64:   jae    0x00007a9a54b0dd44
  0x00007a9a54b0dc6a:   movslq %ebp,%r11
  0x00007a9a54b0dc6d:   mov    %r8,%rbx
  0x00007a9a54b0dc70:   sub    %r11,%rbx
  0x00007a9a54b0dc73:   mov    0x10(%r10,%rbx,4),%ebx
  0x00007a9a54b0dc78:   mov    0xc(%r12,%rbx,8),%r11d       ; implicit exception: dispatches to 0x00007a9a54b0df4e
  0x00007a9a54b0dc7d:   lea    (%r12,%rbx,8),%r10
  0x00007a9a54b0dc81:   cmp    %r11d,%ecx
  0x00007a9a54b0dc84:   jae    0x00007a9a54b0dd78
  0x00007a9a54b0dc8a:   movslq %esi,%r11
  0x00007a9a54b0dc8d:   sub    %r11,%r8
  0x00007a9a54b0dc90:   vaddss 0x10(%r10,%r8,4),%xmm0,%xmm0
  0x00007a9a54b0dc97:   inc    %r9d
  0x00007a9a54b0dc9a:   nopw   0x0(%rax,%rax,1)
  0x00007a9a54b0dca0:   cmp    %r14d,%r9d
  0x00007a9a54b0dca3:   jl     0x00007a9a54b0dbe0
  0x00007a9a54b0dca9:   mov    0x30(%r15),%r10              ; ImmutableOopMap {rax=Oop xmm1=Oop xmm3=NarrowOop }
                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                            ; - (reexecute) com.mpataki.Tensor4DBenchmark::realTest@54 (line 20)
  0x00007a9a54b0dcad:   test   %eax,(%r10)                  ;   {poll}
  0x00007a9a54b0dcb0:   cmp    $0xf4240,%r9d
  0x00007a9a54b0dcb7:   jge    0x00007a9a54b0ddda
  0x00007a9a54b0dcbd:   vmovq  %xmm1,%r8
  0x00007a9a54b0dcc2:   vmovd  %xmm3,%r11d
  0x00007a9a54b0dcc7:   jmp    0x00007a9a54b0dbb9
  0x00007a9a54b0dccc:   vmovq  %xmm1,%r8
  0x00007a9a54b0dcd1:   vmovd  %xmm3,%r11d
  0x00007a9a54b0dcd6:   vmovd  %xmm0,%ebp
  0x00007a9a54b0dcda:   mov    $0xffffffe4,%esi
  0x00007a9a54b0dcdf:   mov    %r9d,(%rsp)
  0x00007a9a54b0dce3:   mov    %edi,0x4(%rsp)
  0x00007a9a54b0dce7:   mov    %ebx,0x8(%rsp)
  0x00007a9a54b0dceb:   mov    %ecx,0xc(%rsp)
  0x00007a9a54b0dcef:   mov    %r10d,0x10(%rsp)
  0x00007a9a54b0dcf4:   mov    %r8,0x18(%rsp)
  0x00007a9a54b0dcf9:   mov    %r11d,0x14(%rsp)
  0x00007a9a54b0dcfe:   nop
  0x00007a9a54b0dcff:   call   0x00007a9a5464b1e0           ; ImmutableOopMap {[20]=NarrowOop [24]=Oop }
                                                            ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                            ; - com.mpataki.Tensor4DBenchmark::realTest@39 (line 25)
                                                            ;   {runtime_call UncommonTrapBlob}
  0x00007a9a54b0dd04:   nopl   0x10002fc(%rax,%rax,1)       ;   {post_call_nop}
  0x00007a9a54b0dd0c:   vmovq  %xmm1,%r8
  0x00007a9a54b0dd11:   vmovd  %xmm0,%ebp
  0x00007a9a54b0dd15:   mov    $0xffffffe4,%esi
  0x00007a9a54b0dd1a:   mov    %r9d,(%rsp)
  0x00007a9a54b0dd1e:   mov    %ebx,0x4(%rsp)
  0x00007a9a54b0dd22:   mov    %ecx,0x8(%rsp)
  0x00007a9a54b0dd26:   mov    %r10,0x10(%rsp)
  0x00007a9a54b0dd2b:   mov    %edi,0xc(%rsp)
  0x00007a9a54b0dd2f:   mov    %r8,0x18(%rsp)
  0x00007a9a54b0dd34:   data16 xchg %ax,%ax
  0x00007a9a54b0dd37:   call   0x00007a9a5464b1e0           ; ImmutableOopMap {[16]=Oop [24]=Oop }
                                                            ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                            ; - com.mpataki.Tensor4DBenchmark::realTest@42 (line 25)
                                                            ;   {runtime_call UncommonTrapBlob}
  0x00007a9a54b0dd3c:   nopl   0x2000334(%rax,%rax,1)       ;   {post_call_nop}
  0x00007a9a54b0dd44:   vmovq  %xmm1,%r8
  0x00007a9a54b0dd49:   vmovd  %xmm0,%ebp
  0x00007a9a54b0dd4d:   mov    $0xffffffe4,%esi
  0x00007a9a54b0dd52:   mov    %r9d,(%rsp)
  0x00007a9a54b0dd56:   mov    %ecx,0x4(%rsp)
  0x00007a9a54b0dd5a:   mov    %r10,0x8(%rsp)
  0x00007a9a54b0dd5f:   mov    %ebx,0x10(%rsp)
  0x00007a9a54b0dd63:   mov    %r8,0x18(%rsp)
  0x00007a9a54b0dd68:   data16 xchg %ax,%ax
  0x00007a9a54b0dd6b:   call   0x00007a9a5464b1e0           ; ImmutableOopMap {[8]=Oop [24]=Oop }
                                                            ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                            ; - com.mpataki.Tensor4DBenchmark::realTest@45 (line 25)
                                                            ;   {runtime_call UncommonTrapBlob}
  0x00007a9a54b0dd70:   nopl   0x3000368(%rax,%rax,1)       ;   {post_call_nop}
  0x00007a9a54b0dd78:   vmovq  %xmm1,%r8
  0x00007a9a54b0dd7d:   vmovd  %xmm0,%ebp
  0x00007a9a54b0dd81:   mov    $0xffffffe4,%esi
  0x00007a9a54b0dd86:   mov    %r9d,(%rsp)
  0x00007a9a54b0dd8a:   mov    %r10,0x8(%rsp)
  0x00007a9a54b0dd8f:   mov    %ecx,0x4(%rsp)
  0x00007a9a54b0dd93:   mov    %r8,0x10(%rsp)
  0x00007a9a54b0dd98:   data16 xchg %ax,%ax
  0x00007a9a54b0dd9b:   call   0x00007a9a5464b1e0           ; ImmutableOopMap {[8]=Oop [16]=Oop }
                                                            ;*faload {reexecute=0 rethrow=0 return_oop=0}
                                                            ; - com.mpataki.Tensor4DBenchmark::realTest@48 (line 25)
                                                            ;   {runtime_call UncommonTrapBlob}
  0x00007a9a54b0dda0:   nopl   0x4000398(%rax,%rax,1)       ;   {post_call_nop}
  0x00007a9a54b0dda8:   xor    %edi,%edi
  0x00007a9a54b0ddaa:   xor    %ebx,%ebx
  0x00007a9a54b0ddac:   xor    %ecx,%ecx
  0x00007a9a54b0ddae:   xor    %r10d,%r10d
  0x00007a9a54b0ddb1:   jmp    0x00007a9a54b0dcd6
  0x00007a9a54b0ddb6:   shl    $0x3,%r10
  0x00007a9a54b0ddba:   xor    %ebx,%ebx
  0x00007a9a54b0ddbc:   xor    %ecx,%ecx
  0x00007a9a54b0ddbe:   xor    %edi,%edi
  0x00007a9a54b0ddc0:   jmp    0x00007a9a54b0dd11
  0x00007a9a54b0ddc5:   lea    (%r12,%rcx,8),%r10
  0x00007a9a54b0ddc9:   xor    %ecx,%ecx
  0x00007a9a54b0ddcb:   xor    %ebx,%ebx
  0x00007a9a54b0ddcd:   jmp    0x00007a9a54b0dd49
  0x00007a9a54b0ddd2:   shl    $0x3,%r10
  0x00007a9a54b0ddd6:   xor    %ecx,%ecx
  0x00007a9a54b0ddd8:   jmp    0x00007a9a54b0dd7d
  0x00007a9a54b0ddda:   nopw   0x0(%rax,%rax,1)
  0x00007a9a54b0dde0:   cmp    $0xf4240,%r9d
  0x00007a9a54b0dde7:   jge    0x00007a9a54b0deb7
  0x00007a9a54b0dded:   data16 xchg %ax,%ax
  0x00007a9a54b0ddf0:   mov    %r9d,%esi
  0x00007a9a54b0ddf3:   and    $0xfffffff0,%esi
  0x00007a9a54b0ddf6:   mov    %r9d,%edi
  0x00007a9a54b0ddf9:   sub    %esi,%edi
  0x00007a9a54b0ddfb:   mov    %r9d,%r11d
  0x00007a9a54b0ddfe:   and    $0xffffffe0,%r11d
  0x00007a9a54b0de02:   mov    %r9d,%ecx
  0x00007a9a54b0de05:   sub    %r11d,%ecx
  0x00007a9a54b0de08:   movslq %r9d,%r8
  0x00007a9a54b0de0b:   mov    %r9d,%r14d
  0x00007a9a54b0de0e:   and    $0xffffffc0,%r14d
  0x00007a9a54b0de12:   mov    %r9d,%r10d
  0x00007a9a54b0de15:   sub    %r14d,%r10d
  0x00007a9a54b0de18:   imul   $0xffffffff92492493,%r8,%rbx
  0x00007a9a54b0de1f:   sar    $0x20,%rbx
  0x00007a9a54b0de23:   mov    %ebx,%edx
  0x00007a9a54b0de25:   add    %r9d,%edx
  0x00007a9a54b0de28:   sar    $0x4,%edx
  0x00007a9a54b0de2b:   imul   $0x1c,%edx,%edx
  0x00007a9a54b0de2e:   mov    %r9d,%ebx
  0x00007a9a54b0de31:   sub    %edx,%ebx
  0x00007a9a54b0de33:   cmp    %r13d,%r10d
  0x00007a9a54b0de36:   jae    0x00007a9a54b0dec7
  0x00007a9a54b0de3c:   movslq %r14d,%r10
  0x00007a9a54b0de3f:   mov    %r8,%rbp
  0x00007a9a54b0de42:   sub    %r10,%rbp
  0x00007a9a54b0de45:   mov    0x10(%rax,%rbp,4),%r10d
  0x00007a9a54b0de4a:   mov    0xc(%r12,%r10,8),%r14d       ; implicit exception: dispatches to 0x00007a9a54b0df1e
  0x00007a9a54b0de4f:   shl    $0x3,%r10
  0x00007a9a54b0de53:   cmp    %r14d,%edi
  0x00007a9a54b0de56:   jae    0x00007a9a54b0deda
  0x00007a9a54b0de5c:   movslq %esi,%rdi
  0x00007a9a54b0de5f:   mov    %r8,%rsi
  0x00007a9a54b0de62:   sub    %rdi,%rsi
  0x00007a9a54b0de65:   mov    0x10(%r10,%rsi,4),%esi
  0x00007a9a54b0de6a:   mov    0xc(%r12,%rsi,8),%edi        ; implicit exception: dispatches to 0x00007a9a54b0df36
  0x00007a9a54b0de6f:   lea    (%r12,%rsi,8),%r10
  0x00007a9a54b0de73:   cmp    %edi,%ebx
  0x00007a9a54b0de75:   jae    0x00007a9a54b0dee8
  0x00007a9a54b0de7b:   movslq %edx,%rbx
  0x00007a9a54b0de7e:   mov    %r8,%rdi
  0x00007a9a54b0de81:   sub    %rbx,%rdi
  0x00007a9a54b0de84:   mov    0x10(%r10,%rdi,4),%edi
  0x00007a9a54b0de89:   mov    0xc(%r12,%rdi,8),%ebx        ; implicit exception: dispatches to 0x00007a9a54b0df4e
  0x00007a9a54b0de8e:   lea    (%r12,%rdi,8),%r10
  0x00007a9a54b0de92:   cmp    %ebx,%ecx
  0x00007a9a54b0de94:   jae    0x00007a9a54b0def6
  0x00007a9a54b0de9a:   movslq %r11d,%r11
  0x00007a9a54b0de9d:   sub    %r11,%r8                     ;   {no_reloc}
  0x00007a9a54b0dea0:   vaddss 0x10(%r10,%r8,4),%xmm0,%xmm0
  0x00007a9a54b0dea7:   inc    %r9d
  0x00007a9a54b0deaa:   cmp    $0xf4240,%r9d
  0x00007a9a54b0deb1:   jl     0x00007a9a54b0ddf0
  0x00007a9a54b0deb7:   add    $0x30,%rsp
  0x00007a9a54b0debb:   pop    %rbp
  0x00007a9a54b0debc:   cmp    0x28(%r15),%rsp              ;   {poll_return}
  0x00007a9a54b0dec0:   ja     0x00007a9a54b0df64
  0x00007a9a54b0dec6:   ret
  0x00007a9a54b0dec7:   vmovd  %xmm0,%ebp
  0x00007a9a54b0decb:   vmovq  %xmm1,%r8
  0x00007a9a54b0ded0:   vmovd  %xmm3,%r11d
  0x00007a9a54b0ded5:   jmp    0x00007a9a54b0dcda
  0x00007a9a54b0deda:   vmovd  %xmm0,%ebp
  0x00007a9a54b0dede:   vmovq  %xmm1,%r8
  0x00007a9a54b0dee3:   jmp    0x00007a9a54b0dd15
  0x00007a9a54b0dee8:   vmovd  %xmm0,%ebp
  0x00007a9a54b0deec:   vmovq  %xmm1,%r8
  0x00007a9a54b0def1:   jmp    0x00007a9a54b0dd4d
  0x00007a9a54b0def6:   vmovd  %xmm0,%ebp
  0x00007a9a54b0defa:   vmovq  %xmm1,%r8
  0x00007a9a54b0deff:   nop
  0x00007a9a54b0df00:   jmp    0x00007a9a54b0dd81
  0x00007a9a54b0df05:   mov    $0xffffff76,%esi
  0x00007a9a54b0df0a:   mov    %r8,%rbp
  0x00007a9a54b0df0d:   xchg   %ax,%ax
  0x00007a9a54b0df0f:   call   0x00007a9a5464b1e0           ; ImmutableOopMap {rbp=Oop }
                                                            ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                            ; - (reexecute) com.mpataki.Tensor4DBenchmark::realTest@7 (line 20)
                                                            ;   {runtime_call UncommonTrapBlob}
  0x00007a9a54b0df14:   nopl   0x500050c(%rax,%rax,1)       ;   {post_call_nop}
  0x00007a9a54b0df1c:   xor    %edi,%edi
  0x00007a9a54b0df1e:   mov    $0xfffffff6,%esi
  0x00007a9a54b0df23:   mov    %edi,%ebp
  0x00007a9a54b0df25:   xchg   %ax,%ax
  0x00007a9a54b0df27:   call   0x00007a9a5464b1e0           ; ImmutableOopMap {}
                                                            ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                            ; - com.mpataki.Tensor4DBenchmark::realTest@42 (line 25)
                                                            ;   {runtime_call UncommonTrapBlob}
  0x00007a9a54b0df2c:   nopl   0x6000524(%rax,%rax,1)       ;   {post_call_nop}
  0x00007a9a54b0df34:   xor    %ebx,%ebx
  0x00007a9a54b0df36:   mov    $0xfffffff6,%esi
  0x00007a9a54b0df3b:   mov    %ebx,%ebp
  0x00007a9a54b0df3d:   xchg   %ax,%ax
  0x00007a9a54b0df3f:   call   0x00007a9a5464b1e0           ; ImmutableOopMap {}
                                                            ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                            ; - com.mpataki.Tensor4DBenchmark::realTest@45 (line 25)
                                                            ;   {runtime_call UncommonTrapBlob}
  0x00007a9a54b0df44:   nopl   0x700053c(%rax,%rax,1)       ;   {post_call_nop}
  0x00007a9a54b0df4c:   xor    %ecx,%ecx
  0x00007a9a54b0df4e:   mov    $0xfffffff6,%esi
  0x00007a9a54b0df53:   mov    %ecx,%ebp
  0x00007a9a54b0df55:   xchg   %ax,%ax
  0x00007a9a54b0df57:   call   0x00007a9a5464b1e0           ; ImmutableOopMap {}
                                                            ;*faload {reexecute=0 rethrow=0 return_oop=0}
                                                            ; - com.mpataki.Tensor4DBenchmark::realTest@48 (line 25)
                                                            ;   {runtime_call UncommonTrapBlob}
  0x00007a9a54b0df5c:   nopl   0x8000554(%rax,%rax,1)       ;   {post_call_nop}
  0x00007a9a54b0df64:   movabs $0x7a9a54b0debc,%r10         ;   {internal_word}
  0x00007a9a54b0df6e:   mov    %r10,0x460(%r15)
  0x00007a9a54b0df75:   jmp    0x00007a9a5458c8e0           ;   {runtime_call SafepointBlob}
  0x00007a9a54b0df7a:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
  0x00007a9a54b0df7f:   jmp    0x00007a9a54b0db4a
  0x00007a9a54b0df84:   hlt
  0x00007a9a54b0df85:   hlt
  0x00007a9a54b0df86:   hlt
  0x00007a9a54b0df87:   hlt
[Exception Handler]
  0x00007a9a54b0df88:   jmp    0x00007a9a5464b4e0           ;   {no_reloc}
[Deopt Handler Code]
  0x00007a9a54b0df8d:   call   0x00007a9a54b0df92
  0x00007a9a54b0df92:   subq   $0x5,(%rsp)
  0x00007a9a54b0df97:   jmp    0x00007a9a5458be80           ;   {runtime_call DeoptimizationBlob}
  0x00007a9a54b0df9c:   hlt
  0x00007a9a54b0df9d:   hlt
  0x00007a9a54b0df9e:   hlt
  0x00007a9a54b0df9f:   hlt
--------------------------------------------------------------------------------
[/Disassembly]
