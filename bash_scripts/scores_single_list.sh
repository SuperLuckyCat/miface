#!/bin/bash

FILES=/Users/body_LAB/Desktop/miface/Trial2/Test2_Cosine/Trial2_Cosine_singleList/*

for file in $FILES
do
	cut -f 1,3 -d " " $file > temp1.txt
	cut -f 2,3 -d " " $file > temp2.txt
	cat temp1.txt temp2.txt > temp3.txt
	sort temp3.txt -o temp3.txt
	mv temp3.txt $file
	rm temp1.txt temp2.txt
done