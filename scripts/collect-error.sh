#!/bin/bash

while read line
do
  ssh $line 'grep "Integrity" /vol0/spark/work/*/*/stderr' < /dev/null
done < ~/spark/conf/slaves
