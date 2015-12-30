#!/bin/bash
for ((k=20; $k<31; k++))
do
	echo $k"-mer";
	./a.out  ./Counter/$k"-mer" ./Counter01/$k"-mer" > ./data/$k"-data";
done
