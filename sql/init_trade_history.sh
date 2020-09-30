#!/bin/bash

MYSQL_HOST="hce-tradehistory-01.c65diftnfea9.us-east-1.rds.amazonaws.com"
MYSQL_USER="admin"
MYSQL_PASS="ZaQxSw2020.."
MYSQL_DB="hce_tradehistory_01"

for i in `seq 0 99`
do
    echo "create table balance_history_$i"
    mysql --defaults-extra-file=../client.cnf -D${MYSQL_DB} -e "CREATE TABLE balance_history_$i LIKE balance_history_example;"
done

for i in `seq 0 99`
do
    echo "create table order_history_$i"
    mysql --defaults-extra-file=../client.cnf -D${MYSQL_DB} -e "CREATE TABLE order_history_$i LIKE order_history_example;"
done

for i in `seq 0 99`
do
    echo "create table order_detail_$i"
    mysql --defaults-extra-file=../client.cnf -D${MYSQL_DB} -e "CREATE TABLE order_detail_$i LIKE order_detail_example;"
done

for i in `seq 0 99`
do
    echo "create table deal_history_$i"
    mysql --defaults-extra-file=../client.cnf -D${MYSQL_DB} -e "CREATE TABLE deal_history_$i LIKE deal_history_example;"
done

for i in `seq 0 99`
do
    echo "create table user_deal_history_$i"
    mysql --defaults-extra-file=../client.cnf -D${MYSQL_DB} -e "CREATE TABLE user_deal_history_$i LIKE user_deal_history_example;"
done
