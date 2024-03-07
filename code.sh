sqoop import --append --connect jdbc:oracle:thin:@92.16.19.1:1521:orcl --username send --password send --table TEST --columns ID,MONTH,USER_ID,SERVICE_ID,COUNTER_NUMBER,COUNT_NUM,CITY_CODE,ADD1,ADD2,ADD3,ADD4,ADD5 --hbase-table FK:SO --hbase-row-key ID --column-family CF -m 1
CREATE EXTERNAL TABLE ODS_AB.SO(KEY STRING,ID STRING,MONTH STRING,USER_ID STRING,SERVICE_NUMBER STRING,COUNT_NUM STRING,CITY_CODE STRING,ADD1 STRING,ADD2 STRING,ADD3 STRING,ADD4 STRING,ADD5 STRING) STORED BY 'org.apache.hadoop.hive.hbase.HBaseStorageHandler' WITH SERDEPROPERTIES( "hbase.columns.mapping" = ":key,CF:ID,CF:MONTH,CF:USER_ID,CF:SERVICE_NUMBER,CF:COUNT_NUM,CF:CITY_CODE,CF:ADD1,CF:ADD2,CF:ADD3,CF:ADD4,CF:ADD5")TBLPROPERTIES ("hbase.table.name"="FK:SO");