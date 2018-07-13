#!/bin/bash
cd /data/height/las

echo -e "\n==================================================================" >> dl.log 2>&1
echo -e "________________________ DOWNLOADING $1 ______________________" >> dl.log 2>&1
#ls /data/height/ | wc -l >> dl.log 2>&1

#echo 'Downloading files'
curl -O $2 >> dl.log 2>&1

#echo -e "\n_______________________ EXTRACTING $1 ________________________" >> dl.log 2>&1

#echo 'Unzipping files'
#unzip -v  $1.*.zip >> dl.log 2>&1

#echo -e "\n___________________ REMOVING UNECESSARY FILES ____________________" >> dl.log 2>&1

#echo 'Removing archives'
#rm -v $1.*.zip >> dl.log 2>&1

echo -e "\n___________________ READY FOR NEXT DOWNLOAD ______________________" >> dl.log 2>&1
