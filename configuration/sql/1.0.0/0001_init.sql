--liquibase formatted sql
--changeset anhnt:1
CREATE TABLE properties (
     application VARCHAR(200),
     profile     VARCHAR(200),
     label       VARCHAR(200),
     `key`         VARCHAR(200),
     value       VARCHAR(800),
     primary key (application,profile,label, `key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE message (
  code varchar(9) NOT NULL,
  message varchar(500) DEFAULT NULL,
  message_fr varchar(500) DEFAULT NULL,
  PRIMARY KEY (code)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


insert into properties values
('application','default','master','spring.jpa.show-sql',true),
--comment ('application','default','master','spring.jpa.hibernate.ddl-auto','create'),
('application','default','master','spring.jpa.hibernate.ddl-auto','validate'),
('application','default','master','spring.jpa.properties.hibernate.format_sql',true),
('application','default','master','spring.datasource.username',"root"),
--comment ('application','default','master','spring.datasource.password',"Welcome1"),
('application','default','master','spring.datasource.password',"{cipher}AgBGGd2aC86+DTdiQbNRpZ18eyH2W8Aa3k5pAdMBgTaVLCfe1OaUtMvOeWQWRB3OMBvuShRiObmkR9q8zmsdB83YQj/L+Jzmu2vpCLciSX3hLhxC4NyB8kVKNtnYTUfXS9RaKvNH6dChvCSJ/DpYBzeH4nBVm0ZoFTZ3KnD9OCIJqD9uzanFJKLtbHyzl0nJ3tDhulKW90C8OLcayIpLAd83RXBiIMHpKV7pyOAB6IuNm+b0Mf4XnYehxd8Ba1AyE6hyCKQwS44H7mmGdZa0wV83cCf+mPH5GnQ+SKELGBcZerO9d+E2bE8cU2aZf7NSQOI8MwPWjXCboiviYypWCliQM9dZKL9phovoOJPsKG6nYTX1DMkNbzl2zobYu/z7q2rcrtCzJq8OrfolcOAXIhe9FsJL4Gisv84kJP2UdNacjSWRotGRj3I8Mw6Y/7XzTZxmfmmeQTTCF8mZWIrmHUO2ZeKlQVKklfj5kLo9ngGfA8XI+0FfiTewaELdbY14XVNOaTWPWR5Yg2uYI63oAyLVi0NyT+tdOIGYRtJjS96Xo5ryBkOEFqDR4e3E/Y4aYYHqQtYhy2r8ymYxbcrz8osw3XRwpNmGKnwxGh4p15B7OHb39B1Z47F/KeQxZIju7ZcBVqDpBzKaQJeBPJXu6k2oKleCU3MSdqrRSi5NZ21gH1NS370IQ5LLZfxp6FrwpgogGBkxBc3U3i5XiCtDtp6L"),
--comment ('application','default','master','spring.jpa.generate-ddl',true),
--comment ('application','default','master','eventuatelocal.kafka.bootstrap.servers','localhost:9092'),
--comment ('application','default','master','cdc.service.url','http://localhost:8099'),
('application','default','master','spring.cloud.bus.enabled',true),
('application','default','master','spring.cloud.bus.trace.enabled',true),
('application','default','master','management.endpoint.bus-refresh.enabled',true),
('application','default','master','management.endpoints.web.exposure.include','*'),
('application','default','master','management.endpoint.health.enabled',true),
('application','default','master','management.endpoint.info.enabled',true),
('application','default','master','management.endpoints.enabled-by-default',true),
('application','default','master','feign.client.config.default.connectTimeout',5000),
('application','default','master','feign.client.config.default.readTimeout',5000),
('application','default','master','feign.client.config.default.loggerLevel','basic'),
--comment ('application','default','master','springdoc.swagger-ui.path','/swagger-ui.html'),
('application','default','master','springdoc.remove-broken-reference-definitions',false),
('application','default','master','feign.client.config.configuration.url','http://localhost:7000/configuration'),
('application','default','master','feign.client.config.configuration.connectTimeout',5000),
('application','default','master','feign.client.config.configuration.readTimeout',5000),
('application','default','master','feign.client.config.configuration.loggerLevel','HEADERS');


--changeset anhnt:2
insert into properties values
('customer','default','master','spring.datasource.url',"jdbc:mysql://localhost:3306/customer?useUnicode=yes&characterEncoding=UTF-8&rewriteBatchedStatements=true&useSSL=false&requireSSL=false"),
('customer','default','master','server.port',8021),
('customer','default','master','server.servlet.contextPath','/customer'),
('customer','default','master','logging.level.com.anhnt.customer.client','DEBUG'),
('customer','default','master','feign.client.config.payment.url','http://localhost:8022/payment'),
('customer','default','master','feign.client.config.payment.connectTimeout',5000),
('customer','default','master','feign.client.config.payment.readTimeout',5000),
('customer','default','master','feign.client.config.payment.loggerLevel','HEADERS'),


--comment ('customer','default','master','feign.client.config.configuration.requestInterceptors','feign.auth.BasicAuthRequestInterceptor'),




('payment','default','master','spring.datasource.url',"jdbc:mysql://localhost:3306/payment?useUnicode=yes&characterEncoding=UTF-8&rewriteBatchedStatements=true&useSSL=false&requireSSL=false"),
('payment','default','master','server.port',8022),
('payment','default','master','server.servlet.contextPath','/payment'),
('payment','default','master','logging.level.root','DEBUG'),
('report','default','master','server.port',8023),
('report','default','master','server.servlet.contextPath','/report'),
('report','default','master','spring.datasource.url',"jdbc:mysql://localhost:3306/report?useUnicode=yes&characterEncoding=UTF-8&rewriteBatchedStatements=true&useSSL=false&requireSSL=false"),

('api-gateway','default','master','spring.datasource.url',"jdbc:mysql://localhost:3306/api_gateway?useUnicode=yes&characterEncoding=UTF-8&rewriteBatchedStatements=true&useSSL=false&requireSSL=false"),
('api-gateway','default','master','server.port',8024),
('api-gateway','default','master','spring.cloud.gateway.routes[0].id','configuration'),
('api-gateway','default','master','spring.cloud.gateway.routes[0].uri','http://localhost:7000'),
('api-gateway','default','master','spring.cloud.gateway.routes[0].predicates[0].name','Path'),
('api-gateway','default','master','spring.cloud.gateway.routes[0].predicates[0].args.pattern','/api-gateway/configuration/{path:^(?!internal$).*$}/**'),
('api-gateway','default','master','spring.cloud.gateway.routes[0].filters[0].name','RewritePath'),
('api-gateway','default','master','spring.cloud.gateway.routes[0].filters[0].args.regexp','/api-gateway/(?<remaining>.*)'),
('api-gateway','default','master','spring.cloud.gateway.routes[0].filters[0].args.replacement','/${remaining}'),
('api-gateway','default','master','spring.cloud.gateway.routes[1].id','customer'),
('api-gateway','default','master','spring.cloud.gateway.routes[1].uri','http://localhost:8021'),
('api-gateway','default','master','spring.cloud.gateway.routes[1].predicates[0].name','Path'),
('api-gateway','default','master','spring.cloud.gateway.routes[1].predicates[0].args.pattern','/api-gateway/customer/{path:^(?!internal$).*$}/**'),
('api-gateway','default','master','spring.cloud.gateway.routes[1].filters[0].name','RewritePath'),
('api-gateway','default','master','spring.cloud.gateway.routes[1].filters[0].args.regexp','/api-gateway/(?<remaining>.*)'),
('api-gateway','default','master','spring.cloud.gateway.routes[1].filters[0].args.replacement','/${remaining}'),
('api-gateway','default','master','spring.cloud.gateway.metrics.enabled',true),
('api-gateway','default','master','management.endpoint.gateway.enabled',true),
('api-gateway','default','master','spring.cloud.gateway.default-filters[0].name','CacheRequestBody'),
('api-gateway','default','master','spring.cloud.gateway.default-filters[0].args.bodyClass','java.lang.String'),
('api-gateway','default','master','spring.cloud.gateway.default-filters[1].name','AddResponseHeader'),
('api-gateway','default','master','spring.cloud.gateway.default-filters[1].args.name','X-Response-Default-Red'),
('api-gateway','default','master','spring.cloud.gateway.default-filters[1].args.value','Blue');

insert into message values
('AGW00001', 'Invalid Signature', '[FR]- Invalid Signature'),
('AGW00002', 'Header [%s] is Required', '[FR] - Header [%s] is Required'),
('AGW99999', 'Internal Server Error: %s', '[FR] - Internal Server Error: %s'),
('CFG00001', 'Unauthorized', '[FR] - Unauthorized'),
('CUS99999', 'Internal Server Error: %s', '[FR] - Internal Server Error: %s');
