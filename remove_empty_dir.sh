#!/bin/bash
#filename:remove_empty_dir.sh
if [ $# -ne 1 ]
then 
	echo "Usage: $0 [path] "
else 

	for i in `find $1 -type d`
	do
		if [ `find $i -type f 2>/dev/null| wc -l ` = 0 ]
		then
		       echo rm -rf $i
			rm -rf $i
		fi
	done
fi
