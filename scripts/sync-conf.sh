# deploy bootstrap-sql

cd ~/bootstrap-sql && \
~/demo-kit/scripts/kill-all.sh && \
cp -f conf/* ~/spark/conf/ && \
~/spark-ec2/copy-dir --delete ~/spark/conf && \
~/demo-kit/scripts/start-all.sh
