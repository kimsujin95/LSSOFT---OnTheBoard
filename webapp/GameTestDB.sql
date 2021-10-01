CREATE SEQUENCE seq_game_no increment by 1 start with 1;
ALTER TABLE  game add theme_no number(20);

INSERT INTO 
              GAME(
                game_no
            ,   game_name_ko
            ,   game_name_en
            ,   game_path_thumbnail
            ,   game_people
            ,   game_age
            ,   game_time
            ,   game_difficulty
            ,   game_description
            ,   game_guide
            ,   theme_no
            )
            
VALUES(
            SEQ_GAME_NO.nextval
            ,   '보난자'
            ,   'Bonanza'
            ,   'upload\thumb\1.png'
            ,   '3명~5명'
            ,   '만 10세이상'
            ,   '45분'
            ,   '초급'
            ,   'upload\desc\1.jpg'
            ,   'OwgKvBQ7bqs'          
            ,   2
            );
            
INSERT INTO 
              GAME(
                game_no
            ,   game_name_ko
            ,   game_name_en
            ,   game_path_thumbnail
            ,   game_people
            ,   game_age
            ,   game_time
            ,   game_difficulty
            ,   game_description
            ,   game_guide
            ,   theme_no
            )
            
VALUES(
            SEQ_GAME_NO.nextval
            ,   '아컴호러'
            ,   'Arkham Horror'
             ,   'upload\thumb\2.png'
            ,   '1명~4명'
            ,   '만 12세이상'
            ,   '60분'
            ,   '고급'
            ,   'upload\desc\2.jpg'
            ,   'OkaaG0_oAtI'      
            ,   7
            );
   
INSERT INTO 
              GAME(
                game_no
            ,   game_name_ko
            ,   game_name_en
            ,   game_path_thumbnail
            ,   game_people
            ,   game_age
            ,   game_time
            ,   game_difficulty
            ,   game_description
            ,   game_guide
            ,   theme_no
            )
            
VALUES(
            SEQ_GAME_NO.nextval
            ,   '할리갈리'
            ,   'Halli Galli'
             ,   'upload\thumb\3.png'
            ,   '2명~6명'
            ,   '만 6세이상'
            ,   '10분'
            ,   '초급'
            ,   'upload\desc\3.jpg'
            ,   '0q0yClzjADk'          
            ,   5
            );            
     