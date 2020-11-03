This is my library of basic nasm assembly headers for defines, preproccessing macros, inline or called functions, structs and whatever else I can think up.

	-	genreg.ah:
			A header for defining and undefining register names at assembly-time for more independent functions and macros.
	-	hex.ah:
			A header filled with hex to binary and binary to hex conversion functions using the genreg system for modularity.
	-	syscall.ah:
			A header detailing some well used syscalls and options on linux. Makes true native system programming much easier.
	-	size.ah:
			A header enabling marginal assembly-time programming of register size. Enables using one macro label for multiple register sizes.
	-	cstring.ah:
			A header for easy declaration of string constants.
