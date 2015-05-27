# deploy bootstrap-sql

cd /mnt/bootstrap-sql && \
/mnt/demo-kit/scripts/kill-all.sh && \
cp -f conf/* ~/spark/conf/ && \
~/spark-ec2/copy-dir --delete ~/spark/conf && \
/mnt/demo-kit/scripts/start-all.sh
