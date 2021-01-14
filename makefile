test:	./tests/testhead ./tests/teststring ./tests/testgenreg ./tests/testhex ./tests/testdec ./tests/testutil ./tests/testfind
	@echo "Tests complete."
clean:
	@rm tests/testhead tests/teststring tests/testgenreg tests/testhex tests/testdec tests/testutil tests/testfind

./tests/testhead:	head.ah syscall.ah tests/testhead.a
	@nasm tests/testhead.a -o tests/testhead
	@chmod	755	tests/testhead
	@./tests/testhead
./tests/teststring: cstring.ah syscall.ah head.ah tests/teststring.a
	@nasm tests/teststring.a -o tests/teststring
	@chmod 755 ./tests/teststring
	@./tests/teststring
./tests/testgenreg: genreg.ah head.ah syscall.ah cstring.ah tests/testgenreg.a
	@nasm tests/testgenreg.a -o tests/testgenreg
	@chmod	755	tests/testgenreg
	@./tests/testgenreg
./tests/testhex: hex.ah head.ah genreg.ah syscall.ah cstring.ah tests/testhex.a
	@nasm tests/testhex.a -o tests/testhex
	@chmod	755	tests/testhex
	@./tests/testhex
./tests/testdec:	dec.ah head.ah syscall.ah cstring.ah genreg.ah tests/testdec.a
	@nasm tests/testdec.a -o tests/testdec
	@chmod	755	tests/testdec
	@./tests/testdec
./tests/testutil:	head.ah	util.ah cstring.ah genreg.ah syscall.ah tests/testutil.a
	@nasm tests/testutil.a -o tests/testutil
	@chmod	755	tests/testutil
	@./tests/testutil
./tests/testfind:	head.ah syscall.ah genreg.ah syscall.ah cstring.ah find.ah util.ah tests/testfind.a
	@nasm ./tests/testfind.a -o ./tests/testfind
	@chmod	755	./tests/testfind
	@./tests/testfind
