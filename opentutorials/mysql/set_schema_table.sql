-- DB(스키마_schema) 생성
CREATE DATABASE opentutorials;



-- 스키마 삭제
DROP DATABASE opentutorials;



-- 모든 스키마 / 테이블 검색
SHOW DATABASES;
SHOW TABLES;



-- 스키마 사용
USE opentutorials;



-- 테이블 생성
CREATE TABLE topic(
     id INT(11) NOT NULL AUTO_INCREMENT,
     title VARCHAR(100) NOT NULL,
     description TEXT NULL,
     created DATETIME NOT NULL,
     author VARCHAR(30) NULL,
     profile VARCHAR(100) NULL,
     PRIMARY KEY(id)
);



-- 테이블 이름 변경
RENAME TABLE topic TO topic_backup;



-- MySQL 비밀번호 설정
SET PASSWORD = PASSWORD('11111');



-- 테이블 구조 보기
DESC topic;