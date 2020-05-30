mysqldump -u root -pArush@123 -h db sampledb01 > /tmp/sampledb01_backup.sql

echo "compressing SQL Backup file "
bzip /tmp/sampledb01_backup.sql 

echo "Uploading backup to AWS S3 bucket"
export AWS_ACCESS_KEY_ID=KEY
export AWS_SECRET_KEY=PASS

aws s3 cp /tmp/sampledb01_backup.sql s3://BUCKETNAME/sampledb01_backup.sql.bz2

