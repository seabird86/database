--liquibase formatted sql
--changeset
CREATE DATABASE IF NOT EXISTS payment CHARACTER SET utf8 COLLATE utf8_general_ci;

CREATE TABLE transaction (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  payer_id bigint(20) DEFAULT NULL,
  payee_id bigint(20) DEFAULT NULL,
  amount decimal(20,2) DEFAULT NULL,
  status varchar(255) DEFAULT NULL,
  version bigint(20) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
