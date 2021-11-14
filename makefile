test:	test_term test_genreg test_syscall test_head test_string test_hex test_dec test_find test_stack test_input
	@echo "Tests complete."
clean:
	@rm tests/testhead tests/teststring tests/testhex tests/testdec tests/testutil tests/testfind tests/testsyscall

test_term:		./tests/testterm
	@./tests/testterm
test_input:		./tests/testinput
	@./tests/testterm
test_genreg:	./tests/testgenreg
	@./tests/testgenreg
test_syscall:	./tests/testsyscall
	@./tests/testsyscall
test_head:		./tests/testhead
	@./tests/testhead
test_string:	./tests/teststring
	@./tests/teststring
test_hex:		./tests/testhex
	@./tests/testhex
test_dec:		./tests/testdec
	@./tests/testdec
test_find:		./tests/testfind
	@./tests/testfind
test_stack:		./tests/teststack
	@./tests/teststack
test_fb:		./tests/testfb
	@./tests/testfb

./tests/testterm:		head.ah syscall.ah term.ah tests/testterm.a
	@nasm tests/testterm.a -o tests/testterm
	@chmod	755	tests/testterm
./tests/testgenreg:		head.ah syscall.ah genreg.ah tests/testgenreg.a
	@nasm tests/testgenreg.a -o tests/testgenreg
	@chmod	755	tests/testgenreg
./tests/testsyscall:	head.ah syscall.ah tests/testsyscall.a
	@nasm tests/testsyscall.a -o tests/testsyscall
	@chmod	755	tests/testsyscall
./tests/testhead:		head.ah syscall.ah tests/testhead.a
	@nasm tests/testhead.a -o tests/testhead
	@chmod	755	tests/testhead
./tests/teststring:		head.ah syscall.ah cstring.ah tests/teststring.a
	@nasm tests/teststring.a -o tests/teststring
	@chmod 755 ./tests/teststring
./tests/testhex:		head.ah syscall.ah hex.ah genreg.ah cstring.ah tests/testhex.a
	@nasm tests/testhex.a -o tests/testhex
	@chmod	755	tests/testhex
./tests/testdec:		dec.ah head.ah syscall.ah cstring.ah genreg.ah tests/testdec.a
	@nasm tests/testdec.a -o tests/testdec
	@chmod	755	tests/testdec
./tests/testutil:		head.ah	util.ah cstring.ah genreg.ah syscall.ah tests/testutil.a
	@nasm tests/testutil.a -o tests/testutil
	@chmod	755	tests/testutil
./tests/testfind:		head.ah syscall.ah genreg.ah syscall.ah cstring.ah find.ah util.ah tests/testfind.a
	@nasm ./tests/testfind.a -o ./tests/testfind
	@chmod	755	./tests/testfind
./tests/teststack:		head.ah syscall.ah genreg.ah syscall.ah cstring.ah stack.ah tests/teststack.a
	@nasm ./tests/teststack.a -o ./tests/teststack
	@chmod	755	./tests/teststack
./tests/testfb:		head.ah syscall.ah syscall.ah ./tests/testfb.a fb.ah
	@nasm ./tests/testfb.a -o ./tests/testfb
	@chmod	755	./tests/testfb
./tests/testinput:		head.ah syscall.ah cstring.ah input.ah
