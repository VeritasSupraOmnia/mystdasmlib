This is a document describing best practices regarding writing macros to ease memorization and increase composability via a standard format.

1:	Each macro should be as generic and modular as the implementation allows. 
	This means that each macro should use general registers wherever possible and should choose the solution that creates more modular source code as long as said solution does not sacrifice performance.
2:	Each macro should order their arguments in the following catagory order: Output, Input, Scratch
	Following the usual nasm syntax for argument inputs and outputs is good for composability.
3:	Each macro should order each catagory by low to high necessary sizes within each category.
	For example, A ymm output would go before an xmm input but a 8 byte input would go after the ymm and before the xmm
4:	Macros should, if pertinent to it's function, include the relevant size of the macro in it's name.
	This size should put the size of the output before the name and the size of the input after the name - this is to inrease composability.
	Macros should use standard byte size letters to show size where possible - "y" in the place of "32" for bytes and so on.
