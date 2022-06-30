--liquibase formatted sql
--changeset anhnt:1
CREATE DATABASE IF NOT EXISTS customer CHARACTER SET utf8 COLLATE utf8_general_ci;

CREATE TABLE customer (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  username varchar(50) DEFAULT NULL,
  name varchar(255) DEFAULT NULL,
  mobile varchar(12) DEFAULT NULL,
  active tinyint(1) DEFAULT NULL,
  date_of_birth date DEFAULT NULL,
  verified_datetime datetime DEFAULT NULL,
  available_time time DEFAULT NULL,
  version bigint(20) NOT NULL,
  created_datetime datetime NOT NULL,
  updated_datetime datetime NOT NULL,
  balance decimal(20,6) DEFAULT NULL,
  status VARCHAR(10) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
