#!/bin/bash
echo 'Welcome to BFCounter!'

MAX=32
for ((k=20; $k<MAX; k++))
do
	echo ""
	echo $k"-mer processing"
	echo "---------------------------"
	../BFCounter/BFCounter count -k $k --verbose -n 500000 -o $k"-mer.raw" Ecoli_40x.fq2
#../BFCounter/BFCounter count -k $k --verbose -n 100000 -o $k"-mer.raw" small.fq
	../BFCounter/BFCounter dump -k $k --verbose -i $k"-mer.raw" -o $k"-mer"
	rm $k"-mer.raw" -rf
done

