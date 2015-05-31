#!/bin/bash

YJP=`ls /root/ | grep yjp`
echo "SPARK_DAEMON_JAVA_OPTS+=' -agentpath:/root/$YJP/bin/linux-x86-64/libyjpagent.so=sampling'" >> ~/spark/conf/spark-env.sh
echo "export SPARK_DAEMON_JAVA_OPTS" >> ~/spark/conf/spark-env.sh
echo "SPARK_JAVA_OPTS+=' -agentpath:/root/$YJP/bin/linux-x86-64/libyjpagent.so=sampling'" >> ~/spark/conf/spark-env.sh
echo "export SPARK_JAVA_OPTS" >> ~/spark/conf/spark-env.sh

~/spark-ec2/copy-dir --delete ~/spark/conf/
cp ~/spark/conf/* ~/bootstrap-sql/conf/

~/demo-kit/scripts/kill-all.sh && \
~/demo-kit/scripts/start-all.sh