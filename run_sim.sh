#!/bin/bash

# script that lists all the items in the current folder
nodes=100 			#number of nodes to simulate
avgsend=60000			#average sending interval in ms
experiment=5 			#simulation radio settings 0 --> SF12 - BW125 - CR4/8
simtime=100000			#total running time in ms
nrBS=1			#number of base stations
collisions=1			#number of collisions to simulate
directionality=1			#directionality of the nodes 0 --> omnidirectional, 1 --> directional
networks=1			#network type 0 --> star, 1 --> mesh
basedistance=1000			#base distance in meters

for i in `seq 1 5`;
do
	echo =========================================
	echo Simulation : $i
	echo -----------------------------------------
	python loraDir.py $nodes $avgsend $experiment $simtime
	# python directionalLoraIntf.py $nodes $avgsend $experiment $simtime $nrBS $collisions $directionality $networks $basedistance
	echo -----------------------------------------
done


