# ICS-Lab: Advanced Analysis and Exploitation of Vulnerabilities through Bomblab, Buflab, and Linklab.

## Overview

The **ICS-Lab** project was a series of three challenging experiments designed to deepen my understanding of low-level programming, system vulnerabilities, and debugging techniques. These experiments—**Bomblab**, **Buflab**, and **Linklab**—focused on learning key concepts such as buffer overflows, memory management, reverse engineering, and linking mechanisms in C and Assembly programming. The project was executed in a **Linux environment** (on a **Virtual Machine**, VM) with the aid of various terminal-based tools like `objdump`, `gdb`, and `gcc` to manipulate binaries and investigate the inner workings of programs.

## Experiments

### 1. Bomblab

The **Bomblab** experiment simulated a "bomb" that would explode unless the correct input was provided. The challenge here was to reverse-engineer the binary bomb program and figure out how to disarm it. Key tasks included:

- **Disassembling the binary**: Using `objdump` to disassemble the executable and obtain the assembly code. The disassembly revealed the program logic and allowed me to track how the program processed user input.
  
- **Using gdb for debugging**: The GNU Debugger (`gdb`) was essential for analyzing the bomb's behavior. I used it to set breakpoints, step through the code, and examine register and memory states during execution.
  
- **Reverse engineering the input format**: By stepping through the assembly instructions and understanding the logic, I determined the correct sequence of inputs needed to prevent the bomb from detonating. The bomb had multiple stages, each requiring specific input based on the previous stage’s result.

- **Buffer Overflow Exploitation**: The bomb program involved deliberately vulnerable code (such as unsafe `gets()` function calls) that allowed for **buffer overflows**. Understanding how these overflows could corrupt the program’s stack memory and lead to control over the program’s flow was essential for this experiment.

**Key Learning**: I gained hands-on experience with reverse engineering binaries and using debugging tools to understand program flow, as well as exploiting vulnerabilities like buffer overflows to alter program behavior.

---

### 2. Buflab

The **Buflab** experiment aimed to exploit buffer overflow vulnerabilities within a C program. Buffer overflows occur when a program writes more data to a buffer than it can handle, leading to memory corruption and potential arbitrary code execution. In this experiment, the task was to identify and exploit such vulnerabilities.

- **Identifying the Vulnerability**: The provided C code involved the use of unsafe functions like `gets()` or `strcpy()`, which do not perform bounds checking. By carefully reviewing the source code and the functions interacting with user inputs, I pinpointed the buffer overflow vulnerability.

- **Memory Analysis with gdb**: I used `gdb` to inspect the program’s memory layout and stack structure. By identifying key addresses and understanding the stack frame, I crafted inputs that would overwrite the **return address** of the function, redirecting the program flow to a malicious payload.

- **Crafting Exploit Payloads**: The objective was to craft input that would overwrite the return address on the stack, causing the program to jump to malicious shellcode (which I injected into the buffer). I had to ensure that the payload was placed correctly in the input to avoid crashing the program prematurely.

- **Buffer Overflow Attack Execution**: Once the buffer was overflowed, the return address in the stack was modified to point to my shellcode. The shellcode executed upon the return from the vulnerable function, granting me control over the program.

**Key Learning**: This experiment deepened my understanding of memory manipulation, buffer overflows, and how to exploit them to execute arbitrary code. It also highlighted the importance of secure coding practices like bounds checking and the use of safe string functions.

---

### 3. Linklab

The **Linklab** experiment focused on understanding and manipulating the **linking process** in C programming. The goal was to gain insight into how the linking phase works in the compilation process and how vulnerabilities can arise from improperly linked programs.

- **Static and Dynamic Linking**: I learned the differences between **static linking** (where libraries are included directly in the executable) and **dynamic linking** (where libraries are loaded at runtime). The experiment required me to manipulate object files and shared libraries to explore the linker's behavior.

- **Exploiting Linking Weaknesses**: The vulnerability explored here was related to how function pointers and memory addresses are resolved during the linking phase. I used techniques like **link-time code injection** to manipulate the linking process and alter the program’s expected behavior.

- **Using `gcc` and `ld`**: I compiled and linked programs using **gcc** (GNU Compiler Collection) and **ld** (GNU linker). By manipulating the object files and libraries during the compilation and linking process, I created **malicious links** to control the flow of execution.

- **Symbol Resolution**: This involved understanding how symbols (functions, variables) are resolved during the linking process. By altering the **symbol table**, I was able to redirect function calls and inject my own code into the program.

**Key Learning**: This experiment provided practical insights into the process of linking, both statically and dynamically, and how the linking phase can be exploited for **code injection attacks**. It reinforced my understanding of how the operating system resolves functions and variables, and how careful manipulation of these can lead to vulnerabilities.

---

## Tools and Environment

- **Operating System**: Linux (VM)
  - A controlled Linux environment was set up to simulate real-world conditions for analyzing and exploiting binary programs. The **VM setup** ensured a safe and isolated testing environment.
  
- **Programming Languages**: C and Assembly
  - C was used for writing the vulnerable programs, while assembly was used in the analysis and exploitation phases.

- **Tools**:
  - **`objdump`**: Used for disassembling binaries to analyze the assembly code.
  - **`gdb`**: Used for step-by-step debugging and examining program state during execution.
  - **`gcc`**: For compiling C programs and linking them into executables.
  - **`ld`**: For linking object files and libraries in the program.
  - **`strace`**: For tracing system calls and signals during program execution.

## Key Concepts

- **Buffer Overflow**: A situation where data overflows into adjacent memory, often leading to program crashes or the ability to execute arbitrary code.
  
- **Assembly Language**: A low-level programming language that is closely related to machine code. Understanding assembly was crucial for reverse-engineering and debugging.
  
- **Memory Management**: The organization, storage, and manipulation of memory during program execution. This is critical in understanding buffer overflows and other vulnerabilities.
  
- **Linking**: The process of combining object files into an executable program. During this phase, symbols are resolved, and memory addresses for functions and variables are allocated.
  
- **Control Flow Hijacking**: A technique used to manipulate the program’s control flow by exploiting vulnerabilities, such as buffer overflows or improper linking.

## Conclusion

The **ICS-Lab** project was an intensive learning experience that covered a wide range of concepts in low-level programming, including memory management, system vulnerabilities, reverse engineering, and exploitation techniques. Through the experiments—**Bomblab**, **Buflab**, and **Linklab**—I gained valuable practical knowledge in debugging, disassembling binaries, exploiting buffer overflows, and manipulating the linking process. 

The skills acquired in this project are crucial for understanding security vulnerabilities and the importance of secure coding practices in real-world software development.

