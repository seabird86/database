## Database Migration

1. Setting liquibase.properties

```
username=root
password=Welcome1
classpath=/Users/ascend/udemy/tool/liquibase/lib/mysql-connector-java-8.0.18.jar
```
2. Run to initialize DB
```
liquibase --defaultsFile=liquibase.properties --changeLogFile=dbchangelog.xml --url="jdbc:mysql://localhost:3306/configuration?createDatabaseIfNotExist=true&useSSL=false&requireSSL=false"  update -Dservice=configuration
```

```
liquibase --defaultsFile=liquibase.properties --changeLogFile=dbchangelog.xml --url="jdbc:mysql://localhost:3306/customer?createDatabaseIfNotExist=true&useSSL=false&requireSSL=false"  update -Dservice=customer
```
