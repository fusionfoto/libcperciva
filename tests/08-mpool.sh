#!/bin/sh

### Constants
c_valgrind_min=1
test_output="${s_basename}-stdout.txt"

### Actual command
scenario_cmd() {
	setup_check_variables
	cd ${scriptdir}/mpool && c_valgrind_cmd=${c_valgrind_cmd} \
	    ./test_mpool.sh 1> ${test_output}

	echo "zzzzzzz DEBUG" 1>&2
	cat ${test_output} >&2
	echo $? > ${c_exitfile}
}
