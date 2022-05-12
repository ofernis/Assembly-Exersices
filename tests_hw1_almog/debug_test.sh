#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

YOUR_ASM=$1
TEST=$2
TEST_NAME=$(basename -- "${TEST}")
as "$YOUR_ASM" "$TEST" -o merged.o

if [ -f "merged.o" ]; then
	ld merged.o -o merged.out
	if [ -f "merged.out" ]; then
		which gef &> /dev/null
		if [ $? -eq 0 ]; then
			gef merged.out
		else
			gdb merged.out
		fi
	else
		echo "${YOUR_ASM} could not be created (ld stage) with ${TEST_NAME}: ${RED}FAIL${NC}"
		STATUS=1
	fi
else
	echo "${YOUR_ASM} could not be created (as stage) with ${TEST_NAME}: ${RED}FAIL${NC}"
	STATUS=1
fi

rm merged.*
exit ${STATUS}
