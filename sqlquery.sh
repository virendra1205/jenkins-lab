#! /bin/bash


SQLDBUSER=$1
SQLDBPASS=$2

mysql -u $SQLDBUSER -p $SQLDBPASS  <<EOF

CREATE DATABASE sampledb01;
USE sampledb01;
CREATE TABLE sampletb01(NAME VARCHAR(20), AGE INT(2), CITY VARCHAR(20), CONTACT VARCHAR(10), TECHNOLOGY VARCHAR(20), VISA VARCHAR(3));
INSERT INTO sampletb01 VALUE ('Girish', 29, 'Pune', '9876543210', 'APP Support', 'NO');
INSERT INTO sampletb01 VALUE ('Shailesh', 34, 'Pune', '9876543210', 'DBA Support', 'YES');
INSERT INTO sampletb01 VALUE ('Virendra', 29, 'Mumbai', '9876543210', 'Linux Support', 'NO');

EOF
