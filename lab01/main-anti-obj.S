
main-x86.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <add>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	89 7d ec             	mov    %edi,-0x14(%rbp)
   7:	89 75 e8             	mov    %esi,-0x18(%rbp)
   a:	8b 55 ec             	mov    -0x14(%rbp),%edx
   d:	8b 45 e8             	mov    -0x18(%rbp),%eax
  10:	01 d0                	add    %edx,%eax
  12:	89 45 fc             	mov    %eax,-0x4(%rbp)
  15:	8b 45 fc             	mov    -0x4(%rbp),%eax
  18:	5d                   	pop    %rbp
  19:	c3                   	retq   

000000000000001a <main>:
  1a:	55                   	push   %rbp
  1b:	48 89 e5             	mov    %rsp,%rbp
  1e:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
  22:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  29:	00 00 
  2b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  2f:	31 c0                	xor    %eax,%eax
  31:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 38 <main+0x1e>
  38:	e8 00 00 00 00       	callq  3d <main+0x23>
  3d:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 44 <main+0x2a>
  44:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 4b <main+0x31>
  4b:	b8 00 00 00 00       	mov    $0x0,%eax
  50:	e8 00 00 00 00       	callq  55 <main+0x3b>
  55:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 5c <main+0x42>
  5c:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 63 <main+0x49>
  63:	b8 00 00 00 00       	mov    $0x0,%eax
  68:	e8 00 00 00 00       	callq  6d <main+0x53>
  6d:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 74 <main+0x5a>
  74:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 7b <main+0x61>
  7b:	b8 00 00 00 00       	mov    $0x0,%eax
  80:	e8 00 00 00 00       	callq  85 <main+0x6b>
  85:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 8c <main+0x72>
  8c:	e8 00 00 00 00       	callq  91 <main+0x77>
  91:	48 8d 55 8c          	lea    -0x74(%rbp),%rdx
  95:	48 8d 45 88          	lea    -0x78(%rbp),%rax
  99:	48 89 c6             	mov    %rax,%rsi
  9c:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # a3 <main+0x89>
  a3:	b8 00 00 00 00       	mov    $0x0,%eax
  a8:	e8 00 00 00 00       	callq  ad <main+0x93>
  ad:	8b 55 8c             	mov    -0x74(%rbp),%edx
  b0:	8b 45 88             	mov    -0x78(%rbp),%eax
  b3:	89 c6                	mov    %eax,%esi
  b5:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # bc <main+0xa2>
  bc:	b8 00 00 00 00       	mov    $0x0,%eax
  c1:	e8 00 00 00 00       	callq  c6 <main+0xac>
  c6:	8b 55 8c             	mov    -0x74(%rbp),%edx
  c9:	8b 45 88             	mov    -0x78(%rbp),%eax
  cc:	39 c2                	cmp    %eax,%edx
  ce:	0f 4d c2             	cmovge %edx,%eax
  d1:	89 c6                	mov    %eax,%esi
  d3:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # da <main+0xc0>
  da:	b8 00 00 00 00       	mov    $0x0,%eax
  df:	e8 00 00 00 00       	callq  e4 <main+0xca>
  e4:	8b 55 8c             	mov    -0x74(%rbp),%edx
  e7:	8b 45 88             	mov    -0x78(%rbp),%eax
  ea:	89 d6                	mov    %edx,%esi
  ec:	89 c7                	mov    %eax,%edi
  ee:	e8 00 00 00 00       	callq  f3 <main+0xd9>
  f3:	89 c6                	mov    %eax,%esi
  f5:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # fc <main+0xe2>
  fc:	b8 00 00 00 00       	mov    $0x0,%eax
 101:	e8 00 00 00 00       	callq  106 <main+0xec>
 106:	c7 45 a8 0a 00 00 00 	movl   $0xa,-0x58(%rbp)
 10d:	c7 45 90 00 00 00 00 	movl   $0x0,-0x70(%rbp)
 114:	c7 45 94 01 00 00 00 	movl   $0x1,-0x6c(%rbp)
 11b:	c7 45 98 01 00 00 00 	movl   $0x1,-0x68(%rbp)
 122:	8b 55 94             	mov    -0x6c(%rbp),%edx
 125:	8b 45 90             	mov    -0x70(%rbp),%eax
 128:	89 c6                	mov    %eax,%esi
 12a:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 131 <main+0x117>
 131:	b8 00 00 00 00       	mov    $0x0,%eax
 136:	e8 00 00 00 00       	callq  13b <main+0x121>
 13b:	eb 2c                	jmp    169 <main+0x14f>
 13d:	8b 45 94             	mov    -0x6c(%rbp),%eax
 140:	89 45 ac             	mov    %eax,-0x54(%rbp)
 143:	8b 45 90             	mov    -0x70(%rbp),%eax
 146:	01 45 94             	add    %eax,-0x6c(%rbp)
 149:	8b 45 94             	mov    -0x6c(%rbp),%eax
 14c:	89 c6                	mov    %eax,%esi
 14e:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 155 <main+0x13b>
 155:	b8 00 00 00 00       	mov    $0x0,%eax
 15a:	e8 00 00 00 00       	callq  15f <main+0x145>
 15f:	8b 45 ac             	mov    -0x54(%rbp),%eax
 162:	89 45 90             	mov    %eax,-0x70(%rbp)
 165:	83 45 98 01          	addl   $0x1,-0x68(%rbp)
 169:	8b 45 98             	mov    -0x68(%rbp),%eax
 16c:	3b 45 a8             	cmp    -0x58(%rbp),%eax
 16f:	7c cc                	jl     13d <main+0x123>
 171:	bf 0a 00 00 00       	mov    $0xa,%edi
 176:	e8 00 00 00 00       	callq  17b <main+0x161>
 17b:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%rbp)
 182:	c7 45 a0 00 00 00 00 	movl   $0x0,-0x60(%rbp)
 189:	eb 1e                	jmp    1a9 <main+0x18f>
 18b:	8b 45 9c             	mov    -0x64(%rbp),%eax
 18e:	83 e0 01             	and    $0x1,%eax
 191:	85 c0                	test   %eax,%eax
 193:	75 10                	jne    1a5 <main+0x18b>
 195:	8b 45 a0             	mov    -0x60(%rbp),%eax
 198:	48 98                	cltq   
 19a:	8b 55 9c             	mov    -0x64(%rbp),%edx
 19d:	89 54 85 b0          	mov    %edx,-0x50(%rbp,%rax,4)
 1a1:	83 45 a0 01          	addl   $0x1,-0x60(%rbp)
 1a5:	83 45 9c 01          	addl   $0x1,-0x64(%rbp)
 1a9:	83 7d 9c 1d          	cmpl   $0x1d,-0x64(%rbp)
 1ad:	7e dc                	jle    18b <main+0x171>
 1af:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 1b6 <main+0x19c>
 1b6:	b8 00 00 00 00       	mov    $0x0,%eax
 1bb:	e8 00 00 00 00       	callq  1c0 <main+0x1a6>
 1c0:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%rbp)
 1c7:	eb 20                	jmp    1e9 <main+0x1cf>
 1c9:	8b 45 a4             	mov    -0x5c(%rbp),%eax
 1cc:	48 98                	cltq   
 1ce:	8b 44 85 b0          	mov    -0x50(%rbp,%rax,4),%eax
 1d2:	89 c6                	mov    %eax,%esi
 1d4:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 1db <main+0x1c1>
 1db:	b8 00 00 00 00       	mov    $0x0,%eax
 1e0:	e8 00 00 00 00       	callq  1e5 <main+0x1cb>
 1e5:	83 45 a4 01          	addl   $0x1,-0x5c(%rbp)
 1e9:	83 7d a4 0e          	cmpl   $0xe,-0x5c(%rbp)
 1ed:	7e da                	jle    1c9 <main+0x1af>
 1ef:	bf 0a 00 00 00       	mov    $0xa,%edi
 1f4:	e8 00 00 00 00       	callq  1f9 <main+0x1df>
 1f9:	b8 00 00 00 00       	mov    $0x0,%eax
 1fe:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
 202:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
 209:	00 00 
 20b:	74 05                	je     212 <main+0x1f8>
 20d:	e8 00 00 00 00       	callq  212 <main+0x1f8>
 212:	c9                   	leaveq 
 213:	c3                   	retq   
