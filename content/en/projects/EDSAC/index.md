---
title: "FORTRAN II Compiler"
date: 2020-07-05T14:35:54+01:00
weight: 1 # Order in which to show this project on the home page
external_link: "" # Optional external link instead of modal
resources:
    - src: EDASC.jpg
      params:
          weight: -100 # Optional weighting for a specific image in this project folder
---

For my Undergraduate Dissertation, I built a **C++ based FORTRAN II Compiler** for writing and compiling programs to run on the original EDSAC Machine at Bletchley park. This project was completed under the supervision of Professor Andrew Brown, with the goal of dramatically simplifying the process of writing and compiling programs to the tape-based instruction set of the EDSAC machine. 

The compiler was built entirely from first principles, constructing symbol tables, memory mappings, instructions and optimizations, etc, entirely from scratch. This project also included the elicitation and understanding of a 70 year old instruction set, many elements of which are now entirely archaic and previously undocumented.

The project was highly successful, resulting in a first-class classification. The following feedback was provided by my project's supervisor:

*```In a career spanning 40 years, I have looked at (both here and as an external) probably north of 200 undergraduate projects, and this has to be up there in the top 3. It was a massively ambitious project, that I never realistically expected him to chase through to the end. He was enthusiastic and competent the whole way through. I'd like to see him get a prize for this, and I am completely comfortable with a first class degree mark.```* - Professor Andrew Brown.

You can find the source code for the project (all 20,000 lines of it) [on my github](https://github.com/ElliotAlexander/EDSAC-FORTRAN-Compiler). 
