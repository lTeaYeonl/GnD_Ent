-- image 파일의 정보를 저장할 테이블 
CREATE TABLE image(
	img_id NUMBER PRIMARY KEY,
	img_name VARCHAR2(100) NOT NULL
);

CREATE SEQUENCE image_seq;