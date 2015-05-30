#!/bin/sh

exercises=(
	/#divide/
	/#hello5/
	/#hello_x_times/
	/#string_plus/
	/#join_reverse_array/
	/#array_tack_join/
	/Table/
	/Table2#height_times2/
)

if [ $# -lt 1 ]; then
	echo "Usage: $0 [number]"
	echo "[number] is the exercise number you want to run tests for."
	exit 1
fi

ruby exercises_spec.rb --name ${exercises[$1 - 1]}
