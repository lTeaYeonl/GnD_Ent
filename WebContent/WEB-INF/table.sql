-- image 파일의 정보를 저장할 테이블 
CREATE TABLE image(
	img_id NUMBER PRIMARY KEY,
	img_name VARCHAR2(100) NOT NULL
);
CREATE SEQUENCE image_seq;

CREATE TABLE inform(
	inf_name VARCHAR2(100) PRIMARY KEY,
	inf_email VARCHAR2(100) NOT NULL,
	inf_pwd VARCHAR2(100),
	inf_pwd2 VARCHAR2(100),
	inf_nt VARCHAR2(100) NOT NULL,
	inf_sel VARCHAR2(100) NOT NULL,
	inf_sex VARCHAR2(100) NOT NULL,
	inf_bday VARCHAR2(100) NOT NULL,
	inf_height NUMBER,
	inf_weight NUMBER,
	inf_phone VARCHAR2(100),
	inf_job VARCHAR2(100) NOT NULL,
	inf_sns VARCHAR2(100) NOT NULL,
	inf_address VARCHAR2(100) NOT NULL,
	inf_address2 VARCHAR2(100),
	inf_lan VARCHAR2(100) ,
	inf_hobby VARCHAR2(100),
	inf_spec VARCHAR2(255),
	inf_intro CLOB
);
CREATE SEQUENCE inform_seq;