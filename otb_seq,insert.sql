-- SEQUENCE
DROP SEQUENCE seq_users_no;
DROP SEQUENCE seq_game_no;
DROP SEQUENCE seq_theme_no;
DROP SEQUENCE seq_game__bookmark_no;
DROP SEQUENCE seq_matching_no;
DROP SEQUENCE seq_sido_no;
DROP SEQUENCE seq_sigungu_no;
DROP SEQUENCE seq_store_no;
DROP SEQUENCE seq_reservation_date_no;
DROP SEQUENCE seq_reservation_time_no;
DROP SEQUENCE seq_comment_no;
DROP SEQUENCE seq_reply_no;

CREATE SEQUENCE seq_users_no
START WITH 1
INCREMENT BY 1
NOCACHE;

CREATE SEQUENCE seq_game_no
START WITH 1
INCREMENT BY 1
NOCACHE;

CREATE SEQUENCE seq_theme_no
START WITH 1
INCREMENT BY 1
NOCACHE;

CREATE SEQUENCE seq_bookmark_no
START WITH 1
INCREMENT BY 1
NOCACHE;

CREATE SEQUENCE seq_matching_no
START WITH 1
INCREMENT BY 1
NOCACHE;

CREATE SEQUENCE seq_sido_no
START WITH 1
INCREMENT BY 1
NOCACHE;

CREATE SEQUENCE seq_sigungu_no
START WITH 1
INCREMENT BY 1
NOCACHE;

CREATE SEQUENCE seq_store_no
START WITH 1
INCREMENT BY 1
NOCACHE;

CREATE SEQUENCE seq_reservation_date_no
START WITH 1
INCREMENT BY 1
NOCACHE;

CREATE SEQUENCE seq_reservation_time_no
START WITH 1
INCREMENT BY 1
NOCACHE;

CREATE SEQUENCE seq_comment_no
START WITH 1
INCREMENT BY 1
NOCACHE;

CREATE SEQUENCE seq_reply_no
START WITH 1
INCREMENT BY 1
NOCACHE;
-- // SEQUENCE

-- INSERT USERS
INSERT INTO
    users(user_no, user_id, user_password, user_name, user_nickname, user_gender, user_birth_date, user_grade, user_reg_date)
VALUES
    (
        seq_users_no.NEXTVAL,
        'test1',
        '1234',
        'test1',
        'test1',
        'male',
        '19901111',
        1,
        sysdate
    );

INSERT INTO
    users(user_no, user_id, user_password, user_name, user_nickname, user_gender, user_birth_date, user_grade, user_reg_date)
VALUES
    (
        seq_users_no.NEXTVAL,
        'test2',
        '1234',
        'test2',
        'test2',
        'female',
        '19931111',
        1,
        sysdate
    );

INSERT INTO
    users(user_no, user_id, user_password, user_name, user_nickname, user_gender, user_birth_date, user_grade, user_reg_date)
VALUES
    (
        seq_users_no.NEXTVAL,
        'test3',
        '1234',
        'test3',
        'test3',
        'male',
        '19951111',
        1,
        sysdate
    );

INSERT INTO
    users(user_no, user_id, user_password, user_name, user_nickname, user_gender, user_birth_date, user_grade, user_reg_date)
VALUES
    (
        seq_users_no.NEXTVAL,
        'test4',
        '1234',
        'test4',
        'test4',
        'female',
        '19991111',
        1,
        sysdate
    );

-- INSERT THEME
INSERT INTO
        THEME(  theme_no, theme_name)
VALUES (
        SEQ_THEME_NO.nextval
    ,   '전략');
    
      INSERT INTO
        THEME(  theme_no, theme_name)
VALUES (
        SEQ_THEME_NO.nextval
    ,   '추상');
      INSERT INTO
        THEME(  theme_no, theme_name)
VALUES (
        SEQ_THEME_NO.nextval
    ,   '컬렉터블');
    
      INSERT INTO
        THEME(  theme_no, theme_name)
VALUES (
        SEQ_THEME_NO.nextval
    ,   '가족');
      INSERT INTO
        THEME(  theme_no, theme_name)
VALUES (
        SEQ_THEME_NO.nextval
    ,   '파티');
      INSERT INTO
        THEME(  theme_no, theme_name)
VALUES (
        SEQ_THEME_NO.nextval
    ,   '어린이');
      INSERT INTO
        THEME(  theme_no, theme_name)
VALUES (
        SEQ_THEME_NO.nextval
    ,   '테마');
      INSERT INTO
        THEME(  theme_no, theme_name)
VALUES (
        SEQ_THEME_NO.nextval
    ,   '워게임');
      INSERT INTO
        THEME(  theme_no, theme_name)
VALUES (
        SEQ_THEME_NO.nextval
    ,   '한글');
      INSERT INTO
        THEME(  theme_no, theme_name)
VALUES (
        SEQ_THEME_NO.nextval
    ,   '경제');
      INSERT INTO
        THEME(  theme_no, theme_name)
VALUES (
        SEQ_THEME_NO.nextval
    ,   '협력');
      INSERT INTO
        THEME(  theme_no, theme_name)
VALUES (
        SEQ_THEME_NO.nextval
    ,   '퍼즐');
      INSERT INTO
        THEME(  theme_no, theme_name)
VALUES (
        SEQ_THEME_NO.nextval
    ,   '모험');
      INSERT INTO
        THEME(  theme_no, theme_name)
VALUES (
        SEQ_THEME_NO.nextval
    ,   '주사위');
-- // INSERT THEME

-- INSERT GAME
INSERT INTO 
    game
VALUES
    (
        seq_game_no.nextval,
        '보난자',
        'Bonanza',
        'upload\thumb\1.png',
        '3명~5명',
        '만 10세이상',
        '45분',
        '초급',
        'upload\desc\1.jpg',
        'OwgKvBQ7bqs',
        2
    );

INSERT INTO 
    game
VALUES
    (
        seq_game_no.nextval,
        '아컴호러',
        'Arkham Horror',
        'upload\thumb\2.png',
        '1명~4명',
        '만 12세이상',
        '60분',
        '고급',
        'upload\desc\2.jpg',
        'OkaaG0_oAtI',
        7
    );
   
INSERT INTO 
    game
VALUES
    (
        seq_game_no.nextval,
        '할리갈리',
        'Halli Galli',
        'upload\thumb\3.png',
        '2명~6명',
        '만 6세이상',
        '10분',
        '초급',
        'upload\desc\3.jpg',
        '0q0yClzjADk',
        5
    );
-- // INSERT GAME

-- INSERT SIDO
INSERT INTO
    sido
VALUES
    (
        seq_sido_no.NEXTVAL,
        '서울'
    );

INSERT INTO
    sido
VALUES
    (
        seq_sido_no.NEXTVAL,
        '경기'
    );

INSERT INTO
    sido
VALUES
    (
        seq_sido_no.NEXTVAL,
        '인천'
    );
-- // INSERT SIDO

-- INSERT SIGUNGU
INSERT INTO
    sigungu
VALUES
    (
        seq_sigungu_no.NEXTVAL,
        1,
        '강남구'
    );

INSERT INTO
    sigungu
VALUES
    (
        seq_sigungu_no.NEXTVAL,
        1,
        '강동구'
    );

INSERT INTO
    sigungu
VALUES
    (
        seq_sigungu_no.NEXTVAL,
        1,
        '강북구'
    );

INSERT INTO
    sigungu
VALUES
    (
        seq_sigungu_no.NEXTVAL,
        1,
        '강서구'
    );

INSERT INTO
    sigungu
VALUES
    (
        seq_sigungu_no.NEXTVAL,
        1,
        '관악구'
    );

INSERT INTO
    sigungu
VALUES
    (
        seq_sigungu_no.NEXTVAL,
        2,
        '가평군'
    );

INSERT INTO
    sigungu
VALUES
    (
        seq_sigungu_no.NEXTVAL,
        2,
        '고양시'
    );

INSERT INTO
    sigungu
VALUES
    (
        seq_sigungu_no.NEXTVAL,
        2,
        '과천시'
    );

INSERT INTO
    sigungu
VALUES
    (
        seq_sigungu_no.NEXTVAL,
        2,
        '광명시'
    );

INSERT INTO
    sigungu
VALUES
    (
        seq_sigungu_no.NEXTVAL,
        2,
        '광주시'
    );

INSERT INTO
    sigungu
VALUES
    (
        seq_sigungu_no.NEXTVAL,
        3,
        '강화군'
    );

INSERT INTO
    sigungu
VALUES
    (
        seq_sigungu_no.NEXTVAL,
        3,
        '계양구'
    );

INSERT INTO
    sigungu
VALUES
    (
        seq_sigungu_no.NEXTVAL,
        3,
        '남동구'
    );

INSERT INTO
    sigungu
VALUES
    (
        seq_sigungu_no.NEXTVAL,
        3,
        '동구'
    );

INSERT INTO
    sigungu
VALUES
    (
        seq_sigungu_no.NEXTVAL,
        3,
        '미주홀구'
    );
-- // INSERT SIGUNGU

-- INSERT STORE
INSERT INTO
    store(store_no, store_name, store_latitude, store_longitude)
VALUES
    (
        seq_store_no.nextval,
        '보드게임카페1',
        37.494366186594405,
        127.01825129365432
    );

INSERT INTO
    store(store_no, store_name, store_latitude, store_longitude)
VALUES
    (
        seq_store_no.nextval,
        '보드게임카페2',
        37.499336756210546,
        127.0322302565823
    );

INSERT INTO
    store(store_no, store_name, store_latitude, store_longitude)
VALUES
    (
        seq_store_no.nextval,
        '보드게임카페3',
        37.50207799788094,
        127.02286735499807
    );
-- // INSERT STORE
    
 -- INSERT RESERVATIONDATE
insert into reservation_date
values(SEQ_RESERVATION_DATE_NO.nextval, 1, '2021/10/05', 20, 4);

insert into reservation_date
values(SEQ_RESERVATION_DATE_NO.nextval, 2, '2021/10/05', 20, 4);

insert into reservation_time
values(SEQ_RESERVATION_TIME_NO.nextval, 1, '09');

insert into reservation_time
values(SEQ_RESERVATION_TIME_NO.nextval, 1, '10');

insert into reservation_time
values(SEQ_RESERVATION_TIME_NO.nextval, 1, '11');

insert into reservation_time
values(SEQ_RESERVATION_TIME_NO.nextval, 2, '09');

insert into reservation_time
values(SEQ_RESERVATION_TIME_NO.nextval, 2, '10');
-- // INSERT RESERVATIONDATE