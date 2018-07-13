#!/bin/bash

list=`ls -1 | grep .zip`	#list of zip files
num=`ls | grep .zip | wc -l`	#number of zip files
i=0 			#incrementer

for f in $list		#for each file in $list
do
	((i++))		#incrementation	
	echo -e "\nWorking on $f ($i/$num)..."	#infos	
	unzip $f && rm -v $f	#unzpping and rm if unzip succesfull
done
