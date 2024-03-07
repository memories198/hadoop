load data
infile 'test.csv'
badfile 'test.csv'
truncate
into table test
fields terminated by ','
trailing nullcols
(MONTH,
USER_ID,
SERVICE_ID,
COUNTER_NUMBER,
COUNT_NUM,
CITY_CODE,
ADD1,
ADD2,
ADD3,
ADD4,
ADD5)
