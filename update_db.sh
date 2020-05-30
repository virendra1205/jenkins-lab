#! /bin/bash 

export counter=0

#mysql -u root -pArush@123 <<EOF
  #CREATE DATABASE employees;
  #USE employees;
  #create table employee(id int(3) not null, firstname varchar(20) not null, lastname varchar(20) not null, age int(2) not null);
#EOF

for i in `cat random_name.txt`;
do 

  export counter=$((counter+1))
  firstname=$(echo $i | awk -F',' '{print $1}')
  lastname=$(echo $i | awk -F',' '{print $2}')
  age=$(shuf -i 20-60 -n1)
  #echo "$counter  | FirstName: $firstname |  LastName: $lastname | age: $age"

  mysql -u root -pArush@123 employees -e "insert into employee values ($counter, '$firstname', '$lastname', $age)"
 
done
