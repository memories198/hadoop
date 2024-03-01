hadoop1:
  /app/hadoop/hadoop-2.6.4/sbin/start-dfs.sh

  /app/hadoop/hadoop-2.6.4/sbin/start-yarn.sh

  hive --service metastore &

  hive --service hiveserver2 &

  zkServer.sh start

hadoop2:
  zkServer.sh start

hadoop3:
  zkServer.sh start

hadoop1:
   /app/hadoop/hbase-1.2.1/bin/start-hbase.sh



-----
