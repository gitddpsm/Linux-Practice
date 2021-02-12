#! /bin/bash

if [ "$*" = "" ]
then
  echo ! Use \$0 args ... 
  TEXT="no args"
else 
  argsi=$*
  TEXT="argsi $argsi"
fi

dir=abc

for k in {2010..2021}
  do
    mkdir $k
    for j in {1..12}
      do
        mkdir ./$k/$j
        for i in {1..7}
        do
          echo "creating /$k/$j/$dir$i"
          touch ./$k/$j/$dir$i.txt
          echo "file created ./$k/$j/$dir$i" > ./$k/$j/$dir$i.txt
        done
      done
  done

echo $TEXT
