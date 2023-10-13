if [ $# -lt 2 ]; then
	echo "Not enough arguments"
else
	cd $1; find . | sort > ~/diff1; cd
	cd $2; find . | sort > ~/diff2; cd
	diff diff1 diff2
	rm diff1 diff2	
fi
