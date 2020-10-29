This is my library of basic nasm assembly headers for defines, preproccessing macros, inline or called functions, structs and whatever else I can think up.

	-	genreg.ah:
			A header for defining and undefining register names at assembly-time for more independent functions and macros.
			I accidentally deleted this previously so the new version is all kinds of broken and won't work.
	-	hex.ah:
			A header filled with hex to binary and binary to hex conversion functions using the genreg system for modularity.
			I deleted this one as well, then re-wrote it, so it still doesn't work and isn't comlplete either.
	-	syscall.ah:
			A header detailing some well used syscalls and options on linux. Makes true native system programming much easier.
	-	size.ah:
			A header containing the values of each register size for correct address incrementing purposes.
