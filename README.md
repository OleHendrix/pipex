# pipex  

pipex is a project that replicates the behavior of the Unix shell pipe (`|`). It allows the output of one command to be passed as input to another command, demonstrating the power of inter-process communication (IPC) using pipes in C.

## How It Works  
1. **Command Execution**  
   - pipex takes two commands as arguments along with their input and output files. It executes the first command, redirects its output to a pipe, and then uses that output as the input for the second command.  

2. **Pipe and Fork Mechanisms**  
   - Pipes (`pipe()`) are used to create a unidirectional data channel for communication between processes.  
   - Child processes are created using `fork()` to execute each command. The parent process oversees the communication between commands through the pipe.  

3. **Redirection**  
   - Input redirection is managed by reading from the specified input file.  
   - Output redirection is managed by writing the final command's output to the specified output file.  

4. **Error Handling**  
   - The program includes error checking for file access, command execution, and system calls like `pipe()` and `fork()`.  

## What I Learned  
- The fundamentals of inter-process communication (IPC) using pipes.  
- How to use system calls like `pipe()`, `fork()`, `dup2()`, and `execve()` to manage processes and I/O redirection.  
- Debugging and managing processes in a parent-child relationship.  
- The importance of handling edge cases, such as invalid commands or inaccessible files.  
- Strengthened understanding of how Unix pipes work under the hood in shell environments.  
