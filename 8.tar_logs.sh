#!/bin/bash

# This script creates a tar ball for each file under ~/logs/*.log 


for file in ~/logs/*.log
do
	tar -czvf $file.tar.gz $file
done

