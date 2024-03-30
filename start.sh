hadoop1RootPassword hadoop
hadoop2RootPassword hadoop
hadoop3RootPassword hadoop
udbs01RootPassword oracle

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
hadoop1:
  /opt/ggs/ggsci
    start rephb
    start mgr
udbs01:
  /u01/gg/11.2/ggsci
    start pmp01
    start ext01
    start mgr



