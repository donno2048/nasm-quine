# Nasm Quine

An x86 assembly quine for DOS.

You can view the online demo [here](https://donno2048.github.io/nasm-quine/).

## Build

Compile [main.asm](./main.asm) and execute it on DOS, it'll output some nasm code.

This code is the code of [quine.asm](./quine.asm). 

## Usage

Compile and run [quine.asm](./quine.asm) the output will be the code itself.

## Restrictions 

- The code doesn't use any C standard library (or it'll be quite trivial to just adapt a `printf` quine to assembly)

- The code doesn't use `incbin` (again, this will be trivial by including the source code itself)

- The code doesn't take any input (as it will be trivial to provide the source as input)

- The code doesn't use interrupts (else we could just map interrupt xx to print `dw 0xcdxx` and call it)
