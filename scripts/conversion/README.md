Activity

1. Conversion steps (from datafiles to cesium files)

--> buildindocker: upload and build the datafiles to docker

--> converttoEPT : convert the files to Entwine Point Tiles files (EPT)

--> convert3DT : convert the EPT files to 3D Tiles files, to be viewed in Cesium




2. First dataset contains tif files 

--> First approach: Writing of a script converting the tif files to asc files (modifytif) , and then of a script converting the asc files to las files (asctolas)

--> Second approach: Merging the two scripts in one (modifytif), asctolas no longer used.

Problem: resulting files lacking GPS data, not visualizable in Cesium --> Troubleshooting => Time loss

--> Third approach: 
 
 * Using cesium-terrain-builder (https://github.com/geo-data/cesium-terrain-builder/) to convert the tif files to terrain files, normally visualizable with Cesium : resulting files in data/tilesets

* Visualizing the data using cesium-terrain-server (https://github.com/geo-data/cesium-terrain-server) : NOT WORKING




3. Las files in the second dataset

--> Launching the conversion scripts on those files
 Problem: resulting files lacking GPS data, not visualizable in Cesium 
 
 Solution: Use Potree - Didn't have time to implement this part
