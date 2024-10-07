# Hermetic bootstrapping of C# Script

The original motivation behind this project was time I spent with a software organization that wrote all of its devex tools with Python, and I wanted to check if C# might be a viable alternative.

## Problem

- We don't want to rely on prequisites already being installed on the machine, nor demand that users manually install the right prerequisites - it should just work.
- To run a C# Script you'll need to install dotnet and then dotnet-script.
- To ensure compatibility and stability over time, you'll want to install the exact same version of them each time.
- The only scripting languages we can count on are Batch and `sh`.
- Batch is a _terrible_ language, which is full of pitfalls/hazards, so we should use it as little as possible. `sh` is pretty bad as well.

## Solution

1. For a given `foo.csx` script, invite the user to instead run `./foo` or `.\foo`.
1. This will bootstrap dotnet into a local directory (where it can't clash with dotnet from any other source)
1. Both dotnet and dotnet-script are installed at the exact versions specified in the JSON configuration files.

## Why C# Script over other options?

"C# Script" is a way to write simple programs in C# that are easy to read and modify just like a Batch/Bash/Python/etc. script. 

- Scripting languages are transparent and editable - the user can see what the script is doing, and modify if needed
- Scripts work immediately, without requiring a compilation step
- Python is handy but must be system-installed
- Python package management is a mess
- C# is typesafe, which is good (fite me!)

## TODO

- Automated tests
- CI
- Windows
