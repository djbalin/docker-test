# Description

![hej](./img/architecture.png)

# How to use Jans Dejlige SQL Playground

## Set up and run container

`cd` into the directory containing the `compose.yaml` file

Build and run the docker compose images in the background:

`$ docker compose up -d`

Verify that the container `docker-test-mysql-1`, using the image `mysql:latest` is running by running the command

`$ docker ps`

Open an interactive terminal inside the aforementioned container

`$ docker exec -it docker-test-mysql-1 /bin/bash`

The command line should now look something like: `bash-4.4#`

### **_Lazy shortcut if you don't want to below_**:

`# bash /mnt/jans_sql_playground.sh`

## Create and populate database

Create a database in MySQL and give it a name. In this example, the name "JanDB" is used.

`# mysql -e "create database JanDB;"`

Populate the database just created by:

`# mysql JanDB < /mnt/jans_sql_script.sql`

Open an MySQL terminal, use the database just created and populated, and verify that it contains the expected data:

```
# mysql
mysql> use JanDB;
mysql> select * from Persons;
```

This query should output something that looks like this:

| FirstName | LastName   | Age | ID  |
| --------- | ---------- | --- | --- |
| Jan       | Balin      | 29  | 1   |
| Roman     | Grygorenko | 33  | 2   |
| Martin    | Kedmenec   | 27  | 3   |

## Time for joy

Now, to find out which languages these three champs speak, run the following command:

`mysql> source /mnt/jans_sql_query.sql`
