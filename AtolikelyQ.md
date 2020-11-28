Q:	What the hell is this?
A:	An assortment of macros and macro systems I find either useful in, or interesting for, developing both simple and complex software in pure nasm assembly.

Q:	What the hell are .a and .ah files?
A:	Assembly source files in nasm assembly.
	I don't follow the standard assembler extension rules in favor of a more "C-like" style.
	What with general registers, one can program in a style very similar to C without losing expressivity and basic controls.

Q:	WTF is a general register and/or what are all those "g1, g2b, g3x" registers in your source?
A:	A general register is a specific register that has been abstracted behind a generalized identifier. 
	You use this generalized identifier to represent registers so you can make modular macros that can fit into more systems.
	They automatically detect the type/size/capabilities of the register you declare them as, and will still not compile when making an improper register selection (like trying to paddb into rax) - NO SILENT FAILURE HERE!!!
	The g_id_ is the root form of the register, accessing a 64 bit register with g_id_d, g_id_w, g_id_b, g_id_h, g_id_x, g_id_y, and g_id_z being their variants representing the various accessable portions of the register.

Q:	Why is everything either simplistic or hacked-together?
A:	I am an amateur programmer but even I know "Simplicitas divinitatum est" or "Keep it simple stupid".
	If it looks cobbled together or broken that's because it is and I am too lazy/busy elswhere to fix it or make it simpler and faster.
