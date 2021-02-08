Week 5: In this week we are learning about shared memory, inter-process communication and pipes in processes. POSIX Shared Memory (taken from Silbersharz Book, chapter 3, page, 132. 
Several IPC mechanisms are available for POSIX systems, including shared memory and message passing. Here, we explore the POSIX API for shared
memory. POSIX shared memory is organized using memory-mapped files, which associate the region of shared memory with a file. A process must first create
a shared-memory object using the shm_open() system call, as follows:
```fd = shm_open(name, O_CREAT | O_RDWR, 0666); ```
name:  name of the shared-memory object.

O_CREAT:  Create the object if it doesn't already exist.

O_RDWR:  Object is created for both read and write option.

Permissions: Read/write permissions for the object. 

​						User: Read/Write/Execute

​						Group: Read/Write/Execute

​						All: Read/Write/Execute	

​						**r** = read permission
​						**w** = write permission
​					  **x** = execute permission
​						**-** = no permission



| Number | Permission Type       | Symbol |
| :----- | :-------------------- | :----- |
| 0      | No Permission         | ---    |
| 1      | Execute               | --x    |
| 2      | Write                 | -w-    |
| 3      | Execute + Write       | -wx    |
| 4      | Read                  | r--    |
| 5      | Read + Execute        | r-x    |
| 6      | Read +Write           | rw-    |
| 7      | Read + Write +Execute | rwx    |

So in this lab sessions, we'll learn following concepts. 

(1) How to create a memory area (object).

(2) How to associate it or use within different processes.

(3) How to distroy this memory object when execution ends.

(4) What synchronisation mechanishms are needed  for this shared memory area to be used properly (we will be looking synchronisation in more details later sessions based on week 5 and 6 material.)

(5) How to avoid some of the data sharing issues and still achieve paralleslism using threads.


We will be using   #include <sys/mman.h> header files or devices into memory. mmap() creates a new mapping in the virtual address space of the calling process. Read about this is here: https://man7.org/linux/man-pages/man2/mmap.2.html, however, we will be looking on virtual memory management in the course a bit later.


       
       
      

















