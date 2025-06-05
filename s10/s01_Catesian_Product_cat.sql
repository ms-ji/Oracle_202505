--STEP 1. cat_a, cat_b, cat_c를 생성하고 데이터를 입력
CREATE TABLE cat_a(
 NO NUMBER,
 NAME VARCHAR2(1)
 );
 
 INSERT INTO cat_a VALUES(1,'A');
 INSERT INTO cat_a VALUES(2,'B');
 
 CREATE TABLE cat_b(
 NO NUMBER,
 NAME VARCHAR2(1)
 );
 INSERT INTO cat_b VALUES(1,'C');
 INSERT INTO cat_b VALUES(2,'D');
  
 CREATE TABLE cat_c(
 NO NUMBER,
 NAME VARCHAR2(1)
 );
 
 INSERT INTO cat_c VALUES(1,'E');
 INSERT INTO cat_c VALUES(2,'F');