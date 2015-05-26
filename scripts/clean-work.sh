#!/bin/bash

while read line
do
  ssh $line 'rm -r -f /vol0/spark/work/* /vol0/spark/spark-* /tmp/*' < /dev/null
done < ~/spark/conf/slaves

rm -r -f /tmp/*
