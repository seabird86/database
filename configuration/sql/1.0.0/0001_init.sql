--liquibase formatted sql
--changeset anhnt:1
CREATE TABLE properties (
     application VARCHAR(200),
     profile     VARCHAR(200),
     label       VARCHAR(200),
     `key`         VARCHAR(200),
     value       VARCHAR(200),
     primary key (application,profile,label, `key`)
);
insert into properties values
('application','default','master','spring.jpa.show-sql',true),
--comment ('application','default','master','spring.jpa.hibernate.ddl-auto','create'),
('application','default','master','spring.jpa.hibernate.ddl-auto','validate'),
('application','default','master','spring.jpa.properties.hibernate.format_sql',true),
('application','default','master','spring.datasource.username',"root"),
('application','default','master','spring.datasource.password',"Welcome1"),
--comment ('application','default','master','spring.jpa.generate-ddl',true),
--comment ('application','default','master','eventuatelocal.kafka.bootstrap.servers','localhost:9092'),
--comment ('application','default','master','cdc.service.url','http://localhost:8099'),
('application','default','master','spring.cloud.bus.enabled',true),
('application','default','master','spring.cloud.bus.trace.enabled',true),
('application','default','master','management.endpoint.bus-refresh.enabled',true),
--comment ('application','default','master','management.endpoints.web.exposure.include','*'),
('application','default','master','management.endpoint.health.enabled',true),
('application','default','master','management.endpoint.info.enabled',true),
('application','default','master','management.endpoints.enabled-by-default',true);

--changeset anhnt:2
insert into properties values
('customer','default','master','spring.datasource.url',"jdbc:mysql://localhost:3306/customer?useUnicode=yes&characterEncoding=UTF-8&rewriteBatchedStatements=true&useSSL=false&requireSSL=false"),
('customer','default','master','server.port',8021),
('customer','default','master','server.servlet.contextPath','/customer'),
('payment','default','master','spring.datasource.url',"jdbc:mysql://localhost:3306/payment?useUnicode=yes&characterEncoding=UTF-8&rewriteBatchedStatements=true&useSSL=false&requireSSL=false"),
('payment','default','master','server.port',8022),
('payment','default','master','server.servlet.contextPath','/payment'),
('payment','default','master','logging.level.root','DEBUG'),
('report','default','master','server.port',8023),
('report','default','master','server.servlet.contextPath','/report'),
('report','default','master','spring.datasource.url',"jdbc:mysql://localhost:3306/report?useUnicode=yes&characterEncoding=UTF-8&rewriteBatchedStatements=true&useSSL=false&requireSSL=false");
