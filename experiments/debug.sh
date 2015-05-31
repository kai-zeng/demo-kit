#!/bin/bash

cd ~/bootstrap-sql

for q in {0..13}
do
	./bin/spark-submit --class org.apache.spark.examples.sql.hive.ConvivaSuite \
		examples/target/scala-2.10/spark-examples-1.3.1-hadoop1.0.4.jar \
		debug-0 $q
	./bin/spark-submit --class org.apache.spark.examples.sql.hive.ConvivaSuite \
		examples/target/scala-2.10/spark-examples-1.3.1-hadoop1.0.4.jar \
		debug-1 $q
done
