#!/bin/bash

cd /mnt/bootstrap-sql

for option in run-1
do
	for q in {0..13}
	do
		./bin/spark-submit --class org.apache.spark.examples.sql.hive.ConvivaSuite \
			examples/target/scala-2.10/spark-examples-1.3.1-hadoop1.0.4.jar \
			run-1 $q
		../demo-kit/scripts/clean-work.sh
	done
done
