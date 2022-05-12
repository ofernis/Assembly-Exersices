#!/bin/bash

REDBG='\e[41m'
GREENBG='\e[42m'
BLUEBG='\e[44m'
NC='\033[0m' # No Color
STATUS=0

for ex in ex[0-9].asm; do
    printf "${BLUEBG}Running cases tests from TestCases/:${NC}\n"
    for ex_test in TestsCases/$(basename $ex .asm)_test*.asm; do
        if [ -f $gen_test ]; then
            ./run_test.sh $ex $ex_test
		    if [ $? -ne 0 ]; then
                STATUS=1
            fi
        fi
    done
    printf "${BLUEBG}Running tests from last semester from TestsLastSemester/:${NC}\n"
    for given_test in TestsLastSemester/test_$(temp=${ex#"ex"}; temp=${temp%".asm"}; echo $temp)_*; do
        if [ -f $given_test ]; then
            ./run_test.sh $ex $given_test
		    if [ $? -ne 0 ]; then
                STATUS=1
            fi
        fi
    done
    printf "${BLUEBG}Running generated tests from Tests/$(basename $ex .asm)_tests/:${NC}\n"
    for gen_test in Tests/$(basename $ex .asm)_tests/test_*; do
        if [ -f $gen_test ]; then
            ./run_test.sh $ex $gen_test
		    if [ $? -ne 0 ]; then
                STATUS=1
            fi
        fi
    done
    printf "${BLUEBG}Running cases tests from wa group from TestsPublic/cases/:${NC}\n"
    for pub_test in TestsPublic/cases/test_$(basename $ex .asm)*.asm; do
        if [ -f $pub_test ]; then
            ./run_test.sh $ex $pub_test
		    if [ $? -ne 0 ]; then
                STATUS=1
            fi
        fi
    done
    printf "${BLUEBG}Running generated tests from wa group from TestsPublic/generated/:${NC}\n"
    for pub_test in TestsPublic/generated/$(basename $ex .asm)/test_*.asm; do
        if [ -f $pub_test ]; then
            ./run_test.sh $ex $pub_test
		    if [ $? -ne 0 ]; then
                STATUS=1
            fi
        fi
    done
done

if [ $STATUS -eq 0 ]; then
    printf "${GREENBG}ALL PASSED!${NC}\n"
else
    printf "${REDBG}FAILED${NC}\n"
fi
