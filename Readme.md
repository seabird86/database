## Database Migration

```
docker network create anh-network
```

```
docker run -d -p 3306:3306 --net=anh-network --name mysql -m 512M -e MYSQL_ROOT_PASSWORD=Welcome1 --platform=linux/amd64 mysql:8.0
```

1. Setting liquibase.properties

```
username=root
password=Welcome1
classpath=/Users/admin/Applications/java-17.0.3.1/Contents/Home/lib/mysql-connector-java-8.0.18.jar
```

2. Download Liquibase CLI

Add into .zprofile or .zshrc:

```
JAVA_HOME="/Users/admin/Applications/java-17.0.3.1/Contents/Home"
PATH="${JAVA_HOME}/bin:/Users/admin/Applications/liquibase-4.12.0:${PATH}"
export JAVA_HOME
export PATH
```

2. Run to initialize DB


```
liquibase --defaultsFile=liquibase.properties --changeLogFile=dbchangelog.xml --url="jdbc:mysql://localhost:3306/configuration?createDatabaseIfNotExist=true&useSSL=false&requireSSL=false&allowPublicKeyRetrieval=true"  update -Dservice=configuration
```

```
liquibase --defaultsFile=liquibase.properties --changeLogFile=dbchangelog.xml --url="jdbc:mysql://localhost:3306/customer?createDatabaseIfNotExist=true&useSSL=false&requireSSL=false"  update -Dservice=customer
```

```
liquibase --defaultsFile=liquibase.properties --changeLogFile=dbchangelog.xml --url="jdbc:mysql://localhost:3306/payment?createDatabaseIfNotExist=true&useSSL=false&requireSSL=false"  update -Dservice=payment
```

```
liquibase --defaultsFile=liquibase.properties --changeLogFile=dbchangelog.xml --url="jdbc:mysql://localhost:3306/payment?createDatabaseIfNotExist=true&useSSL=false&requireSSL=false"  update -Dservice=api-gateway
```
