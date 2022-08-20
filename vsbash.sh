#!/bin/bash

while getopts 'lha:' OPTION; do
	case "$OPTION" in
		l)
				sudo cp  ~ys/scripts/csharpgeneration/generateclass.txt $PWD/${3}
				sudo sed -i -e 's/1/'${2}'/g;s/2/'${3}'/g' $PWD/${3}
				mv $PWD/${3} $PWD/${3}.cs
				;;
		i)
				sudo cp  ~ys/scripts/csharpgeneration/generateinterface.txt I$PWD/${3}
				sudo sed -i -e 's/1/'${2}'/g;s/2/'${3}'/g' $PWD/${3}
				mv $PWD/${3} $PWD/${3}.cs
				;;
	esac
done


