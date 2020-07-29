-- image 파일의 정보를 저장할 테이블 
CREATE TABLE image(
	img_id NUMBER PRIMARY KEY,
	img_name VARCHAR2(100) NOT NULL,
	at_id NUMBER,
	page_id NUMBER
);

CREATE SEQUENCE image_seq;

-- 아티스트의 정보를 저장할 테이블
CREATE TABLE artist(
	at_id NUMBER PRIMARY KEY,
	at_e_name VARCHAR2(100) NOT NULL,
	at_k_name VARCHAR2(100) NOT NULL,
	at_r_name VARCHAR2(100) NOT NULL,
	main_img VARCHAR2(100) NOT NULL,
	art_img VARCHAR2(100) NOT NULL,
	s_msg VARCHAR2(255) NOT NULL,
	l_msg CLOB NOT NULL,
	at_d_day VARCHAR2(100) NOT NULL,
	country VARCHAR2(100) NOT NULL,
	at_y_link VARCHAR2(255) NOT NULL,
	fb_link VARCHAR2(255) NOT NULL,
	insta_link VARCHAR2(255) NOT NULL,
	twitter_link VARCHAR2(255) NOT NULL,
	youtube_link VARCHAR2(255) NOT NULL,
	official_site VARCHAR2(255) NOT NULL
);

CREATE SEQUENCE artist_seq;

-- 최신 뮤직비디오의 정보를 저장할 테이블
CREATE TABLE n_mv(
	mv_id NUMBER PRIMARY KEY,
	mv_link VARCHAR2(255) NOT NULL
);

CREATE SEQUENCE n_mv_seq;

-- 페이지 아이디값의 정보를 저장할 테이블
CREATE TABLE page_id(
	page_id NUMBER PRIMARY KEY
);

CREATE SEQUENCE page_id_seq;