.PHONY: pre, lexer, ast-gcc, ast-llvm, cfg, ir-gcc, ir-llvm, asm, obj, exe, antiobj, antiexe

pre:
	gcc main.c -E -o main.i

# 生成`lexer`
lexer:
	clang -E -Xclang -dump-tokens main.c >& lexer.txt

# 生成`main.c.003t.original`
ast-gcc:
	gcc -fdump-tree-original-raw main.c

# 生成`main.ll`
ast-llvm:
	clang -E -Xclang -ast-dump main.c >& ast-llvm.txt

# 会生成多个阶段的文件(.dot)，可以被graphviz可视化，可以直接使用vscode插件
# (Graphviz (dot) language support for Visual Studio Code)。
# 此时的可读性还很强。`main.c.011t.cfg.dot`
cfg:
	gcc -O0 -fdump-tree-all-graph main.c

# 此时可读性不好，简要了解各阶段更迭过程即可。
ir-gcc:
	gcc -O0 -fdump-rtl-all-graph main.c

ir-llvm:
	clang -S -emit-llvm -Xclang -disable-O0-optnone main.c

opt-mem2reg:
	llvm-as main.ll -o main.bc
	opt -mem2reg main.bc > main-mem2reg.bc
	llvm-dis main-mem2reg.bc -o after-mem2reg-main.ll

opt-all:
	opt -O1 -S main.ll -time-passes > after-all-optimize-main.ll

asm-x86:
	gcc -O0 -o main-x86.S -S -masm=att main.i

asm-arm:
	arm-linux-gnueabihf-gcc main.i -S -o main-arm.S

asm-llvm:
	llc main.ll -o main-llvm.S

obj-x86:
	gcc -O0 -c -o main-x86.o main-x86.S

obj-arm:
	arm-linux-gnueabihf-gcc main-arm.S -o main-arm.o

obj-llvm:
	llc main.bc -filetype=obj -o main-llvm.o

antiobj:
	objdump -d main-x86.o > main-anti-obj.S
	nm main-x86.o > main-nm-obj.txt

exe:
	gcc -O0 -o main main-x86.o

antiexe:
	objdump -d main > main-anti-exe.S
	nm main > main-nm-exe.txt

clean:
	rm -rf *.c.*

clean-all:
	rm -rf *.c.* *.o *.S *.dot *.out *.txt *.ll *.i main