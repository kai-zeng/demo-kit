# deploy bootstrap-sql

cd ~/bootstrap-sql && \
mkdir -p conf && \
cp -f ~/spark/conf/* conf/ && \
build/sbt -DskipTests -Phive -Phive-thriftserver assembly && \
~/demo-kit/scripts/kill-all.sh && \
cp assembly/target/scala-2.10/spark-assembly*.jar ~/spark/lib/spark-assembly-1.3.1-hadoop1.0.4.jar && \
cp examples/target/scala-2.10/spark-examples*.jar ~/spark/lib/spark-examples-1.3.1-hadoop1.0.4.jar && \
~/spark-ec2/copy-dir --delete ~/spark/conf && \
~/spark-ec2/copy-dir --delete ~/spark/lib && \
~/demo-kit/scripts/start-all.sh
