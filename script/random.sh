## Shell Script to generate comma separated values with index and a random number.

#!/bin/sh
dir=/home/cloudshell-user/scripts/
mkdir -p $dir
filename=$dir/inputFile
if [ ! -f $filename ]
then
    touch $filename
fi

for i in $(seq 100)
    do
        for j in $(echo $RANDOM)
            do
             echo "$i, $j" >> $filename
            done
done
