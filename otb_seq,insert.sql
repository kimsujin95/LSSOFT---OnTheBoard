-- SEQUENCE
DROP SEQUENCE seq_users_no;
DROP SEQUENCE seq_game_no;
DROP SEQUENCE seq_theme_no;
DROP SEQUENCE seq_matching_no;
DROP SEQUENCE seq_sido_no;
DROP SEQUENCE seq_sigungu_no;
DROP SEQUENCE seq_store_no;

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
-- // INSERT USERS

-- INSERT GAME
INSERT INTO 
    game(game_no, game_name_ko, game_name_en, game_path_thumbnail, game_people, game_age, game_time, game_difficulty, game_description, game_guide, theme_no)
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
    game(game_no, game_name_ko, game_name_en, game_path_thumbnail, game_people, game_age, game_time, game_difficulty, game_description, game_guide, theme_no)
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
    game(game_no, game_name_ko, game_name_en, game_path_thumbnail, game_people, game_age, game_time, game_difficulty, game_description, game_guide, theme_no)
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

-- INSERT THEME
INSERT INTO
    theme
VALUES
    (
        seq_theme_no.NEXTVAL,
        '테마1'
    );

INSERT INTO
    theme
VALUES
    (
        seq_theme_no.NEXTVAL,
        '테마2'
    );

INSERT INTO
    theme
VALUES
    (
        seq_theme_no.NEXTVAL,
        '테마3'
    );

INSERT INTO
    theme
VALUES
    (
        seq_theme_no.NEXTVAL,
        '테마4'
    );

INSERT INTO
    theme
VALUES
    (
        seq_theme_no.NEXTVAL,
        '테마5'
    );
-- // INSERT THEME

-- INSERT SIDO
INSERT INTO
    sido
VALUES
    (
        seq_sido_no.NEXTVAL,
        '시도1'
    );

INSERT INTO
    sido
VALUES
    (
        seq_sido_no.NEXTVAL,
        '시도2'
    );

INSERT INTO
    sido
VALUES
    (
        seq_sido_no.NEXTVAL,
        '시도3'
    );
-- // INSERT SIDO

-- INSERT SIGUNGU
INSERT INTO
    sigungu
VALUES
    (
        seq_sigungu_no.NEXTVAL,
        1,
        '시군구1-1'
    );

INSERT INTO
    sigungu
VALUES
    (
        seq_sigungu_no.NEXTVAL,
        1,
        '시군구1-2'
    );

INSERT INTO
    sigungu
VALUES
    (
        seq_sigungu_no.NEXTVAL,
        1,
        '시군구1-3'
    );

INSERT INTO
    sigungu
VALUES
    (
        seq_sigungu_no.NEXTVAL,
        1,
        '시군구1-4'
    );

INSERT INTO
    sigungu
VALUES
    (
        seq_sigungu_no.NEXTVAL,
        1,
        '시군구1-5'
    );

INSERT INTO
    sigungu
VALUES
    (
        seq_sigungu_no.NEXTVAL,
        2,
        '시군구2-1'
    );

INSERT INTO
    sigungu
VALUES
    (
        seq_sigungu_no.NEXTVAL,
        2,
        '시군구2-2'
    );

INSERT INTO
    sigungu
VALUES
    (
        seq_sigungu_no.NEXTVAL,
        2,
        '시군구2-3'
    );

INSERT INTO
    sigungu
VALUES
    (
        seq_sigungu_no.NEXTVAL,
        2,
        '시군구2-4'
    );

INSERT INTO
    sigungu
VALUES
    (
        seq_sigungu_no.NEXTVAL,
        2,
        '시군구2-5'
    );

INSERT INTO
    sigungu
VALUES
    (
        seq_sigungu_no.NEXTVAL,
        3,
        '시군구3-1'
    );

INSERT INTO
    sigungu
VALUES
    (
        seq_sigungu_no.NEXTVAL,
        3,
        '시군구3-2'
    );

INSERT INTO
    sigungu
VALUES
    (
        seq_sigungu_no.NEXTVAL,
        3,
        '시군구3-3'
    );

INSERT INTO
    sigungu
VALUES
    (
        seq_sigungu_no.NEXTVAL,
        3,
        '시군구3-4'
    );

INSERT INTO
    sigungu
VALUES
    (
        seq_sigungu_no.NEXTVAL,
        3,
        '시군구3-5'
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