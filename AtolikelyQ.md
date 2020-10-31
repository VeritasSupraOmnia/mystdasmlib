Q:	What the hell is this?
A:	An assortment of macros and macro systems I find either useful in, or interesting for, developing both simple and complex software in pure nasm assembly.

Q:	What the hell are .a and .ah files?
A:	Assembly source files in nasm assembly.

Q:	Why have you changed the extension from .asm and split it into two file extensions? Hurr durr, muh editor integration!
A:	Because assembly has too much potential to deserve missing out on the organizational benefits of splitting your code into obvious implementation and support files.
	I use .a and .ah because writing .asm is too long imo and .s promotes confusion between default syntaxes - gas being at&t and heavily associated with the .s extension.
	nasm is a different language from base gas and I don't know the nasm preferred extension if they even have one.

Q:	WTF is a general register?
A:	It's kind of like a cuda register but for x86_64.

Q:	Why is everything either simplistic or hacked-together?
A:	I am an amateur programmer but even I know "Simplicitas divinitatum est" or "Keep it simple stupid"
	If it looks cobbled together or broken that's because it is and I am too egotistical to chop capability to make it simpler.
