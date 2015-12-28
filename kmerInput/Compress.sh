#!/bin/bash
ls | grep mer | while read line;
do
	echo $line" Compressing";
	zip $line.zip $line;
done
