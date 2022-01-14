// for including compiled C assembly into pure asm - no linker required!

// need to enclose the label text argument in double quotes like: "label"
#define acll(label) asm ( "call "label );
#define ajmp(label) asm ( "jmp "label );
#define albl(label) asm ( label":" );

// no return for writing integrated procedures in C, which do not return but
// jump to another label in case of assembly code conditionally jumping to it.
#define noreturn __builtin_unreachable();
