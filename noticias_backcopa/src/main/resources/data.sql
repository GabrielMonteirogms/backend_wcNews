
-- CATEGORY

INSERT INTO TBL_CATEGORY (NAME, DESCRIPTION) VALUES ('Matches', 'News related to World Cup matches');
INSERT INTO TBL_CATEGORY (NAME, DESCRIPTION) VALUES ('Teams', 'News related to national teams');
INSERT INTO TBL_CATEGORY (NAME, DESCRIPTION) VALUES ('Stadiums', 'News related to World Cup stadiums');

-- JOURNALIST

INSERT INTO TBL_JOURNALIST (NAME, EMAIL, COUNTRY, PHOTO_URL, BIOGRAPHY)
VALUES ('Carlos Silva', 'carlos@worldcup.com', 'Brazil', 'carlos.jpg', 'Sports journalist specialized in international football.');

INSERT INTO TBL_JOURNALIST (NAME, EMAIL, COUNTRY, PHOTO_URL, BIOGRAPHY)
VALUES ('John Miller', 'john@worldcup.com', 'USA', 'john.jpg', 'American reporter covering FIFA events.');

INSERT INTO TBL_JOURNALIST (NAME, EMAIL, COUNTRY, PHOTO_URL, BIOGRAPHY)
VALUES ('Miguel Torres', 'miguel@worldcup.com', 'Mexico', 'miguel.jpg', 'Football journalist and World Cup analyst.');

-- STADIUM

INSERT INTO TBL_STADIUM (NAME, CITY, COUNTRY, CAPACITY, IMAGE_URL, DESCRIPTION, OPENED_YEAR)
VALUES ('MetLife Stadium', 'New Jersey', 'USA', 82500, 'metlife.jpg', 'Official stadium of the FIFA World Cup 2026.', 2010);

INSERT INTO TBL_STADIUM (NAME, CITY, COUNTRY, CAPACITY, IMAGE_URL, DESCRIPTION, OPENED_YEAR)
VALUES ('AT&T Stadium', 'Arlington', 'USA', 80000, 'att.jpg', 'One of the largest stadiums in the United States.', 2009);

INSERT INTO TBL_STADIUM (NAME, CITY, COUNTRY, CAPACITY, IMAGE_URL, DESCRIPTION, OPENED_YEAR)
VALUES ('Estadio Azteca', 'Mexico City', 'Mexico', 87523, 'azteca.jpg', 'Historic World Cup stadium.', 1966);

-- NEWS
-- category_id, journalist_id e stadium_id
-- IMPORTANTE:
-- Antes execute:
-----------------

-- ALTER TABLE TBL_NEWS
-- ADD COLUMN VIDEO_URL VARCHAR(500);

INSERT INTO TBL_NEWS
(TITLE, SUMMARY, CONTENT, IMAGE_URL, VIDEO_URL, FEATURED, VIEWS, CREATED_AT, CATEGORY_ID, JOURNALIST_ID, STADIUM_ID)
VALUES
    (
        'Brazil defeats Argentina' ||
        '',
        'South American classic ends with Brazilian victory.' ||
        '',
        'Brazil delivered one of its most memorable performances against Argentina in recent history, securing a dominant 3-0 victory. The match was marked by Brazil''s intensity, technical quality, and complete control from the opening whistle.
Neymar was the standout player of the night, dazzling fans with his dribbling skills, creativity, and confidence on the ball. The Brazilian star repeatedly broke through Argentina''s defense, creating dangerous opportunities and showcasing the talent that made him one of the world''s best players.
Argentina struggled to respond to Brazil''s attacking pressure and found it difficult to contain Neymar''s influence throughout the match. The victory became a memorable chapter in the rivalry between the two South American giants and remains one of Brazil''s most celebrated performances of the decade.',
        'https://www.rbsdirect.com.br/imagesrc/25278029.jpg?w=1200&h=675&a=c&version=1575255600',
        'https://www.youtube.com/watch?v=lg--fDzrjhk',
        TRUE,
        1500,
        CURRENT_TIMESTAMP,
        1,
        1,
        1
    );

INSERT INTO TBL_NEWS
(TITLE, SUMMARY, CONTENT, IMAGE_URL, VIDEO_URL, FEATURED, VIEWS, CREATED_AT, CATEGORY_ID, JOURNALIST_ID, STADIUM_ID)
VALUES
    (
        'MetLife Stadium prepares for opening match',
        'Organizers complete final inspections.',
        'MetLife Stadium is set to host the opening match of the 2026 FIFA World Cup. Following months of preparation, infrastructure upgrades, and security inspections, the venue is ready to welcome thousands of fans from around the globe. Organizers expect a spectacular opening ceremony and an unforgettable start to the tournament.',
        'https://visitnj.org/sites/default/files/styles/400_tall/public/NYNJ_Know-Before-You-Go_Metlife-Stadium2_1200x800.jpg?itok=V_ompvBP',
        'https://www.youtube.com/watch?v=WB-iG9oF4qo',
        TRUE,
        900,
        CURRENT_TIMESTAMP,
        3,
        2,
        1
    );

INSERT INTO TBL_NEWS
(TITLE, SUMMARY, CONTENT, IMAGE_URL, VIDEO_URL, FEATURED, VIEWS, CREATED_AT, CATEGORY_ID, JOURNALIST_ID, STADIUM_ID)
VALUES
    (
        'Brazil opens World Cup campaign with victory over Morocco',
        'Brazil secured an important win against Morocco in its opening match of the 2026 FIFA World Cup.',
        'Brazil began its World Cup journey with a strong performance against Morocco. Led by a solid midfield and efficient attacking play, the Seleção controlled possession and created multiple chances throughout the match. The victory puts Brazil in a favorable position in Group C as the team looks to secure qualification for the knockout stage.',
        'https://diariodamidia.com.br/uploads/artigos/brazil-x-morocco-ao-vivo-13-06-16x9.webp',
        'https://www.youtube.com/watch?v=SY1xlwKkbgk',
        TRUE,
        2450,
        CURRENT_TIMESTAMP,
        1,
        1,
        1
    );

INSERT INTO TBL_NEWS
(TITLE, SUMMARY, CONTENT, IMAGE_URL, VIDEO_URL, FEATURED, VIEWS, CREATED_AT, CATEGORY_ID, JOURNALIST_ID, STADIUM_ID)
VALUES
    (
        'New World Cup bracket raises excitement for knockout stage',
        'FIFA has revealed the updated knockout bracket structure for the expanded 2026 World Cup.',
        'With 48 teams participating for the first time, FIFA introduced a redesigned knockout bracket that promises more high-stakes matches. Fans and analysts are already discussing potential clashes between football giants, making the road to the final more unpredictable than ever before.',
        'https://static.gazetaesportiva.com/uploads/2025/12/AFP__20251205__879P3XN__v6__HighRes__FblWc2026Draw-1024x682.webp',
        'https://www.youtube.com/embed/geExoqymhfc',
        TRUE,
        1980,
        CURRENT_TIMESTAMP,
        1,
        2,
        2
    );

INSERT INTO TBL_NEWS
(TITLE, SUMMARY, CONTENT, IMAGE_URL, VIDEO_URL, FEATURED, VIEWS, CREATED_AT, CATEGORY_ID, JOURNALIST_ID, STADIUM_ID)
VALUES
    (
        'Estadio Azteca prepares for historic World Cup matches',
        'The iconic Mexican venue is ready to host another chapter of football history.',
        'Estadio Azteca is undergoing final preparations ahead of its World Cup fixtures. As one of the most legendary stadiums in football history, the venue is expected to attract fans from around the world and deliver unforgettable moments during the tournament.',
        'https://media.es.wired.com/photos/6904d69eae80e416a52d7ec0/master/w_2560%2Cc_limit/GettyImages-2238696430.jpg',
        'https://www.youtube.com/watch?v=MCtFW662-Xg',
        FALSE,
        1320,
        CURRENT_TIMESTAMP,
        3,
        3,
        3
    );

INSERT INTO TBL_NEWS
(TITLE, SUMMARY, CONTENT, IMAGE_URL, VIDEO_URL, FEATURED, VIEWS, CREATED_AT, CATEGORY_ID, JOURNALIST_ID, STADIUM_ID)
VALUES
    (
        'Argentina aims for strong start in Group J',
        'The reigning South American powerhouse begins its campaign with high expectations.',
        'Argentina enters the tournament as one of the favorites to reach the final stages. With a balanced squad and experienced coaching staff, the team hopes to secure maximum points in the group phase and continue its tradition of strong World Cup performances.',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxRmYksw7xH4aSqC9sr3t99gPZxdCsxbJ7dQ&s',
        'https://www.youtube.com/watch?v=JdooRh98My8',
        FALSE,
        1765,
        CURRENT_TIMESTAMP,
        2,
        1,
        1
    );

INSERT INTO TBL_NEWS
(TITLE, SUMMARY, CONTENT, IMAGE_URL, VIDEO_URL, FEATURED, VIEWS, CREATED_AT, CATEGORY_ID, JOURNALIST_ID, STADIUM_ID)
VALUES
    (
        'Fans set attendance records during opening week',
        'Supporters from all over the world have filled stadiums across North America.',
        'The opening week of the FIFA World Cup 2026 has already broken attendance records. Packed stadiums, vibrant fan zones, and massive international interest have demonstrated the global appeal of the tournament new expanded format.',
        'https://lncimg.lance.com.br/cdn-cgi/image/width=1280,height=720,quality=75,fit=cover,format=webp/uploads/2026/06/abertura_copa_ESTADIO-1-scaled-aspect-ratio-512-320.jpg',
        'https://www.youtube.com/watch?v=7UxuDT0Acm8',
        FALSE,
        2150,
        CURRENT_TIMESTAMP,
        2,
        2,
        2
    );

INSERT INTO TBL_NEWS
(TITLE, SUMMARY, CONTENT, IMAGE_URL, VIDEO_URL, FEATURED, VIEWS, CREATED_AT, CATEGORY_ID, JOURNALIST_ID, STADIUM_ID)
VALUES
    (
        'USA impresses with dominant performance in opening match',
        'The host nation delivered an attacking masterclass in front of home supporters.',
        'The United States showcased its ambitions for the tournament with an impressive display in its opening fixture. The team combined speed, creativity, and clinical finishing to secure a convincing result, giving fans hope for a deep run in the competition.',
        'https://revistanegociospe.com.br/wp-content/uploads/2026/06/afp-20260613-b6xp3hy-v1-midres-fblwc2026match04usapar.jpg',
        'https://www.youtube.com/watch?v=UiINjFW4cH8',
        TRUE,
        2890,
        CURRENT_TIMESTAMP,
        1,
        3,
        2
    );

-- COMMENTS

INSERT INTO TBL_COMMENT (AUTHOR_NAME, MESSAGE, CREATED_AT, NEWS_ID)
VALUES ('Gabriel', 'Great match!', CURRENT_TIMESTAMP, 1);

INSERT INTO TBL_COMMENT (AUTHOR_NAME, MESSAGE, CREATED_AT, NEWS_ID)
VALUES ('Lucas', 'Brazil played very well.', CURRENT_TIMESTAMP, 1);

INSERT INTO TBL_COMMENT (AUTHOR_NAME, MESSAGE, CREATED_AT, NEWS_ID)
VALUES ('Maria', 'I cant wait for the tournament.', CURRENT_TIMESTAMP, 2);