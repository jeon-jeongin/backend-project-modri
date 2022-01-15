-- DB 생성 : modriDB
CREATE DATABASE modriDB;
use modriDB;

DROP DATABASE modriDB;

DROP TABLE modriUserTBL;


-- table 생성
-- 회원관리 table
CREATE TABLE modriUserTBL(
		id varchar(10) NOT NULL PRIMARY KEY,
		pass varchar(20) NOT NULL,
		name varchar(10) NOT NULL ,
		gender varchar(10) NULL,
        birth date,
        date datetime NOT NULL DEFAULT now(),
        grade tinyint NOT NULL DEFAULT 1,
        
        CONSTRAINT modriUserTBL_uGender_ck check(gender IN ('M','F')),
		CONSTRAINT modriUserTBL_uGrade_ck check(grade IN (0,1))
);

SELECT * FROM modriUserTBL;

-- table 생성
-- 상품관리 table
DROP TABLE modriProTBL; 
CREATE TABLE modriProTBL(
	pno INT AUTO_INCREMENT PRIMARY KEY,
	pcategory VARCHAR(20) NOT NULL,
	pname VARCHAR(50) NOT NULL DEFAULT 'Noname',
	pdesc TEXT,
	pprice INT NOT NULL DEFAULT 0,
	purl TEXT NOT NULL
);
	