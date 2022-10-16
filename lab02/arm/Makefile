.PHONY: test-arm clean

c:
	gcc sylib.c test.c -O0 -o ctest -static
	./ctest

test:
	arm-linux-gnueabihf-gcc -o sylib.S -S -O0 sylib.c -fno-asynchronous-unwind-tables
	arm-linux-gnueabihf-gcc -o test.S -S -O0 test.c -fno-asynchronous-unwind-tables
	arm-linux-gnueabihf-gcc sylib.S test.S -o armtest -static
	qemu-arm ./armtest

clean:
	rm -rf *.S test