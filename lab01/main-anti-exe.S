
main:     file format elf64-x86-64


Disassembly of section .init:

0000000000000618 <_init>:
 618:	48 83 ec 08          	sub    $0x8,%rsp
 61c:	48 8b 05 c5 09 20 00 	mov    0x2009c5(%rip),%rax        # 200fe8 <__gmon_start__>
 623:	48 85 c0             	test   %rax,%rax
 626:	74 02                	je     62a <_init+0x12>
 628:	ff d0                	callq  *%rax
 62a:	48 83 c4 08          	add    $0x8,%rsp
 62e:	c3                   	retq   

Disassembly of section .plt:

0000000000000630 <.plt>:
 630:	ff 35 6a 09 20 00    	pushq  0x20096a(%rip)        # 200fa0 <_GLOBAL_OFFSET_TABLE_+0x8>
 636:	ff 25 6c 09 20 00    	jmpq   *0x20096c(%rip)        # 200fa8 <_GLOBAL_OFFSET_TABLE_+0x10>
 63c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000640 <putchar@plt>:
 640:	ff 25 6a 09 20 00    	jmpq   *0x20096a(%rip)        # 200fb0 <putchar@GLIBC_2.2.5>
 646:	68 00 00 00 00       	pushq  $0x0
 64b:	e9 e0 ff ff ff       	jmpq   630 <.plt>

0000000000000650 <puts@plt>:
 650:	ff 25 62 09 20 00    	jmpq   *0x200962(%rip)        # 200fb8 <puts@GLIBC_2.2.5>
 656:	68 01 00 00 00       	pushq  $0x1
 65b:	e9 d0 ff ff ff       	jmpq   630 <.plt>

0000000000000660 <__stack_chk_fail@plt>:
 660:	ff 25 5a 09 20 00    	jmpq   *0x20095a(%rip)        # 200fc0 <__stack_chk_fail@GLIBC_2.4>
 666:	68 02 00 00 00       	pushq  $0x2
 66b:	e9 c0 ff ff ff       	jmpq   630 <.plt>

0000000000000670 <printf@plt>:
 670:	ff 25 52 09 20 00    	jmpq   *0x200952(%rip)        # 200fc8 <printf@GLIBC_2.2.5>
 676:	68 03 00 00 00       	pushq  $0x3
 67b:	e9 b0 ff ff ff       	jmpq   630 <.plt>

0000000000000680 <__isoc99_scanf@plt>:
 680:	ff 25 4a 09 20 00    	jmpq   *0x20094a(%rip)        # 200fd0 <__isoc99_scanf@GLIBC_2.7>
 686:	68 04 00 00 00       	pushq  $0x4
 68b:	e9 a0 ff ff ff       	jmpq   630 <.plt>

Disassembly of section .plt.got:

0000000000000690 <__cxa_finalize@plt>:
 690:	ff 25 62 09 20 00    	jmpq   *0x200962(%rip)        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 696:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000000000006a0 <_start>:
 6a0:	31 ed                	xor    %ebp,%ebp
 6a2:	49 89 d1             	mov    %rdx,%r9
 6a5:	5e                   	pop    %rsi
 6a6:	48 89 e2             	mov    %rsp,%rdx
 6a9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 6ad:	50                   	push   %rax
 6ae:	54                   	push   %rsp
 6af:	4c 8d 05 7a 03 00 00 	lea    0x37a(%rip),%r8        # a30 <__libc_csu_fini>
 6b6:	48 8d 0d 03 03 00 00 	lea    0x303(%rip),%rcx        # 9c0 <__libc_csu_init>
 6bd:	48 8d 3d 00 01 00 00 	lea    0x100(%rip),%rdi        # 7c4 <main>
 6c4:	ff 15 16 09 20 00    	callq  *0x200916(%rip)        # 200fe0 <__libc_start_main@GLIBC_2.2.5>
 6ca:	f4                   	hlt    
 6cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000006d0 <deregister_tm_clones>:
 6d0:	48 8d 3d 39 09 20 00 	lea    0x200939(%rip),%rdi        # 201010 <__TMC_END__>
 6d7:	55                   	push   %rbp
 6d8:	48 8d 05 31 09 20 00 	lea    0x200931(%rip),%rax        # 201010 <__TMC_END__>
 6df:	48 39 f8             	cmp    %rdi,%rax
 6e2:	48 89 e5             	mov    %rsp,%rbp
 6e5:	74 19                	je     700 <deregister_tm_clones+0x30>
 6e7:	48 8b 05 ea 08 20 00 	mov    0x2008ea(%rip),%rax        # 200fd8 <_ITM_deregisterTMCloneTable>
 6ee:	48 85 c0             	test   %rax,%rax
 6f1:	74 0d                	je     700 <deregister_tm_clones+0x30>
 6f3:	5d                   	pop    %rbp
 6f4:	ff e0                	jmpq   *%rax
 6f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 6fd:	00 00 00 
 700:	5d                   	pop    %rbp
 701:	c3                   	retq   
 702:	0f 1f 40 00          	nopl   0x0(%rax)
 706:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 70d:	00 00 00 

0000000000000710 <register_tm_clones>:
 710:	48 8d 3d f9 08 20 00 	lea    0x2008f9(%rip),%rdi        # 201010 <__TMC_END__>
 717:	48 8d 35 f2 08 20 00 	lea    0x2008f2(%rip),%rsi        # 201010 <__TMC_END__>
 71e:	55                   	push   %rbp
 71f:	48 29 fe             	sub    %rdi,%rsi
 722:	48 89 e5             	mov    %rsp,%rbp
 725:	48 c1 fe 03          	sar    $0x3,%rsi
 729:	48 89 f0             	mov    %rsi,%rax
 72c:	48 c1 e8 3f          	shr    $0x3f,%rax
 730:	48 01 c6             	add    %rax,%rsi
 733:	48 d1 fe             	sar    %rsi
 736:	74 18                	je     750 <register_tm_clones+0x40>
 738:	48 8b 05 b1 08 20 00 	mov    0x2008b1(%rip),%rax        # 200ff0 <_ITM_registerTMCloneTable>
 73f:	48 85 c0             	test   %rax,%rax
 742:	74 0c                	je     750 <register_tm_clones+0x40>
 744:	5d                   	pop    %rbp
 745:	ff e0                	jmpq   *%rax
 747:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 74e:	00 00 
 750:	5d                   	pop    %rbp
 751:	c3                   	retq   
 752:	0f 1f 40 00          	nopl   0x0(%rax)
 756:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 75d:	00 00 00 

0000000000000760 <__do_global_dtors_aux>:
 760:	80 3d a9 08 20 00 00 	cmpb   $0x0,0x2008a9(%rip)        # 201010 <__TMC_END__>
 767:	75 2f                	jne    798 <__do_global_dtors_aux+0x38>
 769:	48 83 3d 87 08 20 00 	cmpq   $0x0,0x200887(%rip)        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 770:	00 
 771:	55                   	push   %rbp
 772:	48 89 e5             	mov    %rsp,%rbp
 775:	74 0c                	je     783 <__do_global_dtors_aux+0x23>
 777:	48 8b 3d 8a 08 20 00 	mov    0x20088a(%rip),%rdi        # 201008 <__dso_handle>
 77e:	e8 0d ff ff ff       	callq  690 <__cxa_finalize@plt>
 783:	e8 48 ff ff ff       	callq  6d0 <deregister_tm_clones>
 788:	c6 05 81 08 20 00 01 	movb   $0x1,0x200881(%rip)        # 201010 <__TMC_END__>
 78f:	5d                   	pop    %rbp
 790:	c3                   	retq   
 791:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 798:	f3 c3                	repz retq 
 79a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000007a0 <frame_dummy>:
 7a0:	55                   	push   %rbp
 7a1:	48 89 e5             	mov    %rsp,%rbp
 7a4:	5d                   	pop    %rbp
 7a5:	e9 66 ff ff ff       	jmpq   710 <register_tm_clones>

00000000000007aa <add>:
 7aa:	55                   	push   %rbp
 7ab:	48 89 e5             	mov    %rsp,%rbp
 7ae:	89 7d ec             	mov    %edi,-0x14(%rbp)
 7b1:	89 75 e8             	mov    %esi,-0x18(%rbp)
 7b4:	8b 55 ec             	mov    -0x14(%rbp),%edx
 7b7:	8b 45 e8             	mov    -0x18(%rbp),%eax
 7ba:	01 d0                	add    %edx,%eax
 7bc:	89 45 fc             	mov    %eax,-0x4(%rbp)
 7bf:	8b 45 fc             	mov    -0x4(%rbp),%eax
 7c2:	5d                   	pop    %rbp
 7c3:	c3                   	retq   

00000000000007c4 <main>:
 7c4:	55                   	push   %rbp
 7c5:	48 89 e5             	mov    %rsp,%rbp
 7c8:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
 7cc:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 7d3:	00 00 
 7d5:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
 7d9:	31 c0                	xor    %eax,%eax
 7db:	48 8d 3d 62 02 00 00 	lea    0x262(%rip),%rdi        # a44 <_IO_stdin_used+0x4>
 7e2:	e8 69 fe ff ff       	callq  650 <puts@plt>
 7e7:	48 8d 35 6c 02 00 00 	lea    0x26c(%rip),%rsi        # a5a <_IO_stdin_used+0x1a>
 7ee:	48 8d 3d 6c 02 00 00 	lea    0x26c(%rip),%rdi        # a61 <_IO_stdin_used+0x21>
 7f5:	b8 00 00 00 00       	mov    $0x0,%eax
 7fa:	e8 71 fe ff ff       	callq  670 <printf@plt>
 7ff:	48 8d 35 64 02 00 00 	lea    0x264(%rip),%rsi        # a6a <_IO_stdin_used+0x2a>
 806:	48 8d 3d 69 02 00 00 	lea    0x269(%rip),%rdi        # a76 <_IO_stdin_used+0x36>
 80d:	b8 00 00 00 00       	mov    $0x0,%eax
 812:	e8 59 fe ff ff       	callq  670 <printf@plt>
 817:	48 8d 35 61 02 00 00 	lea    0x261(%rip),%rsi        # a7f <_IO_stdin_used+0x3f>
 81e:	48 8d 3d 63 02 00 00 	lea    0x263(%rip),%rdi        # a88 <_IO_stdin_used+0x48>
 825:	b8 00 00 00 00       	mov    $0x0,%eax
 82a:	e8 41 fe ff ff       	callq  670 <printf@plt>
 82f:	48 8d 3d 5b 02 00 00 	lea    0x25b(%rip),%rdi        # a91 <_IO_stdin_used+0x51>
 836:	e8 15 fe ff ff       	callq  650 <puts@plt>
 83b:	48 8d 55 8c          	lea    -0x74(%rbp),%rdx
 83f:	48 8d 45 88          	lea    -0x78(%rbp),%rax
 843:	48 89 c6             	mov    %rax,%rsi
 846:	48 8d 3d 5a 02 00 00 	lea    0x25a(%rip),%rdi        # aa7 <_IO_stdin_used+0x67>
 84d:	b8 00 00 00 00       	mov    $0x0,%eax
 852:	e8 29 fe ff ff       	callq  680 <__isoc99_scanf@plt>
 857:	8b 55 8c             	mov    -0x74(%rbp),%edx
 85a:	8b 45 88             	mov    -0x78(%rbp),%eax
 85d:	89 c6                	mov    %eax,%esi
 85f:	48 8d 3d 46 02 00 00 	lea    0x246(%rip),%rdi        # aac <_IO_stdin_used+0x6c>
 866:	b8 00 00 00 00       	mov    $0x0,%eax
 86b:	e8 00 fe ff ff       	callq  670 <printf@plt>
 870:	8b 55 8c             	mov    -0x74(%rbp),%edx
 873:	8b 45 88             	mov    -0x78(%rbp),%eax
 876:	39 c2                	cmp    %eax,%edx
 878:	0f 4d c2             	cmovge %edx,%eax
 87b:	89 c6                	mov    %eax,%esi
 87d:	48 8d 3d 34 02 00 00 	lea    0x234(%rip),%rdi        # ab8 <_IO_stdin_used+0x78>
 884:	b8 00 00 00 00       	mov    $0x0,%eax
 889:	e8 e2 fd ff ff       	callq  670 <printf@plt>
 88e:	8b 55 8c             	mov    -0x74(%rbp),%edx
 891:	8b 45 88             	mov    -0x78(%rbp),%eax
 894:	89 d6                	mov    %edx,%esi
 896:	89 c7                	mov    %eax,%edi
 898:	e8 0d ff ff ff       	callq  7aa <add>
 89d:	89 c6                	mov    %eax,%esi
 89f:	48 8d 3d 21 02 00 00 	lea    0x221(%rip),%rdi        # ac7 <_IO_stdin_used+0x87>
 8a6:	b8 00 00 00 00       	mov    $0x0,%eax
 8ab:	e8 c0 fd ff ff       	callq  670 <printf@plt>
 8b0:	c7 45 a8 0a 00 00 00 	movl   $0xa,-0x58(%rbp)
 8b7:	c7 45 90 00 00 00 00 	movl   $0x0,-0x70(%rbp)
 8be:	c7 45 94 01 00 00 00 	movl   $0x1,-0x6c(%rbp)
 8c5:	c7 45 98 01 00 00 00 	movl   $0x1,-0x68(%rbp)
 8cc:	8b 55 94             	mov    -0x6c(%rbp),%edx
 8cf:	8b 45 90             	mov    -0x70(%rbp),%eax
 8d2:	89 c6                	mov    %eax,%esi
 8d4:	48 8d 3d fb 01 00 00 	lea    0x1fb(%rip),%rdi        # ad6 <_IO_stdin_used+0x96>
 8db:	b8 00 00 00 00       	mov    $0x0,%eax
 8e0:	e8 8b fd ff ff       	callq  670 <printf@plt>
 8e5:	eb 2c                	jmp    913 <main+0x14f>
 8e7:	8b 45 94             	mov    -0x6c(%rbp),%eax
 8ea:	89 45 ac             	mov    %eax,-0x54(%rbp)
 8ed:	8b 45 90             	mov    -0x70(%rbp),%eax
 8f0:	01 45 94             	add    %eax,-0x6c(%rbp)
 8f3:	8b 45 94             	mov    -0x6c(%rbp),%eax
 8f6:	89 c6                	mov    %eax,%esi
 8f8:	48 8d 3d f0 01 00 00 	lea    0x1f0(%rip),%rdi        # aef <_IO_stdin_used+0xaf>
 8ff:	b8 00 00 00 00       	mov    $0x0,%eax
 904:	e8 67 fd ff ff       	callq  670 <printf@plt>
 909:	8b 45 ac             	mov    -0x54(%rbp),%eax
 90c:	89 45 90             	mov    %eax,-0x70(%rbp)
 90f:	83 45 98 01          	addl   $0x1,-0x68(%rbp)
 913:	8b 45 98             	mov    -0x68(%rbp),%eax
 916:	3b 45 a8             	cmp    -0x58(%rbp),%eax
 919:	7c cc                	jl     8e7 <main+0x123>
 91b:	bf 0a 00 00 00       	mov    $0xa,%edi
 920:	e8 1b fd ff ff       	callq  640 <putchar@plt>
 925:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%rbp)
 92c:	c7 45 a0 00 00 00 00 	movl   $0x0,-0x60(%rbp)
 933:	eb 1e                	jmp    953 <main+0x18f>
 935:	8b 45 9c             	mov    -0x64(%rbp),%eax
 938:	83 e0 01             	and    $0x1,%eax
 93b:	85 c0                	test   %eax,%eax
 93d:	75 10                	jne    94f <main+0x18b>
 93f:	8b 45 a0             	mov    -0x60(%rbp),%eax
 942:	48 98                	cltq   
 944:	8b 55 9c             	mov    -0x64(%rbp),%edx
 947:	89 54 85 b0          	mov    %edx,-0x50(%rbp,%rax,4)
 94b:	83 45 a0 01          	addl   $0x1,-0x60(%rbp)
 94f:	83 45 9c 01          	addl   $0x1,-0x64(%rbp)
 953:	83 7d 9c 1d          	cmpl   $0x1d,-0x64(%rbp)
 957:	7e dc                	jle    935 <main+0x171>
 959:	48 8d 3d 93 01 00 00 	lea    0x193(%rip),%rdi        # af3 <_IO_stdin_used+0xb3>
 960:	b8 00 00 00 00       	mov    $0x0,%eax
 965:	e8 06 fd ff ff       	callq  670 <printf@plt>
 96a:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%rbp)
 971:	eb 20                	jmp    993 <main+0x1cf>
 973:	8b 45 a4             	mov    -0x5c(%rbp),%eax
 976:	48 98                	cltq   
 978:	8b 44 85 b0          	mov    -0x50(%rbp,%rax,4),%eax
 97c:	89 c6                	mov    %eax,%esi
 97e:	48 8d 3d 75 01 00 00 	lea    0x175(%rip),%rdi        # afa <_IO_stdin_used+0xba>
 985:	b8 00 00 00 00       	mov    $0x0,%eax
 98a:	e8 e1 fc ff ff       	callq  670 <printf@plt>
 98f:	83 45 a4 01          	addl   $0x1,-0x5c(%rbp)
 993:	83 7d a4 0e          	cmpl   $0xe,-0x5c(%rbp)
 997:	7e da                	jle    973 <main+0x1af>
 999:	bf 0a 00 00 00       	mov    $0xa,%edi
 99e:	e8 9d fc ff ff       	callq  640 <putchar@plt>
 9a3:	b8 00 00 00 00       	mov    $0x0,%eax
 9a8:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
 9ac:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
 9b3:	00 00 
 9b5:	74 05                	je     9bc <main+0x1f8>
 9b7:	e8 a4 fc ff ff       	callq  660 <__stack_chk_fail@plt>
 9bc:	c9                   	leaveq 
 9bd:	c3                   	retq   
 9be:	66 90                	xchg   %ax,%ax

00000000000009c0 <__libc_csu_init>:
 9c0:	41 57                	push   %r15
 9c2:	41 56                	push   %r14
 9c4:	49 89 d7             	mov    %rdx,%r15
 9c7:	41 55                	push   %r13
 9c9:	41 54                	push   %r12
 9cb:	4c 8d 25 c6 03 20 00 	lea    0x2003c6(%rip),%r12        # 200d98 <__frame_dummy_init_array_entry>
 9d2:	55                   	push   %rbp
 9d3:	48 8d 2d c6 03 20 00 	lea    0x2003c6(%rip),%rbp        # 200da0 <__init_array_end>
 9da:	53                   	push   %rbx
 9db:	41 89 fd             	mov    %edi,%r13d
 9de:	49 89 f6             	mov    %rsi,%r14
 9e1:	4c 29 e5             	sub    %r12,%rbp
 9e4:	48 83 ec 08          	sub    $0x8,%rsp
 9e8:	48 c1 fd 03          	sar    $0x3,%rbp
 9ec:	e8 27 fc ff ff       	callq  618 <_init>
 9f1:	48 85 ed             	test   %rbp,%rbp
 9f4:	74 20                	je     a16 <__libc_csu_init+0x56>
 9f6:	31 db                	xor    %ebx,%ebx
 9f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 9ff:	00 
 a00:	4c 89 fa             	mov    %r15,%rdx
 a03:	4c 89 f6             	mov    %r14,%rsi
 a06:	44 89 ef             	mov    %r13d,%edi
 a09:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 a0d:	48 83 c3 01          	add    $0x1,%rbx
 a11:	48 39 dd             	cmp    %rbx,%rbp
 a14:	75 ea                	jne    a00 <__libc_csu_init+0x40>
 a16:	48 83 c4 08          	add    $0x8,%rsp
 a1a:	5b                   	pop    %rbx
 a1b:	5d                   	pop    %rbp
 a1c:	41 5c                	pop    %r12
 a1e:	41 5d                	pop    %r13
 a20:	41 5e                	pop    %r14
 a22:	41 5f                	pop    %r15
 a24:	c3                   	retq   
 a25:	90                   	nop
 a26:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 a2d:	00 00 00 

0000000000000a30 <__libc_csu_fini>:
 a30:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000a34 <_fini>:
 a34:	48 83 ec 08          	sub    $0x8,%rsp
 a38:	48 83 c4 08          	add    $0x8,%rsp
 a3c:	c3                   	retq   
