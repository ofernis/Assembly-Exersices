# Setup
make sure all scripts (files ending in .sh) have run permissions. If not, add run permission by running in the main directory:
```
chmod +x *.sh
```

# Running all test
Make sure your solution is in the form of ex<number>.asm
Run ./run_all.sh in the main directory, this should run everything and print PASS or FAIL for each test and at the end an indication if one of the tests fails.

# Run specific test
Run ./run_test.sh <ex_solution_file> <test_file>

# Debugging specific test
Run ./debug_test.sh <ex_solution_file> <test_file>
This should open gdb on the specific test

# Credits
Almog Tabo and Nadav Tur
Special thanks to (for additional tests): Matan Hoory, Arad Reder and Nir Abramovich.

