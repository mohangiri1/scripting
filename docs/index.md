---
layout: default
title: Fortran Overview
---

# Fortran Overview

Fortran, short for Formula Translation, is a high-level programming language that is particularly well-suited for numeric computation and scientific computing. It has been widely used in various domains such as climate modeling, computational physics, and engineering simulations. To run a Fortran program, you typically write your code in a file with a `.f90` extension and compile it using a Fortran compiler such as `gfortran`. You can automate this process using a script. For example, save the following "Hello, World!" program in a file named `hello.f90`:

```fortran
program hello
  print *, 'Hello, World!'
end program hello
```

In order to run the gfortran script:
```sh
gfortran hello.f90 -o hello
./hello
```

# Agenda Here:
We will try to solve few problems from physics and Mathematics using Fortran.

