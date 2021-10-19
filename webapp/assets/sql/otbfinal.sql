/* 유저 */
DROP TABLE users 
	CASCADE CONSTRAINTS;

/* 게임 정보 */
DROP TABLE game 
	CASCADE CONSTRAINTS;

/* 테마-해시태그 */
DROP TABLE theme 
	CASCADE CONSTRAINTS;

/* 게임 찜 목록 */
DROP TABLE game_bookmark 
	CASCADE CONSTRAINTS;

/* 매장 찜 목록 */
DROP TABLE store_bookmark 
	CASCADE CONSTRAINTS;

/* 매장 */
DROP TABLE store 
	CASCADE CONSTRAINTS;

/* 예약 정보 */
DROP TABLE reservation 
	CASCADE CONSTRAINTS;

/* 예약 가능 날짜 */
DROP TABLE reservation_date 
	CASCADE CONSTRAINTS;

/* 예약 가능 시간 */
DROP TABLE reservation_time 
	CASCADE CONSTRAINTS;

/* 보유 게임 정보 */
DROP TABLE owned_game 
	CASCADE CONSTRAINTS;

/* 지역 정보 */
DROP TABLE sido 
	CASCADE CONSTRAINTS;

/* 세부 지역 */
DROP TABLE sigungu 
	CASCADE CONSTRAINTS;

/* 매칭 정보 */
DROP TABLE matching 
	CASCADE CONSTRAINTS;

/* 댓글 */
DROP TABLE comments 
	CASCADE CONSTRAINTS;

/* 답글 */
DROP TABLE reply 
	CASCADE CONSTRAINTS;

/* 리뷰 정보 */
DROP TABLE store_review 
	CASCADE CONSTRAINTS;

/* 메세지 정보 */
DROP TABLE message 
	CASCADE CONSTRAINTS;

/* 매장이미지 */
DROP TABLE store_image 
	CASCADE CONSTRAINTS;

/* 예약시간정보 */
DROP TABLE reservation_time_group 
	CASCADE CONSTRAINTS;

/* 매칭멤버 */
DROP TABLE matching_group 
	CASCADE CONSTRAINTS;

/* 예약맴버 */
DROP TABLE reservation_member 
	CASCADE CONSTRAINTS;

/* 게임 테마 등록 */
DROP TABLE hashtag 
	CASCADE CONSTRAINTS;

/* 유저 */
CREATE TABLE users (
	user_no VARCHAR2(20) NOT NULL, /* 유저 일련번호 */
	user_id VARCHAR2(20), /* 아이디 */
	user_password VARCHAR2(20), /* 비밀번호 */
	user_name VARCHAR2(20), /* 이름 */
	user_nickname VARCHAR2(20), /* 닉네임 */
	user_gender VARCHAR2(20), /* 성별 */
	user_email VARCHAR2(50), /* 이메일 */
	user_birth_date DATE, /* 생년월일 */
	user_phone_no VARCHAR2(20), /* 휴대전화 */
	user_grade NUMBER(1), /* 유저 등급(사업자/ 일반 유저) */
	user_path_profile VARCHAR2(500), /* 프로필 사진 경로 */
	user_reg_date DATE, /* 가입일 */
	sido_code NUMBER(20), /* 시도 번호 */
	sigungu_code NUMBER(20) /* 시군구 번호 */
);

ALTER TABLE users
	ADD
		CONSTRAINT PK_users
		PRIMARY KEY (
			user_no
		);

/* 게임 정보 */
CREATE TABLE game (
	game_no NUMBER(20) NOT NULL, /* 게임 일련번호 */
	game_name_ko VARCHAR2(50), /* 이름(한글) */
	game_name_en VARCHAR2(50), /* 이름(영어) */
	game_path_thumbnail VARCHAR2(100), /* 썸네일 경로 */
	game_people VARCHAR2(20), /* 게임 인원 */
	game_age VARCHAR2(20), /* 게임연령 */
	game_time VARCHAR2(20), /* 게임시간 */
	game_difficulty VARCHAR2(20), /* 게임난이도 */
	game_description VARCHAR2(500), /* 게임설명--본문 */
	game_guide VARCHAR2(500), /* 게임 가이드 - 유튜브 주소 */
	theme_no NUMBER(20), /* 테마 고유번호 */
	hit_count NUMBER(20) /* 찜횟수 */
);

ALTER TABLE game
	ADD
		CONSTRAINT PK_game
		PRIMARY KEY (
			game_no
		);

/* 테마-해시태그 */
CREATE TABLE theme (
	theme_no NUMBER(20) NOT NULL, /* 테마 고유번호 */
	theme_name VARCHAR2(20) /* 테마 종류 */
);

ALTER TABLE theme
	ADD
		CONSTRAINT PK_theme
		PRIMARY KEY (
			theme_no
		);

/* 게임 찜 목록 */
CREATE TABLE game_bookmark (
	game_bookmark_no NUMBER(20) NOT NULL, /* 게임 찜 번호 */
	game_no NUMBER(20), /* 게임 일련번호 */
	user_no VARCHAR2(20) /* 유저 일련번호 */
);

ALTER TABLE game_bookmark
	ADD
		CONSTRAINT PK_game_bookmark
		PRIMARY KEY (
			game_bookmark_no
		);

/* 매장 찜 목록 */
CREATE TABLE store_bookmark (
	store_bookmark_no NUMBER(20) NOT NULL, /* 매장 찜 번호 */
	user_no VARCHAR2(20), /* 유저 일련번호 */
	store_no NUMBER(20) /* 매장 일련번호 */
);

ALTER TABLE store_bookmark
	ADD
		CONSTRAINT PK_store_bookmark
		PRIMARY KEY (
			store_bookmark_no
		);

/* 매장 */
CREATE TABLE store (
	store_no NUMBER(20) NOT NULL, /* 매장 일련번호 */
	user_no VARCHAR2(20), /* 유저 일련번호 */
	store_type VARCHAR(10), /* 업종 */
	store_name VARCHAR2(100), /* 매장 이름 */
	store_business_no VARCHAR2(100), /* 사업자 번호 */
	store_address_road VARCHAR2(500), /* 매장 주소(도로명) */
	store_address_detail VARCHAR2(500), /* 매장 상세주소 */
	store_latitude NUMBER(16,12), /* 위도 */
	store_longitude NUMBER(16,12), /* 경도 */
	store_phone_no VARCHAR2(100), /* 대표전화  */
	store_description VARCHAR2(500), /* 매장소개 */
	store_charge_week NUMBER(10), /* 요금평일 */
	store_charge_weekend NUMBER(10), /* 요금주말 */
	sido_code NUMBER(20), /* 시도 번호 */
	sigungu_code NUMBER(20) /* 시군구 번호 */
);

ALTER TABLE store
	ADD
		CONSTRAINT PK_store
		PRIMARY KEY (
			store_no
		);

/* 예약 정보 */
CREATE TABLE reservation (
	reservation_no NUMBER(20) NOT NULL, /* 예약 일련번호 */
	store_no NUMBER(20), /* 매장 일련번호 */
	reservation_charge_total NUMBER(20), /* 총금액(시간*인원) */
	reservation_charge_people NUMBER(20), /* 결제 인원 */
	reservation_status VARCHAR2(20), /* 예약상태 */
	reservation_type VARCHAR2(20), /* 예약구분(일반, 매칭) */
	reservation_date_no NUMBER(20) /* 날짜 번호 */
);

ALTER TABLE reservation
	ADD
		CONSTRAINT PK_reservation
		PRIMARY KEY (
			reservation_no
		);

/* 예약 가능 날짜 */
CREATE TABLE reservation_date (
	reservation_date_no NUMBER(20) NOT NULL, /* 날짜 번호 */
	store_no NUMBER(20), /* 매장 일련번호 */
	store_reservation_date DATE, /* 날짜 */
	store_reservation_total NUMBER(10), /* 총인원  40 */
	store_reservation_max NUMBER(10), /* 1회최대인원 4 */
	date_type VARCHAR(10) /* 주말 구분 */
);

ALTER TABLE reservation_date
	ADD
		CONSTRAINT PK_reservation_date
		PRIMARY KEY (
			reservation_date_no
		);

/* 예약 가능 시간 */
CREATE TABLE reservation_time (
	reservation_time_no NUMBER(20) NOT NULL, /* 시간 번호 */
	reservation_date_no NUMBER(20), /* 날짜 번호 */
	store_reservation_time VARCHAR2(50) /* 예약 가능 시간 */
);

ALTER TABLE reservation_time
	ADD
		CONSTRAINT PK_reservation_time
		PRIMARY KEY (
			reservation_time_no
		);

/* 보유 게임 정보 */
CREATE TABLE owned_game (
	owned_game_no NUMBER(20) NOT NULL, /* 보유게임 번호 */
	store_no NUMBER(20), /* 매장 일련번호 */
	game_no NUMBER(20) /* 게임 일련번호 */
);

ALTER TABLE owned_game
	ADD
		CONSTRAINT PK_owned_game
		PRIMARY KEY (
			owned_game_no
		);

/* 지역 정보 */
CREATE TABLE sido (
	sido_code NUMBER(20) NOT NULL, /* 시도 번호 */
	sido_name VARCHAR2(20) /* 시도 이름 */
);

ALTER TABLE sido
	ADD
		CONSTRAINT PK_sido
		PRIMARY KEY (
			sido_code
		);

/* 세부 지역 */
CREATE TABLE sigungu (
	sigungu_code NUMBER(20) NOT NULL, /* 시군구 번호 */
	sido_code NUMBER(20) NOT NULL, /* 시도 번호 */
	sigungu_name VARCHAR2(20) /* 시군구 이름 */
);

ALTER TABLE sigungu
	ADD
		CONSTRAINT PK_sigungu
		PRIMARY KEY (
			sigungu_code,
			sido_code
		);

/* 매칭 정보 */
CREATE TABLE matching (
	matching_no NUMBER(20) NOT NULL, /* 매칭 번호 */
	user_no VARCHAR2(20), /* 유저 일련번호 */
	theme_no NUMBER(20), /* 테마 고유번호 */
	game_no NUMBER(20), /* 게임 일련번호 */
	matching_date DATE, /* 날짜 */
	matching_time VARCHAR2(20), /* 시간(텍스트) */
	matching_title VARCHAR2(50), /* 제목 */
	matching_content VARCHAR2(500), /* 내용 */
	sido_code NUMBER(20), /* 시도 번호 */
	sigungu_code NUMBER(20), /* 시군구 번호 */
	matching_people VARCHAR2(20), /* 인원 */
	matching_permission_gender VARCHAR2(20), /* 성별 제한 */
	matching_permission_age VARCHAR2(20), /* 연령 제한 무관 */
	matching_reg_date DATE, /* 등록일 */
	matching_hits NUMBER(20), /* 조회수 */
	matching_status VARCHAR2(20) /* 매칭상태 */
);

ALTER TABLE matching
	ADD
		CONSTRAINT PK_matching
		PRIMARY KEY (
			matching_no
		);

/* 댓글 */
CREATE TABLE comments (
	comment_no NUMBER(20) NOT NULL, /* 댓글 번호 */
	matching_no NUMBER(20), /* 매칭 번호 */
	user_no VARCHAR2(20), /* 유저 일련번호(댓글 작성자) */
	comment_content VARCHAR2(500), /* 내용 */
	comment_reg_date DATE /* 등록시간 */
);

ALTER TABLE comments
	ADD
		CONSTRAINT PK_comments
		PRIMARY KEY (
			comment_no
		);

/* 답글 */
CREATE TABLE reply (
	reply_no NUMBER(20) NOT NULL, /* 답글 번호 */
	comment_no NUMBER(20), /* 댓글 번호 */
	user_no VARCHAR2(20), /* 유저 일련번호(답글 작성자) */
	reply_content VARCHAR2(500), /* 내용 */
	reply_reg_date DATE /* 등록시간 */
);

ALTER TABLE reply
	ADD
		CONSTRAINT PK_reply
		PRIMARY KEY (
			reply_no
		);

/* 리뷰 정보 */
CREATE TABLE store_review (
	store_review_no NUMBER(20) NOT NULL, /* 리뷰 일련번호 */
	reservation_no NUMBER(20) NOT NULL, /* 예약 일련번호 */
	store_no NUMBER(20) NOT NULL, /* 매장 일련번호 */
	store_review_content VARCHAR2(500), /* 리뷰 내용 */
	store_review_score NUMBER(10), /* 평점 */
	store_review_reg_date DATE, /* 등록일 */
	user_no VARCHAR2(20) /* 유저 일련번호(작성자) */
);

ALTER TABLE store_review
	ADD
		CONSTRAINT PK_store_review
		PRIMARY KEY (
			store_review_no
		);

/* 메세지 정보 */
CREATE TABLE message (
	message_no NUMBER(20) NOT NULL, /* 메세지 일련번호 */
	user_send VARCHAR2(20), /* 보낸사람 닉네임 */
	user_receive VARCHAR2(20), /* 받은사람 닉네임 */
	message_content VARCHAR2(500), /* 내용 */
	message_send_date DATE, /* 보낸 시간 */
	message_read_date DATE, /* 받은 시간 */
	message_read_check NUMBER(20) /* 메세지 확인 */
);

ALTER TABLE message
	ADD
		CONSTRAINT PK_message
		PRIMARY KEY (
			message_no
		);

/* 매장이미지 */
CREATE TABLE store_image (
	store_image_no NUMBER(20) NOT NULL, /* 매장이미지번호 */
	store_no NUMBER(20), /* 매장 일련번호 */
	store_path_image VARCHAR2(500) /* 이미지경로 */
);

ALTER TABLE store_image
	ADD
		CONSTRAINT PK_store_image
		PRIMARY KEY (
			store_image_no
		);

/* 예약시간정보 */
CREATE TABLE reservation_time_group (
	reservation_time_group_no NUMBER(20) NOT NULL, /* 예약그룹번호 */
	reservation_no NUMBER(20), /* 예약 일련번호 */
	reservation_time_no NUMBER(20) /* 시간 번호 */
);

ALTER TABLE reservation_time_group
	ADD
		CONSTRAINT PK_reservation_time_group
		PRIMARY KEY (
			reservation_time_group_no
		);

/* 매칭멤버 */
CREATE TABLE matching_group (
	matching_no NUMBER(20) NOT NULL, /* 매칭 번호 */
	user_no VARCHAR2(20), /* 유저 일련번호 */
	matching_people VARCHAR2(20), /* 인원 */
	join_reg_date DATE /* 참가시간 */
);

/* 예약맴버 */
CREATE TABLE reservation_member (
	reservation_member_no NUMBER(20) NOT NULL, /* 예약멤버번호 */
	user_no VARCHAR2(20), /* 유저 일련번호 */
	reservation_charge_per NUMBER(20), /* 입금금액 */
	reservation_no NUMBER(20), /* 예약 일련번호 */
	matching_no NUMBER(20) /* 매칭 번호 */
);

ALTER TABLE reservation_member
	ADD
		CONSTRAINT PK_reservation_member
		PRIMARY KEY (
			reservation_member_no
		);

/* 게임 테마 등록 */
CREATE TABLE hashtag (
	hashtag_no NUMBER(20) NOT NULL, /* 게임 테마 번호 */
	theme_no NUMBER(20), /* 테마 고유번호 */
	game_no NUMBER(20) /* 게임 일련번호 */
);

ALTER TABLE hashtag
	ADD
		CONSTRAINT PK_hashtag
		PRIMARY KEY (
			hashtag_no
		);

ALTER TABLE users
	ADD
		CONSTRAINT FK_sigungu_TO_users
		FOREIGN KEY (
			sigungu_code,
			sido_code
		)
		REFERENCES sigungu (
			sigungu_code,
			sido_code
		);

ALTER TABLE game_bookmark
	ADD
		CONSTRAINT FK_game_TO_game_bookmark
		FOREIGN KEY (
			game_no
		)
		REFERENCES game (
			game_no
		);

ALTER TABLE game_bookmark
	ADD
		CONSTRAINT FK_users_TO_game_bookmark
		FOREIGN KEY (
			user_no
		)
		REFERENCES users (
			user_no
		);

ALTER TABLE store_bookmark
	ADD
		CONSTRAINT FK_users_TO_store_bookmark
		FOREIGN KEY (
			user_no
		)
		REFERENCES users (
			user_no
		);

ALTER TABLE store_bookmark
	ADD
		CONSTRAINT FK_store_TO_store_bookmark
		FOREIGN KEY (
			store_no
		)
		REFERENCES store (
			store_no
		);

ALTER TABLE store
	ADD
		CONSTRAINT FK_users_TO_store
		FOREIGN KEY (
			user_no
		)
		REFERENCES users (
			user_no
		);

ALTER TABLE store
	ADD
		CONSTRAINT FK_sigungu_TO_store
		FOREIGN KEY (
			sigungu_code,
			sido_code
		)
		REFERENCES sigungu (
			sigungu_code,
			sido_code
		);

ALTER TABLE reservation
	ADD
		CONSTRAINT FK_rsrvtn_dt_TO_reservation
		FOREIGN KEY (
			reservation_date_no
		)
		REFERENCES reservation_date (
			reservation_date_no
		);

ALTER TABLE reservation
	ADD
		CONSTRAINT FK_store_TO_reservation
		FOREIGN KEY (
			store_no
		)
		REFERENCES store (
			store_no
		);

ALTER TABLE reservation_date
	ADD
		CONSTRAINT FK_store_TO_reservation_date
		FOREIGN KEY (
			store_no
		)
		REFERENCES store (
			store_no
		);

ALTER TABLE reservation_time
	ADD
		CONSTRAINT FK_rsrvtn_date_TO_rsrvtn_tm
		FOREIGN KEY (
			reservation_date_no
		)
		REFERENCES reservation_date (
			reservation_date_no
		);

ALTER TABLE owned_game
	ADD
		CONSTRAINT FK_game_TO_owned_game
		FOREIGN KEY (
			game_no
		)
		REFERENCES game (
			game_no
		);

ALTER TABLE owned_game
	ADD
		CONSTRAINT FK_store_TO_owned_game
		FOREIGN KEY (
			store_no
		)
		REFERENCES store (
			store_no
		);

ALTER TABLE sigungu
	ADD
		CONSTRAINT FK_sido_TO_sigungu
		FOREIGN KEY (
			sido_code
		)
		REFERENCES sido (
			sido_code
		);

ALTER TABLE matching
	ADD
		CONSTRAINT FK_users_TO_matching
		FOREIGN KEY (
			user_no
		)
		REFERENCES users (
			user_no
		);

ALTER TABLE matching
	ADD
		CONSTRAINT FK_game_TO_matching
		FOREIGN KEY (
			game_no
		)
		REFERENCES game (
			game_no
		);

ALTER TABLE matching
	ADD
		CONSTRAINT FK_sigungu_TO_matching
		FOREIGN KEY (
			sigungu_code,
			sido_code
		)
		REFERENCES sigungu (
			sigungu_code,
			sido_code
		);

ALTER TABLE matching
	ADD
		CONSTRAINT FK_theme_TO_matching
		FOREIGN KEY (
			theme_no
		)
		REFERENCES theme (
			theme_no
		);

ALTER TABLE comments
	ADD
		CONSTRAINT FK_matching_TO_comments
		FOREIGN KEY (
			matching_no
		)
		REFERENCES matching (
			matching_no
		);

ALTER TABLE comments
	ADD
		CONSTRAINT FK_users_TO_comments
		FOREIGN KEY (
			user_no
		)
		REFERENCES users (
			user_no
		);

ALTER TABLE reply
	ADD
		CONSTRAINT FK_comments_TO_reply
		FOREIGN KEY (
			comment_no
		)
		REFERENCES comments (
			comment_no
		);

ALTER TABLE reply
	ADD
		CONSTRAINT FK_users_TO_reply
		FOREIGN KEY (
			user_no
		)
		REFERENCES users (
			user_no
		);

ALTER TABLE store_review
	ADD
		CONSTRAINT FK_users_TO_store_review
		FOREIGN KEY (
			user_no
		)
		REFERENCES users (
			user_no
		);

ALTER TABLE store_review
	ADD
		CONSTRAINT FK_reservation_TO_store_review
		FOREIGN KEY (
			reservation_no
		)
		REFERENCES reservation (
			reservation_no
		);

ALTER TABLE store_review
	ADD
		CONSTRAINT FK_store_TO_store_review
		FOREIGN KEY (
			store_no
		)
		REFERENCES store (
			store_no
		);

ALTER TABLE message
	ADD
		CONSTRAINT FK_users_TO_message
		FOREIGN KEY (
			user_send
		)
		REFERENCES users (
			user_no
		);

ALTER TABLE message
	ADD
		CONSTRAINT FK_users_TO_message2
		FOREIGN KEY (
			user_receive
		)
		REFERENCES users (
			user_no
		);

ALTER TABLE store_image
	ADD
		CONSTRAINT FK_store_TO_store_image
		FOREIGN KEY (
			store_no
		)
		REFERENCES store (
			store_no
		);

ALTER TABLE reservation_time_group
	ADD
		CONSTRAINT FK_rsrvtn_tm_TO_rsrvtn_grp
		FOREIGN KEY (
			reservation_time_no
		)
		REFERENCES reservation_time (
			reservation_time_no
		);

ALTER TABLE reservation_time_group
	ADD
		CONSTRAINT FK_rsrvtn_TO_rsrvtn_tm_grp
		FOREIGN KEY (
			reservation_no
		)
		REFERENCES reservation (
			reservation_no
		);

ALTER TABLE matching_group
	ADD
		CONSTRAINT FK_matching_TO_matching_group
		FOREIGN KEY (
			matching_no
		)
		REFERENCES matching (
			matching_no
		);

ALTER TABLE matching_group
	ADD
		CONSTRAINT FK_users_TO_matching_group
		FOREIGN KEY (
			user_no
		)
		REFERENCES users (
			user_no
		);

ALTER TABLE reservation_member
	ADD
		CONSTRAINT FK_rsrvtn_TO_rsrvtn_mbr
		FOREIGN KEY (
			reservation_no
		)
		REFERENCES reservation (
			reservation_no
		);

ALTER TABLE reservation_member
	ADD
		CONSTRAINT FK_users_TO_reservation_member
		FOREIGN KEY (
			user_no
		)
		REFERENCES users (
			user_no
		);

ALTER TABLE hashtag
	ADD
		CONSTRAINT FK_theme_TO_hashtag
		FOREIGN KEY (
			theme_no
		)
		REFERENCES theme (
			theme_no
		);

ALTER TABLE hashtag
	ADD
		CONSTRAINT FK_game_TO_hashtag
		FOREIGN KEY (
			game_no
		)
		REFERENCES game (
			game_no
		);

-------------------------------------------------------------------------------
-------------------------------SEQUENCE / INSERT-------------------------------
-------------------------------------------------------------------------------

-- SEQUENCE
DROP SEQUENCE seq_users_no;
DROP SEQUENCE seq_game_no;
DROP SEQUENCE seq_theme_no;
DROP SEQUENCE seq_bookmark_no;
DROP SEQUENCE seq_matching_no;
DROP SEQUENCE seq_sido_no;
DROP SEQUENCE seq_sigungu_no;
DROP SEQUENCE seq_store_no;
DROP SEQUENCE seq_reservation_no;
DROP SEQUENCE seq_reservation_date_no;
DROP SEQUENCE seq_reservation_time_no;
DROP SEQUENCE seq_reservation_time_group_no;
DROP SEQUENCE seq_reservation_member_no;
DROP SEQUENCE seq_comment_no;
DROP SEQUENCE seq_reply_no;
DROP SEQUENCE seq_store_image_no;
DROP SEQUENCE seq_owned_game_no;

CREATE SEQUENCE seq_users_no START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE seq_game_no START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE seq_theme_no START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE seq_bookmark_no START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE seq_matching_no START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE seq_sido_no START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE seq_sigungu_no START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE seq_store_no START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE seq_reservation_no START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE seq_reservation_date_no START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE seq_reservation_time_no START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE seq_reservation_time_group_no START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE seq_reservation_member_no START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE seq_comment_no START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE seq_reply_no START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE seq_store_image_no START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE seq_owned_game_no START WITH 1 INCREMENT BY 1 NOCACHE;
-- // SEQUENCE

-- INSERT USERS
INSERT INTO users(user_no, user_id, user_password, user_name, user_nickname, user_gender, user_birth_date, user_grade, user_reg_date)
VALUES ( seq_users_no.NEXTVAL, 'test1', '1234', 'test1', 'test1', 'male', '19901111', 1, sysdate );

INSERT INTO users(user_no, user_id, user_password, user_name, user_nickname, user_gender, user_birth_date, user_grade, user_reg_date)
VALUES ( seq_users_no.NEXTVAL, 'test2', '1234', 'test2', 'test2', 'female', '19931111', 1, sysdate );

INSERT INTO users(user_no, user_id, user_password, user_name, user_nickname, user_gender, user_birth_date, user_grade, user_reg_date)
VALUES ( seq_users_no.NEXTVAL, 'CAFEKANU', 'kanu123', '공유', '카페카누', 'male', '19881111', 2, sysdate );

INSERT INTO users(user_no, user_id, user_password, user_name, user_nickname, user_gender, user_birth_date, user_grade, user_reg_date)
VALUES ( seq_users_no.NEXTVAL, 'asd', 'asd', 'asd', 'asd', 'female', '19991111', 1, sysdate );

INSERT INTO users(user_no, user_id, user_password, user_name, user_nickname, user_gender, user_birth_date, user_grade, user_reg_date)
VALUES ( seq_users_no.NEXTVAL, 'qwe', 'qwe', 'qwe', 'qwe', 'male', '19911111', 1, sysdate );

INSERT INTO users(user_no, user_id, user_password, user_name, user_nickname, user_gender, user_birth_date, user_grade, user_reg_date)
VALUES ( seq_users_no.NEXTVAL, 'zxc', 'zxc', 'zxc', 'zxc', 'female', '19791111', 1, sysdate );

INSERT INTO users(user_no, user_id, user_password, user_name, user_nickname, user_gender, user_birth_date, user_grade, user_reg_date)
VALUES ( seq_users_no.NEXTVAL, 'rose1234', '1234', '김로제', '로제', 'female', '19970211', 1, sysdate );

INSERT INTO users(user_no, user_id, user_password, user_name, user_nickname, user_gender, user_birth_date, user_grade, user_reg_date)
VALUES ( seq_users_no.NEXTVAL, 'jisu1234', '1234', '김지수', '지수', 'female', '19950103', 1, sysdate );

INSERT INTO users(user_no, user_id, user_password, user_name, user_nickname, user_gender, user_birth_date, user_grade, user_reg_date)
VALUES ( seq_users_no.NEXTVAL, 'lisa1234', '1234', '이리사', '리사', 'female', '19970327', 1, sysdate );

-- INSERT THEME
INSERT INTO THEME( theme_no, theme_name) VALUES ( 0, '테마 전체');
INSERT INTO THEME( theme_no, theme_name) VALUES ( SEQ_THEME_NO.nextval, '전략');
INSERT INTO THEME( theme_no, theme_name) VALUES ( SEQ_THEME_NO.nextval, '추상');
INSERT INTO THEME( theme_no, theme_name) VALUES ( SEQ_THEME_NO.nextval, '컬렉터블');
INSERT INTO THEME( theme_no, theme_name) VALUES ( SEQ_THEME_NO.nextval, '가족');
INSERT INTO THEME( theme_no, theme_name) VALUES ( SEQ_THEME_NO.nextval, '파티');
INSERT INTO THEME( theme_no, theme_name) VALUES ( SEQ_THEME_NO.nextval, '어린이');
INSERT INTO THEME( theme_no, theme_name) VALUES ( SEQ_THEME_NO.nextval, '테마');
INSERT INTO THEME( theme_no, theme_name) VALUES ( SEQ_THEME_NO.nextval, '워게임');
INSERT INTO THEME( theme_no, theme_name) VALUES ( SEQ_THEME_NO.nextval, '한글');
INSERT INTO THEME( theme_no, theme_name) VALUES ( SEQ_THEME_NO.nextval, '경제');
INSERT INTO THEME( theme_no, theme_name) VALUES ( SEQ_THEME_NO.nextval, '협력');
INSERT INTO THEME( theme_no, theme_name) VALUES ( SEQ_THEME_NO.nextval, '퍼즐');
INSERT INTO THEME( theme_no, theme_name) VALUES ( SEQ_THEME_NO.nextval, '모험');
INSERT INTO THEME( theme_no, theme_name) VALUES ( SEQ_THEME_NO.nextval, '주사위');
INSERT INTO THEME( theme_no, theme_name) VALUES ( SEQ_THEME_NO.nextval, '카드');
-- // INSERT THEME

-- INSERT GAME
INSERT INTO game (game_no, game_name_ko, game_name_en, game_path_thumbnail, game_people, game_age, game_time, game_difficulty, game_description, game_guide, theme_no) VALUES (seq_game_no.NEXTVAL,'보난자','Bonanza','/thum/1.png','3명~5명','만 10세이상','45분','초급','/desc/1.jpg','OwgKvBQ7bqs',2);
INSERT INTO game (game_no, game_name_ko, game_name_en, game_path_thumbnail, game_people, game_age, game_time, game_difficulty, game_description, game_guide, theme_no) VALUES (seq_game_no.NEXTVAL,'아컴호러','Arkham Horror','/thum/2.png','1명~4명','만 12세이상','60분','고급','/desc/2.jpg','OkaaG0_oAtI',7);
INSERT INTO game (game_no, game_name_ko, game_name_en, game_path_thumbnail, game_people, game_age, game_time, game_difficulty, game_description, game_guide, theme_no) VALUES (seq_game_no.NEXTVAL,'할리갈리','Halli Galli','/thum/3.png','2명~6명','만 6세이상','10분','초급','/desc/3.jpg','0q0yClzjADk',5);
INSERT INTO game (game_no, game_name_ko, game_name_en, game_path_thumbnail, game_people, game_age, game_time, game_difficulty, game_description, game_guide, theme_no) VALUES (seq_game_no.NEXTVAL,'블리츠크리그','Blitzkrieg!','/thum/4.png','1명~2명','만 14세이상','20분','초급','/desc/4.jpg','y9L__EI7dw8',8);
INSERT INTO game (game_no, game_name_ko, game_name_en, game_path_thumbnail, game_people, game_age, game_time, game_difficulty, game_description, game_guide, theme_no) VALUES (seq_game_no.NEXTVAL,'딕싯','Dixit','/thum/5.png','3명~8명','만 8세이상','30분','초급','/desc/5.jpg','L7Dd7nZcEEw',4);
INSERT INTO game (game_no, game_name_ko, game_name_en, game_path_thumbnail, game_people, game_age, game_time, game_difficulty, game_description, game_guide, theme_no) VALUES (seq_game_no.NEXTVAL,'7원더스','7 Wonders','/thum/6.jpg','3명~7명','만 14세이상','30분','초급','/desc/6.jpg','HBUMGsAP4Gc',4);
INSERT INTO game (game_no, game_name_ko, game_name_en, game_path_thumbnail, game_people, game_age, game_time, game_difficulty, game_description, game_guide, theme_no) VALUES (seq_game_no.NEXTVAL,'치킨차차 숨바꼭질','Zicke Zacke','/thum/7.png','2명~5명','만 4세이상','15분','초급','/desc/7.jpg','7a-u9BJkKJw',6);
INSERT INTO game (game_no, game_name_ko, game_name_en, game_path_thumbnail, game_people, game_age, game_time, game_difficulty, game_description, game_guide, theme_no) VALUES (seq_game_no.NEXTVAL,'카탄: 카드게임','Catan: Das schnelle Kartenspiel','/thum/8.png','2명~4명','만 10세이상','30분','중급','/desc/8.jpg','37V2ajpMEic',4);
INSERT INTO game (game_no, game_name_ko, game_name_en, game_path_thumbnail, game_people, game_age, game_time, game_difficulty, game_description, game_guide, theme_no) VALUES (seq_game_no.NEXTVAL,'테라포밍 마스','Terraforming Mars','/thum/9.jpg','1명~5명','만 14세이상','90분','고급','/desc/9.jpg','a52Pq1-JCiw',1);
INSERT INTO game (game_no, game_name_ko, game_name_en, game_path_thumbnail, game_people, game_age, game_time, game_difficulty, game_description, game_guide, theme_no) VALUES (seq_game_no.NEXTVAL,'뱅','Bang!','/thum/10.png','4명~7명','만 8세이상','20분','초급','/desc/10.jpg','IK3S970wSn8',5);
INSERT INTO game (game_no, game_name_ko, game_name_en, game_path_thumbnail, game_people, game_age, game_time, game_difficulty, game_description, game_guide, theme_no) VALUES (seq_game_no.NEXTVAL,'보난자','Bohnanza','/thum/11.png','3명~5명','만 10세이상','45분','초급','/desc/11.jpg','OwgKvBQ7bqs',4);
INSERT INTO game (game_no, game_name_ko, game_name_en, game_path_thumbnail, game_people, game_age, game_time, game_difficulty, game_description, game_guide, theme_no) VALUES (seq_game_no.NEXTVAL,'잭스님트','6 Nimmt!','/thum/12.png','2명~10명','만 8세이상','20분','초급','/desc/12.jpg','9q7SQ6ylIug',4);
INSERT INTO game (game_no, game_name_ko, game_name_en, game_path_thumbnail, game_people, game_age, game_time, game_difficulty, game_description, game_guide, theme_no) VALUES (seq_game_no.NEXTVAL,'우봉고','Ubongo','/thum/13.jpg','1명~4명','만 8세이상','20분','초급','/desc/13.jpg','A3Mbn0m25eA',12);
INSERT INTO game (game_no, game_name_ko, game_name_en, game_path_thumbnail, game_people, game_age, game_time, game_difficulty, game_description, game_guide, theme_no) VALUES (seq_game_no.NEXTVAL,'우노','Uno','/thum/14.png','2명~10명','만 7세이상','20분','초급','/desc/14.jpg','bbtMloNezvM',6);
INSERT INTO game (game_no, game_name_ko, game_name_en, game_path_thumbnail, game_people, game_age, game_time, game_difficulty, game_description, game_guide, theme_no) VALUES (seq_game_no.NEXTVAL,'팬데믹','Pandemic','/thum/15.png','2명~4명','만 8세이상','45분','중급','/desc/15.jpg','urllnrCU_G0',11);
INSERT INTO game (game_no, game_name_ko, game_name_en, game_path_thumbnail, game_people, game_age, game_time, game_difficulty, game_description, game_guide, theme_no) VALUES (seq_game_no.NEXTVAL,'골드러시','Gold River','/thum/16.jpg','2명~5명','만 8세이상','30분','초급','/desc/16.jpg','vdblou9WbYs',11);
INSERT INTO game (game_no, game_name_ko, game_name_en, game_path_thumbnail, game_people, game_age, game_time, game_difficulty, game_description, game_guide, theme_no) VALUES (seq_game_no.NEXTVAL,'다빈치 코드','Da Vinci Code','/thum/17.jpg','2명~4명','만 7세이상','10분','초급','/desc/17.jpg','LkFj3833w14',4);
INSERT INTO game (game_no, game_name_ko, game_name_en, game_path_thumbnail, game_people, game_age, game_time, game_difficulty, game_description, game_guide, theme_no) VALUES (seq_game_no.NEXTVAL,'신비아파트 라온',null,'/thum/18.png','2명~4명','만 5세이상','10분','초급','/desc/18.jpg','qaaoxbNYbv4',6);
INSERT INTO game (game_no, game_name_ko, game_name_en, game_path_thumbnail, game_people, game_age, game_time, game_difficulty, game_description, game_guide, theme_no) VALUES (seq_game_no.NEXTVAL,'마블 봅슬레이','Marble Bobsleigh','/thum/19.jpg','2명~4명','만 6세이상','15분','초급','/desc/19.jpg','0Cn_HesTgQc',6);
INSERT INTO game (game_no, game_name_ko, game_name_en, game_path_thumbnail, game_people, game_age, game_time, game_difficulty, game_description, game_guide, theme_no) VALUES (seq_game_no.NEXTVAL,'워드 캡처','Word Capture','/thum/20.png','2명~6명','만 6세이상','10분','초급','/desc/20.jpg','SDlMApcaWoI',5);
INSERT INTO game (game_no, game_name_ko, game_name_en, game_path_thumbnail, game_people, game_age, game_time, game_difficulty, game_description, game_guide, theme_no) VALUES (seq_game_no.NEXTVAL,'아줄:여름 별장','Azul: Summer Pavilion','/thum/21.jpg','2명~4명','만 8세이상','30분','중급','/desc/21.jpg','KkuPCmA-EIY',1);
INSERT INTO game (game_no, game_name_ko, game_name_en, game_path_thumbnail, game_people, game_age, game_time, game_difficulty, game_description, game_guide, theme_no) VALUES (seq_game_no.NEXTVAL,'영리한 여우','Ganz schön clever','/thum/22.png','1명~4명','만 8세이상','30분','중급','/desc/22.jpg','86ARFeHUMeM',14);
INSERT INTO game (game_no, game_name_ko, game_name_en, game_path_thumbnail, game_people, game_age, game_time, game_difficulty, game_description, game_guide, theme_no) VALUES (seq_game_no.NEXTVAL,'판타지 왕국','Fantasy Realms','/thum/23.jpg','2명~6명','만 10세이상','10분','초급','/desc/23.png','oF4mSFUV4Aw',1);
INSERT INTO game (game_no, game_name_ko, game_name_en, game_path_thumbnail, game_people, game_age, game_time, game_difficulty, game_description, game_guide, theme_no) VALUES (seq_game_no.NEXTVAL,'데드 맨스 드로우','Dead Mans Draw','/thum/24.png','2명~4명','만 13세이상','20분','초급','/desc/24.png','E4gWW_NEjdw',5);
INSERT INTO game (game_no, game_name_ko, game_name_en, game_path_thumbnail, game_people, game_age, game_time, game_difficulty, game_description, game_guide, theme_no) VALUES (seq_game_no.NEXTVAL,'신비아파트 젬블로',null,'/thum/25.png','1명~6명','만 5세이상','20분','초급','/desc/25.jpg','dujYg_a2g1k',6);
INSERT INTO game (game_no, game_name_ko, game_name_en, game_path_thumbnail, game_people, game_age, game_time, game_difficulty, game_description, game_guide, theme_no) VALUES (seq_game_no.NEXTVAL,'브레인 스톰','Brain Storm','/thum/26.png','2명~10명','만 12세이상','10분','초급','/desc/26.jpg','m-bYp-2wWM8',5);
INSERT INTO game (game_no, game_name_ko, game_name_en, game_path_thumbnail, game_people, game_age, game_time, game_difficulty, game_description, game_guide, theme_no) VALUES (seq_game_no.NEXTVAL,'라온 채우기',null,'/thum/27.png','2명~4명','만 5세이상','20분','초급','/desc/27.jpg','QplCLm1LL5o',5);
INSERT INTO game (game_no, game_name_ko, game_name_en, game_path_thumbnail, game_people, game_age, game_time, game_difficulty, game_description, game_guide, theme_no) VALUES (seq_game_no.NEXTVAL,'뮤즈','Muse','/thum/28.png','2명~10명','만 6세이상','10분','초급','/desc/28.png','0osy8uC4bdU',4);
INSERT INTO game (game_no, game_name_ko, game_name_en, game_path_thumbnail, game_people, game_age, game_time, game_difficulty, game_description, game_guide, theme_no) VALUES (seq_game_no.NEXTVAL,'역사의 흐름','Flow of History','/thum/29.png','2명~5명','만 13세이상','60분','고급','/desc/29.png','EES0IDdJnF4',1);
INSERT INTO game (game_no, game_name_ko, game_name_en, game_path_thumbnail, game_people, game_age, game_time, game_difficulty, game_description, game_guide, theme_no) VALUES (seq_game_no.NEXTVAL,'스플렌더','Splender','/thum/30.png','2명~4명','만 10세이상','30분','중급','/desc/30.jpg','78Ga9vT3eIE',1);
-- // INSERT GAME

-- INSERT SIDO
INSERT INTO sido VALUES ( seq_sido_no.NEXTVAL, '서울' );
INSERT INTO sido VALUES ( seq_sido_no.NEXTVAL, '경기' );
INSERT INTO sido VALUES ( seq_sido_no.NEXTVAL, '인천' );
INSERT INTO sido VALUES ( seq_sido_no.NEXTVAL, '부산' );
INSERT INTO sido VALUES ( seq_sido_no.NEXTVAL, '대구' );
INSERT INTO sido VALUES ( seq_sido_no.NEXTVAL, '광주' );
INSERT INTO sido VALUES ( seq_sido_no.NEXTVAL, '대전' );
INSERT INTO sido VALUES ( seq_sido_no.NEXTVAL, '울산' );
INSERT INTO sido VALUES ( seq_sido_no.NEXTVAL, '강원' );
INSERT INTO sido VALUES ( seq_sido_no.NEXTVAL, '경남' );
INSERT INTO sido VALUES ( seq_sido_no.NEXTVAL, '경북' );
INSERT INTO sido VALUES ( seq_sido_no.NEXTVAL, '전남' );
INSERT INTO sido VALUES ( seq_sido_no.NEXTVAL, '전북' );
INSERT INTO sido VALUES ( seq_sido_no.NEXTVAL, '충남' );
INSERT INTO sido VALUES ( seq_sido_no.NEXTVAL, '충북' );
INSERT INTO sido VALUES ( seq_sido_no.NEXTVAL, '제주' );
-- // INSERT SIDO

-- INSERT SIGUNGU
-- 시도1 - 1 ~ 25
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 1, '강남구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 1, '강동구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 1, '강북구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 1, '강서구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 1, '관악구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 1, '광진구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 1, '구로구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 1, '금천구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 1, '노원구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 1, '도봉구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 1, '동대문구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 1, '동작구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 1, '마포구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 1, '서대문구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 1, '서초구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 1, '성동구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 1, '성북구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 1, '송파구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 1, '양천구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 1, '영등포구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 1, '용산구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 1, '은평구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 1, '종로구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 1, '중구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 1, '중랑구' );
-- 시도2 - 26 ~ 48
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 2, '가평군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 2, '고양시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 2, '과천시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 2, '광명시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 2, '광주시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 2, '구리시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 2, '군포시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 2, '김포시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 2, '남양주시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 2, '동두천시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 2, '부천시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 2, '성남시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 2, '수원시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 2, '시흥시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 2, '안산시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 2, '안성시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 2, '안양시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 2, '양주시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 2, '양평군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 2, '여주시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 2, '연천군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 2, '오산시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 2, '용인시' );
-- 시도3 - 49 ~ 58
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 3, '강화군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 3, '계양구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 3, '남동구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 3, '동구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 3, '미주홀구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 3, '부평구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 3, '서구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 3, '연수구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 3, '옹진군');
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 3, '중구' );
-- 시도4 - 59 ~ 74
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 4, '강서구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 4, '금정구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 4, '기장군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 4, '남구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 4, '동구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 4, '동래구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 4, '부산진구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 4, '북구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 4, '사상구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 4, '사하구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 4, '서구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 4, '수영구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 4, '연제구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 4, '영도구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 4, '중구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 4, '해운대구' );
-- 시도5 - 75 ~ 82
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 5, '남구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 5, '달서구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 5, '달성군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 5, '동구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 5, '북구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 5, '서구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 5, '수성구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 5, '중구' );
-- 시도6 - 83 ~ 87
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 6, '광산구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 6, '남구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 6, '동구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 6, '북구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 6, '서구' );
-- 시도7 - 88 ~ 92
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 7, '대덕구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 7, '동구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 7, '서구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 7, '유성구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 7, '중구' );
-- 시도8 - 93 ~ 97
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 8, '남구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 8, '동구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 8, '북구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 8, '울주군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 8, '중구' );
-- 시도9 - 98 ~ 115
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 9, '강릉시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 9, '고성군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 9, '동해시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 9, '삼척시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 9, '속초시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 9, '양구군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 9, '양양군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 9, '영월군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 9, '원주시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 9, '인제군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 9, '정선군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 9, '철원군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 9, '춘천시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 9, '태백시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 9, '평창군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 9, '홍천군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 9, '화천군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 9, '횡성군' );
-- 시도10 - 116 ~ 133
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 10, '거제시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 10, '거창군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 10, '고성군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 10, '김해시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 10, '남해군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 10, '밀양시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 10, '사천시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 10, '산청군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 10, '양산시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 10, '의령군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 10, '진주시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 10, '창녕군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 10, '창원시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 10, '통영시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 10, '하동군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 10, '함안군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 10, '함양군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 10, '합천군' );
-- 시도11 - 134 ~ 156
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 11, '경산시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 11, '경주시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 11, '고령군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 11, '구미시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 11, '군위군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 11, '김천시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 11, '문경시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 11, '봉화군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 11, '상주시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 11, '성주군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 11, '안동시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 11, '영덕군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 11, '영양군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 11, '영주시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 11, '영천시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 11, '예천군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 11, '울릉군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 11, '울진군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 11, '의성군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 11, '청도군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 11, '청송군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 11, '칠곡군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 11, '포항시' );
-- 시도12 - 157 ~ 178
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 12, '강진군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 12, '고흥군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 12, '곡성군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 12, '광양시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 12, '구례군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 12, '나주시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 12, '담양군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 12, '목포시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 12, '무안군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 12, '보성군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 12, '순천시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 12, '산안군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 12, '여수시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 12, '영광군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 12, '영암군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 12, '완도군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 12, '장성군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 12, '장흥군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 12, '진도군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 12, '함평군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 12, '해남군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 12, '화순군' );
-- 시도13 - 179 ~ 192
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 13, '고창군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 13, '군산시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 13, '김제시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 13, '남원시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 13, '무주군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 13, '부안군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 13, '순창군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 13, '완주군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 13, '익산시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 13, '임실군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 13, '장수군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 13, '전주시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 13, '정읍시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 13, '진안군' );
-- 시도14 - 193 ~ 208
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 14, '계룡시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 14, '공주시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 14, '금산군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 14, '논산시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 14, '당진시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 14, '보령시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 14, '부여군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 14, '서산시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 14, '서천군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 14, '아산시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 14, '연기군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 14, '예산군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 14, '천안시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 14, '청양군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 14, '태안군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 14, '홍성군' );
-- 시도15 - 209 ~ 220
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 15, '괴산군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 15, '단양군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 15, '보은군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 15, '연동군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 15, '옥천군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 15, '음성군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 15, '제천시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 15, '증평군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 15, '진천군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 15, '청원군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 15, '청주시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 15, '충주시' );
-- 시도16 - 221, 222
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 16, '서귀포시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 16, '제주시' );
-- // INSERT SIGUNGU

-- INSERT MATCHING/GROUP
INSERT INTO matching VALUES ( seq_matching_no.NEXTVAL, 1, 0, 3, '2022-11-11', '15:00', '광란의 할리갈리!!!!!', '내용1', 1, 8, 2, '성별무관', '나이무관', sysdate, 0, '매칭중' );
INSERT INTO matching_group VALUES ( 1, 1, 2, sysdate );

INSERT INTO matching VALUES ( seq_matching_no.NEXTVAL, 1, 0, 2, '2022-11-11', '15:00', '아컴호러 하실분 구해요!!', '내용2', 2, 33, 3, '남자', '10대,20대,30대', sysdate, 0, '매칭중' );
INSERT INTO matching_group VALUES ( 2, 1, 3, sysdate );

INSERT INTO matching VALUES ( seq_matching_no.NEXTVAL, 1, 0, 3, '2022-11-11', '15:00', '할리갈비 파티!!!', '내용3', 3, 52, 4, '성별무관', '20대,30대', sysdate, 0, '매칭중' );
INSERT INTO matching_group VALUES ( 3, 1, 4, sysdate );

INSERT INTO matching VALUES ( seq_matching_no.NEXTVAL, 1, 0, 4, '2022-11-11', '15:00', '블리츠크리그 입니당~', '내용4', 4, 63, 2, '여자', '30대,40대', sysdate, 0, '매칭중' );
INSERT INTO matching_group VALUES ( 4, 1, 2, sysdate );

INSERT INTO matching VALUES ( seq_matching_no.NEXTVAL, 1, 0, 3, '2022-11-11', '15:00', '할리! 갈리! 할리! 갈리!', '내용5', 1, 6, 3, '남자', '나이무관', sysdate, 0, '매칭중' );
INSERT INTO matching_group VALUES ( 5, 1, 3, sysdate );

INSERT INTO matching VALUES ( seq_matching_no.NEXTVAL, 1, 0, 6, '2022-11-11', '15:00', '7원더스 SEVEN', '내용6', 6, 85, 4, '성별무관', '나이무관', sysdate, 0, '매칭중' );
INSERT INTO matching_group VALUES ( 6, 1, 4, sysdate );

INSERT INTO matching VALUES ( seq_matching_no.NEXTVAL, 1, 0, 7, '2022-11-11', '15:00', '치킨차차 숨바꼭질 치킨 각~', '내용7', 7, 90, 2, '여자', '40대', sysdate, 0, '매칭중' );
INSERT INTO matching_group VALUES ( 7, 1, 2, sysdate );

INSERT INTO matching VALUES ( seq_matching_no.NEXTVAL, 1, 0, 3, '2022-11-11', '15:00', '할리갈리 맨~~~~', '내용8', 1, 11, 3, '남자', '나이무관', sysdate, 0, '매칭중' );
INSERT INTO matching_group VALUES ( 8, 1, 3, sysdate );

INSERT INTO matching VALUES ( seq_matching_no.NEXTVAL, 1, 0, 9, '2022-11-11', '15:00', '전략 No. 1 테라포밍 마스 ㄱ', '내용9', 9, 111, 4, '성별무관', '10대', sysdate, 0, '매칭중' );
INSERT INTO matching_group VALUES ( 9, 1, 4, sysdate );

INSERT INTO matching VALUES ( seq_matching_no.NEXTVAL, 1, 0, 10, '2022-11-11', '15:00', '뱅 하실분 뱅뱅Bang~', '내용10', 10, 118, 2, '여자', '20대', sysdate, 0, '매칭중' );
INSERT INTO matching_group VALUES ( 10, 1, 2, sysdate );

INSERT INTO matching VALUES ( seq_matching_no.NEXTVAL, 1, 0, 3, '2022-11-11', '15:00', '할갈man들 뭉쳐!', '내용11', 1, 16, 3, '남자', '30대', sysdate, 0, '매칭중' );
INSERT INTO matching_group VALUES ( 11, 1, 3, sysdate );

INSERT INTO matching VALUES ( seq_matching_no.NEXTVAL, 1, 0, 12, '2022-11-11', '15:00', '여러분 잭스님트 한번 하실까요?', '내용12', 12, 170, 4, '성별무관', '10대,20대', sysdate, 0, '매칭중' );
INSERT INTO matching_group VALUES ( 12, 1, 4, sysdate );

INSERT INTO matching VALUES ( seq_matching_no.NEXTVAL, 1, 0, 13, '2022-11-11', '15:00', '우봉고 고고고!', '내용13', 13, 180, 2, '여자', '10대,20대,30대', sysdate, 0, '매칭중' );
INSERT INTO matching_group VALUES ( 13, 1, 2, sysdate );

INSERT INTO matching VALUES ( seq_matching_no.NEXTVAL, 1, 0, 3, '2022-11-11', '15:00', '할리갈리 하는 남자들.', '내용14', 1, 5, 3, '남자', '20대', sysdate, 0, '매칭중' );
INSERT INTO matching_group VALUES ( 14, 1, 3, sysdate );

INSERT INTO matching VALUES ( seq_matching_no.NEXTVAL, 1, 0, 15, '2022-11-11', '15:00', '팬데믹 하쉴?', '내용15', 15, 220, 4, '성별무관', '20대,30대,40대', sysdate, 0, '매칭중' );
INSERT INTO matching_group VALUES ( 15, 1, 4, sysdate );

INSERT INTO matching VALUES ( seq_matching_no.NEXTVAL, 1, 0, 16, '2022-11-11', '15:00', '금빛섬광 골드러시 드루와!', '내용15', 16, 221, 2, '남자', '20대,30대', sysdate, 0, '매칭중' );
INSERT INTO matching_group VALUES ( 16, 1, 2, sysdate );

INSERT INTO matching VALUES ( seq_matching_no.NEXTVAL, 1, 0, 17, '2022-11-11', '15:00', '할리갈리 갈리할리!!', '내용15', 1, 1, 3, '남자', '20대,30대', sysdate, 0, '매칭중' );
INSERT INTO matching_group VALUES ( 17, 1, 3, sysdate );

INSERT INTO matching VALUES ( seq_matching_no.NEXTVAL, 1, 0, 8, '2022-11-11', '15:00', '카탄 고고!', '내용8', 8, 93, 3, '남자', '나이무관', sysdate, 0, '매칭중' );
INSERT INTO matching_group VALUES ( 18, 1, 3, sysdate );

INSERT INTO matching VALUES ( seq_matching_no.NEXTVAL, 1, 0, 11, '2022-11-11', '15:00', '콩 카드게임 보난~자!', '내용11', 11, 144, 3, '남자', '30대', sysdate, 0, '매칭중' );
INSERT INTO matching_group VALUES ( 19, 1, 3, sysdate );

INSERT INTO matching VALUES ( seq_matching_no.NEXTVAL, 1, 0, 14, '2022-11-11', '15:00', '보드게임 우노! 유노?', '내용14', 14, 193, 3, '남자', '나이무관', sysdate, 0, '매칭중' );
INSERT INTO matching_group VALUES ( 20, 1, 3, sysdate );

INSERT INTO matching VALUES ( seq_matching_no.NEXTVAL, 1, 0, 3, '2022-11-11', '15:00', '할리갈리에 미친남자!!!', '내용14', 1, 3, 3, '남자', '10대,20대', sysdate, 0, '매칭중' );
INSERT INTO matching_group VALUES ( 21, 1, 3, sysdate );

INSERT INTO matching VALUES ( seq_matching_no.NEXTVAL, 1, 0, 5, '2022-11-11', '15:00', '딕싯 딕싯 딕싯 !!!', '내용5', 5, 77, 3, '남자', '30대', sysdate, 0, '매칭중' );
INSERT INTO matching_group VALUES ( 22, 1, 3, sysdate );

INSERT INTO matching VALUES ( seq_matching_no.NEXTVAL, 1, 0, 3, '2022-11-11', '15:00', '할리갈리 모집합니다~', '내용5', 1, 7, 3, '성별무관', '10대,20대,30개', sysdate, 0, '매칭중' );
INSERT INTO matching_group VALUES ( 23, 1, 3, sysdate );

INSERT INTO matching VALUES ( seq_matching_no.NEXTVAL, 1, 0, 1, '2022-11-11', '15:00', '보난자 함께 하실분~', '내용1', 1, 14, 2, '여자', '10대,20대', sysdate, 0, '매칭중' );
INSERT INTO matching_group VALUES ( 24, 1, 2, sysdate );
-- // INSERT MATCHING/GROUP

-- INSERT STORE
INSERT INTO store(store_no, user_no, store_name, store_latitude, store_longitude, store_phone_no, store_description, store_charge_week, store_charge_weekend, store_address_road, store_address_detail)
VALUES ( seq_store_no.nextval, 3, '카누', 37.494366186594405, 127.01825129365432, '010-6601-3431', '일상을 공유하는 카누카페 입니다! 많은 이용 부탁드립니다^^', 3300, 4400, '서울시 강남구 테헤란로 152', '1층 카페-카누');

INSERT INTO store(store_no, store_name, store_latitude, store_longitude, store_phone_no, store_description, store_charge_week, store_charge_weekend, store_address_road, store_address_detail)
VALUES ( seq_store_no.nextval, '네스카페', 37.499336756210546, 127.0322302565823, '010-5274-1634', '보드게임카페2 입니다, 많은 이용 부탁드립니다.', 3300, 4400, '인천광역시 계양구 아나지로 158', '1층 네스카페');

INSERT INTO store(store_no, store_name, store_latitude, store_longitude, store_phone_no, store_description, store_charge_week, store_charge_weekend, store_address_road, store_address_detail)
VALUES ( seq_store_no.nextval, '폴-바셋', 37.50207799788094, 127.02286735499807, '010-3452-2311', '보드게임카페3 입니다, 많은 이용 부탁드립니다.', 3300, 4400, '경기도 용인시 기흥구 언남로 15', '1층 폴-바셋');

INSERT INTO store(store_no, store_name, store_latitude, store_longitude, store_phone_no, store_description, store_charge_week, store_charge_weekend, store_address_road, store_address_detail)
VALUES ( seq_store_no.nextval, '맥심', 37.50207799718094, 127.02286735419807, '010-3711-2343', '보드게임카페1 입니다, 많은 이용 부탁드립니다.', 3300, 4400, '충청남도 천안시 서북구 불당2길 10', '1층 카페-맥심');

INSERT INTO store(store_no, store_name, store_latitude, store_longitude, store_phone_no, store_description, store_charge_week, store_charge_weekend, store_address_road, store_address_detail)
VALUES ( seq_store_no.nextval, '네스프레소', 37.50207799518094, 127.02286735449807, '010-5345-3341', '보드게임카페1 입니다, 많은 이용 부탁드립니다.', 3300, 4400, '충청북도 청주시 상당구 대성로 145', '1층 네스프레소 카페');

INSERT INTO store(store_no, store_name, store_latitude, store_longitude, store_phone_no, store_description, store_charge_week, store_charge_weekend, store_address_road, store_address_detail)
VALUES ( seq_store_no.nextval, '스타벅스', 37.50207799418094, 127.02226735449807, '010-7641-2216', '보드게임카페1 입니다, 많은 이용 부탁드립니다.', 3300, 4400, '대전광역시 서구 문정로 112번안길 8-12', '1층 스타벅스');

INSERT INTO store(store_no, store_name, store_latitude, store_longitude, store_phone_no, store_description, store_charge_week, store_charge_weekend, store_address_road, store_address_detail)
VALUES ( seq_store_no.nextval, '문벅스', 37.50207799518024, 127.02286435449807, '010-2795-7842', '보드게임카페1 입니다, 많은 이용 부탁드립니다.', 3300, 4400, '전라북도 전주시 완산구 팔달로 191-4', '1층 문벅스');

INSERT INTO store(store_no, store_name, store_latitude, store_longitude, store_phone_no, store_description, store_charge_week, store_charge_weekend, store_address_road, store_address_detail)
VALUES ( seq_store_no.nextval, '제리앤탐스', 37.50207792518024, 127.02226435449807, '010-2763-6212', '보드게임카페1 입니다, 많은 이용 부탁드립니다.', 3300, 4400, '충청남도 부여군 부여읍 정림로 48-17', '1층 제리앤탐스');

INSERT INTO store(store_no, store_name, store_latitude, store_longitude, store_phone_no, store_description, store_charge_week, store_charge_weekend, store_address_road, store_address_detail)
VALUES ( seq_store_no.nextval, 'G-SEVEN', 37.50202792518024, 127.02226439449807, '010-7001-1007', '보드게임카페1 입니다, 많은 이용 부탁드립니다.', 3300, 4400, '충청남도 논산시 시민로 194번길 12-4', '1층 G-SEVEN');

INSERT INTO store(store_no, store_name, store_latitude, store_longitude, store_phone_no, store_description, store_charge_week, store_charge_weekend, store_address_road, store_address_detail)
VALUES ( seq_store_no.nextval, '커피콩', 37.50202792598024, 127.02226439489807, '010-8821-1299', '보드게임카페1 입니다, 많은 이용 부탁드립니다.', 3300, 4400, '경기도 평택시 어인남로 4번길 34-3', '1층 커피콩');

INSERT INTO store(store_no, store_name, store_latitude, store_longitude, store_phone_no, store_description, store_charge_week, store_charge_weekend, store_address_road, store_address_detail)
VALUES ( seq_store_no.nextval, '커피의 바나나', 37.50202792498024, 127.02266439489807, '010-1328-2231', '보드게임카페1 입니다, 많은 이용 부탁드립니다.', 3300, 4400, '강원도 춘천시 충열로 296-18', '1층 커피의 바나나');

INSERT INTO store(store_no, store_name, store_latitude, store_longitude, store_phone_no, store_description, store_charge_week, store_charge_weekend, store_address_road, store_address_detail)
VALUES ( seq_store_no.nextval, '뚝배기커피', 37.50203792498024, 127.02266439419807, '010-6451-4431', '보드게임카페1 입니다, 많은 이용 부탁드립니다.', 3300, 4400, '강원도 원주시 단구로 319-2', '1층 뚝배기커피');

INSERT INTO store(store_no, store_name, store_latitude, store_longitude, store_phone_no, store_description, store_charge_week, store_charge_weekend, store_address_road, store_address_detail)
VALUES ( seq_store_no.nextval, '할리스커피', 37.50201792498024, 127.02066439489807, '010-1328-2231', '보드게임카페1 입니다, 많은 이용 부탁드립니다.', 3300, 4400, '서울특별시 서초구 효령로 21길 9', '1층 할리스커피');

INSERT INTO store(store_no, store_name, store_latitude, store_longitude, store_phone_no, store_description, store_charge_week, store_charge_weekend, store_address_road, store_address_detail)
VALUES ( seq_store_no.nextval, '야너카', 37.50201792498524, 127.02066439489857, '010-7867-1121', '보드게임카페1 입니다, 많은 이용 부탁드립니다.', 3300, 4400, '경기도 성남시 분당구 야탑로 105번길 19', '1층 야너카');
-- // INSERT STORE
    
 -- INSERT RESERVATIONDATE
INSERT INTO reservation_date
VALUES(SEQ_RESERVATION_DATE_NO.nextval, 1, '2021/10/05', 20, 4, '1');

INSERT INTO reservation_date
VALUES(SEQ_RESERVATION_DATE_NO.nextval, 2, '2021/10/05', 20, 4, '5');

INSERT INTO reservation_time
VALUES(SEQ_RESERVATION_TIME_NO.nextval, 1, '09');

INSERT INTO reservation_time
VALUES(SEQ_RESERVATION_TIME_NO.nextval, 1, '10');

INSERT INTO reservation_time
VALUES(SEQ_RESERVATION_TIME_NO.nextval, 1, '11');

INSERT INTO reservation_time
VALUES(SEQ_RESERVATION_TIME_NO.nextval, 1, '12');

INSERT INTO reservation_time
VALUES(SEQ_RESERVATION_TIME_NO.nextval, 1, '13');

INSERT INTO reservation_time
VALUES(SEQ_RESERVATION_TIME_NO.nextval, 1, '14');

INSERT INTO reservation_time
VALUES(SEQ_RESERVATION_TIME_NO.nextval, 1, '15');

INSERT INTO reservation_time
VALUES(SEQ_RESERVATION_TIME_NO.nextval, 1, '16');

INSERT INTO reservation_time
VALUES(SEQ_RESERVATION_TIME_NO.nextval, 1, '17');

INSERT INTO reservation_time
VALUES(SEQ_RESERVATION_TIME_NO.nextval, 1, '18');

INSERT INTO reservation_time
VALUES(SEQ_RESERVATION_TIME_NO.nextval, 1, '19');

INSERT INTO reservation_time
VALUES(SEQ_RESERVATION_TIME_NO.nextval, 1, '20');

INSERT INTO reservation_time
VALUES(SEQ_RESERVATION_TIME_NO.nextval, 1, '21');

INSERT INTO reservation_time
VALUES(SEQ_RESERVATION_TIME_NO.nextval, 1, '22');

INSERT INTO reservation_time
VALUES(SEQ_RESERVATION_TIME_NO.nextval, 2, '09');

INSERT INTO reservation_time
VALUES(SEQ_RESERVATION_TIME_NO.nextval, 2, '10');
-- // INSERT RESERVATIONDATE

COMMIT;