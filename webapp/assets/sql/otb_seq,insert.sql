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
VALUES ( seq_users_no.NEXTVAL, 'CAFEKANU', 'kanu123', '카페카누', '카페카누', 'male', '19881111', 2, sysdate );

INSERT INTO users(user_no, user_id, user_password, user_name, user_nickname, user_gender, user_birth_date, user_grade, user_reg_date)
VALUES ( seq_users_no.NEXTVAL, 'asd', 'asd', 'asd', 'asd', 'female', '19991111', 1, sysdate );

INSERT INTO users(user_no, user_id, user_password, user_name, user_nickname, user_gender, user_birth_date, user_grade, user_reg_date)
VALUES ( seq_users_no.NEXTVAL, 'qwe', 'qwe', 'qwe', 'qwe', 'male', '19911111', 1, sysdate );

INSERT INTO users(user_no, user_id, user_password, user_name, user_nickname, user_gender, user_birth_date, user_grade, user_reg_date)
VALUES ( seq_users_no.NEXTVAL, 'zxc', 'zxc', 'zxc', 'zxc', 'female', '19791111', 1, sysdate );
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
INSERT INTO matching_group VALUES ( 21, 1, 3, sysdate );

INSERT INTO matching VALUES ( seq_matching_no.NEXTVAL, 1, 0, 3, '2022-11-11', '15:00', '할리갈리 모집합니다~', '내용5', 1, 7, 3, '성별무관', '10대,20대,30개', sysdate, 0, '매칭중' );
INSERT INTO matching_group VALUES ( 22, 1, 3, sysdate );

INSERT INTO matching VALUES ( seq_matching_no.NEXTVAL, 1, 0, 1, '2022-11-11', '15:00', '보난자 함께 하실분~', '내용1', 1, 14, 2, '여자', '10대,20대', sysdate, 0, '매칭중' );
INSERT INTO matching_group VALUES ( 23, 1, 2, sysdate );
-- // INSERT MATCHING/GROUP

-- INSERT STORE
INSERT INTO store(store_no, user_no, store_name, store_latitude, store_longitude, store_phone_no, store_description, store_charge_week, store_charge_weekend, store_address_road, store_address_detail)
VALUES ( seq_store_no.nextval, 3, '카누', 37.494366186594405, 127.01825129365432, '02-1111-1111', '일상을 공유하는 카누카페 입니다! 많은 이용 부탁드립니다^^', 3300, 4400, '서울시 강남구 테헤란로 152', '1층 카페-카누');

INSERT INTO store(store_no, store_name, store_latitude, store_longitude, store_phone_no, store_description, store_charge_week, store_charge_weekend, store_address_road, store_address_detail)
VALUES ( seq_store_no.nextval, '네스카페', 37.499336756210546, 127.0322302565823, '02-2222-2222', '보드게임카페2 입니다, 많은 이용 부탁드립니다.', 3300, 4400, '222시 222구 222동 222로', '2222-222');

INSERT INTO store(store_no, store_name, store_latitude, store_longitude, store_phone_no, store_description, store_charge_week, store_charge_weekend, store_address_road, store_address_detail)
VALUES ( seq_store_no.nextval, '폴 바셋', 37.50207799788094, 127.02286735499807, '02-3333-3333', '보드게임카페3 입니다, 많은 이용 부탁드립니다.', 3300, 4400, '333시 333구 333동 333로', '3333-333');

INSERT INTO store(store_no, user_no, store_name, store_latitude, store_longitude, store_phone_no, store_description, store_charge_week, store_charge_weekend, store_address_road, store_address_detail)
VALUES ( seq_store_no.nextval, '맥심', 37.50207799788094, 127.02286735499807, '02-3333-3333', '보드게임카페1 입니다, 많은 이용 부탁드립니다.', 3300, 4400, '111시 111구 111동 111로', '1111-111');
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