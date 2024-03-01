#!/bin/sh
sqlplus -S 'send/send@orcl' << EOF
        echo "create table......"
        @create_test.sql;
        @create_seq_test_id.sql;
        @create_trigger_test_id.sql;
        echo "create table over"
    exit
EOF
echo "loading..."
sqlldr userid=send/send control='toll.ctl' log='toll.log'
echo "loading over"
