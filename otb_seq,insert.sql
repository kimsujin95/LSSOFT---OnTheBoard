-- SEQUENCE
DROP SEQUENCE seq_users_no;
DROP SEQUENCE seq_game_no;
DROP SEQUENCE seq_theme_no;
DROP SEQUENCE seq_bookmark_no;
DROP SEQUENCE seq_matching_no;
DROP SEQUENCE seq_sido_no;
DROP SEQUENCE seq_sigungu_no;
DROP SEQUENCE seq_store_no;
DROP SEQUENCE seq_reservation_date_no;
DROP SEQUENCE seq_reservation_time_no;
DROP SEQUENCE seq_comment_no;
DROP SEQUENCE seq_reply_no;

CREATE SEQUENCE seq_users_no START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE seq_game_no START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE seq_theme_no START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE seq_bookmark_no START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE seq_matching_no START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE seq_sido_no START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE seq_sigungu_no START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE seq_store_no START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE seq_reservation_date_no START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE seq_reservation_time_no START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE seq_comment_no START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE seq_reply_no START WITH 1 INCREMENT BY 1 NOCACHE;
-- // SEQUENCE

-- INSERT USERS
INSERT INTO users(user_no, user_id, user_password, user_name, user_nickname, user_gender, user_birth_date, user_grade, user_reg_date)
VALUES ( seq_users_no.NEXTVAL, 'test1', '1234', 'test1', 'test1', 'male', '19901111', 1, sysdate );

INSERT INTO users(user_no, user_id, user_password, user_name, user_nickname, user_gender, user_birth_date, user_grade, user_reg_date)
VALUES ( seq_users_no.NEXTVAL, 'test2', '1234', 'test2', 'test2', 'female', '19931111', 1, sysdate );

INSERT INTO users(user_no, user_id, user_password, user_name, user_nickname, user_gender, user_birth_date, user_grade, user_reg_date)
VALUES ( seq_users_no.NEXTVAL, 'test3', '1234', 'test3', 'test3', 'male', '19951111', 1, sysdate );

INSERT INTO users(user_no, user_id, user_password, user_name, user_nickname, user_gender, user_birth_date, user_grade, user_reg_date)
VALUES ( seq_users_no.NEXTVAL, 'asd', 'asd', 'asd', 'asd', 'female', '19991111', 1, sysdate );

INSERT INTO users(user_no, user_id, user_password, user_name, user_nickname, user_gender, user_birth_date, user_grade, user_reg_date)
VALUES ( seq_users_no.NEXTVAL, 'qwe', 'qwe', 'qwe', 'qwe', 'male', '19911111', 1, sysdate );

INSERT INTO users(user_no, user_id, user_password, user_name, user_nickname, user_gender, user_birth_date, user_grade, user_reg_date)
VALUES ( seq_users_no.NEXTVAL, 'zxc', 'zxc', 'zxc', 'zxc', 'female', '19791111', 1, sysdate );

-- INSERT THEME
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
-- // INSERT THEME

-- INSERT GAME
INSERT INTO game(game_no, game_name_ko, game_name_en, game_path_thumbnail, game_people, game_age, game_time, game_difficulty, game_description, game_guide, theme_no)
VALUES ( seq_game_no.nextval, '보난자', 'Bonanza', 'upload\thumb\1.png', '3명~5명', '만 10세이상', '45분', '초급', 'upload\desc\1.jpg', 'OwgKvBQ7bqs', 2 );
            
INSERT INTO game(game_no, game_name_ko, game_name_en, game_path_thumbnail, game_people, game_age, game_time, game_difficulty, game_description, game_guide, theme_no)
VALUES ( seq_game_no.nextval, '아컴호러', 'Arkham Horror', 'upload\thumb\2.png', '1명~4명', '만 12세이상', '60분', '고급', 'upload\desc\2.jpg', 'OkaaG0_oAtI', 7 );
   
INSERT INTO game(game_no, game_name_ko, game_name_en, game_path_thumbnail, game_people, game_age, game_time, game_difficulty, game_description, game_guide, theme_no)
VALUES ( seq_game_no.nextval, '할리갈리', 'Halli Galli', 'upload\thumb\3.png', '2명~6명', '만 6세이상', '10분', '초급', 'upload\desc\3.jpg', '0q0yClzjADk', 5 );
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

INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 5, '남구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 5, '달서구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 5, '달성군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 5, '동구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 5, '북구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 5, '서구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 5, '수성구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 5, '중구' );

INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 6, '광산구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 6, '남구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 6, '동구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 6, '북구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 6, '서구' );

INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 7, '대덕구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 7, '동구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 7, '서구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 7, '유성구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 7, '중구' );

INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 8, '남구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 8, '동구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 8, '북구' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 8, '울주군' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 8, '중구' );

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

INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 16, '서귀포시' );
INSERT INTO sigungu VALUES ( seq_sigungu_no.NEXTVAL, 16, '제주시' );
-- // INSERT SIGUNGU

-- INSERT STORE
INSERT INTO store(store_no, store_name, store_latitude, store_longitude, store_phone_no, store_description, store_charge_week, store_charge_weekend, store_address_road, store_address_detail)
VALUES ( seq_store_no.nextval, '보드게임카페1', 37.494366186594405, 127.01825129365432, '02-1111-1111', '보드게임카페1 입니다, 많은 이용 부탁드립니다.', 3300, 4400, '111시 111구 111동 111로', '1111-111');

INSERT INTO store(store_no, store_name, store_latitude, store_longitude, store_phone_no, store_description, store_charge_week, store_charge_weekend, store_address_road, store_address_detail)
VALUES ( seq_store_no.nextval, '보드게임카페2', 37.499336756210546, 127.0322302565823, '02-2222-2222', '보드게임카페2 입니다, 많은 이용 부탁드립니다.', 3300, 4400, '222시 222구 222동 222로', '2222-222');

INSERT INTO store(store_no, store_name, store_latitude, store_longitude, store_phone_no, store_description, store_charge_week, store_charge_weekend, store_address_road, store_address_detail)
VALUES ( seq_store_no.nextval, '보드게임카페3', 37.50207799788094, 127.02286735499807, '02-3333-3333', '보드게임카페3 입니다, 많은 이용 부탁드립니다.', 3300, 4400, '333시 333구 333동 333로', '3333-333');
-- // INSERT STORE
    
 -- INSERT RESERVATIONDATE
insert into reservation_date
values(SEQ_RESERVATION_DATE_NO.nextval, 1, '2021/10/05', 20, 4, '1');

insert into reservation_date
values(SEQ_RESERVATION_DATE_NO.nextval, 2, '2021/10/05', 20, 4, '5');

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