
-- CATEGORY

INSERT INTO TBL_CATEGORY (NAME, DESCRIPTION) VALUES ('Matches', 'News related to World Cup matches');
INSERT INTO TBL_CATEGORY (NAME, DESCRIPTION) VALUES ('Teams', 'News related to national teams');
INSERT INTO TBL_CATEGORY (NAME, DESCRIPTION) VALUES ('Stadiums', 'News related to World Cup stadiums');
INSERT INTO TBL_CATEGORY (NAME, DESCRIPTION) VALUES ('Curiosities' ,'News related to World Cup curiosities');

-- JOURNALIST

INSERT INTO TBL_JOURNALIST (NAME, EMAIL, COUNTRY, PHOTO_URL, BIOGRAPHY)
VALUES ('Carlos Silva', 'carlos@worldcup.com', 'Brazil', 'carlos.jpg', 'Sports journalist specialized in international football.');

INSERT INTO TBL_JOURNALIST (NAME, EMAIL, COUNTRY, PHOTO_URL, BIOGRAPHY)
VALUES ('John Miller', 'john@worldcup.com', 'USA', 'john.jpg', 'American reporter covering FIFA events.');

INSERT INTO TBL_JOURNALIST (NAME, EMAIL, COUNTRY, PHOTO_URL, BIOGRAPHY)
VALUES ('Miguel Torres', 'miguel@worldcup.com', 'Mexico', 'miguel.jpg', 'Football journalist and World Cup analyst.');

INSERT INTO TBL_JOURNALIST (NAME, EMAIL, COUNTRY, PHOTO_URL, BIOGRAPHY)
VALUES ('Casimiro Miguel', 'casimiro@worldcup.com', 'Brazil', 'casimiro.jpg', 'Brazilian sports presenter and creator of CazéTV, known for covering major football events.');

INSERT INTO TBL_JOURNALIST (NAME, EMAIL, COUNTRY, PHOTO_URL, BIOGRAPHY)
VALUES ('André Henning', 'andre@worldcup.com', 'Brazil', 'andre.jpg', 'Brazilian football commentator recognized for his energetic match coverage.');

INSERT INTO TBL_JOURNALIST (NAME, EMAIL, COUNTRY, PHOTO_URL, BIOGRAPHY)
VALUES ('Tino Marcos', 'tino@worldcup.com', 'Brazil', 'tino.jpg', 'Veteran Brazilian journalist with extensive World Cup experience.');

INSERT INTO TBL_JOURNALIST (NAME, EMAIL, COUNTRY, PHOTO_URL, BIOGRAPHY)
VALUES ('Eric Faria', 'eric@worldcup.com', 'Brazil', 'eric.jpg', 'Brazilian field reporter specialized in football coverage.');

INSERT INTO TBL_JOURNALIST (NAME, EMAIL, COUNTRY, PHOTO_URL, BIOGRAPHY)
VALUES ('João Guilherme', 'joao@worldcup.com', 'Brazil', 'joao.jpg', 'Brazilian sports narrator covering international football tournaments.');

INSERT INTO TBL_JOURNALIST (NAME, EMAIL, COUNTRY, PHOTO_URL, BIOGRAPHY)
VALUES ('Fabrizio Romano', 'fabrizio@worldcup.com', 'Italy', 'fabrizio.jpg', 'Italian football journalist known worldwide for transfer market news.');

INSERT INTO TBL_JOURNALIST (NAME, EMAIL, COUNTRY, PHOTO_URL, BIOGRAPHY)
VALUES ('Gary Lineker', 'gary@worldcup.com', 'England', 'gary.jpg', 'English presenter and former footballer covering major international competitions.');

INSERT INTO TBL_JOURNALIST (NAME, EMAIL, COUNTRY, PHOTO_URL, BIOGRAPHY)
VALUES ('Alex Scott', 'alex@worldcup.com', 'England', 'alexscott.jpg', 'English football analyst and television presenter.');

INSERT INTO TBL_JOURNALIST (NAME, EMAIL, COUNTRY, PHOTO_URL, BIOGRAPHY)
VALUES ('Kate Abdo', 'kate@worldcup.com', 'England', 'kateabdo.jpg', 'International sports broadcaster known for football coverage.');

INSERT INTO TBL_JOURNALIST (NAME, EMAIL, COUNTRY, PHOTO_URL, BIOGRAPHY)
VALUES ('Henry Winter', 'henry@worldcup.com', 'England', 'henrywinter.jpg', 'Experienced football writer and international tournament analyst.');

INSERT INTO TBL_JOURNALIST (NAME, EMAIL, COUNTRY, PHOTO_URL, BIOGRAPHY)
VALUES ('Grant Wahl', 'grant@worldcup.com', 'USA', 'grantwahl.jpg', 'American football journalist widely recognized for World Cup reporting.');

INSERT INTO TBL_JOURNALIST (NAME, EMAIL, COUNTRY, PHOTO_URL, BIOGRAPHY)
VALUES ('Taylor Twellman', 'taylor@worldcup.com', 'USA', 'taylor.jpg', 'American football analyst and commentator.');

INSERT INTO TBL_JOURNALIST (NAME, EMAIL, COUNTRY, PHOTO_URL, BIOGRAPHY)
VALUES ('Herculez Gomez', 'herculez@worldcup.com', 'USA', 'herculez.jpg', 'Football analyst focused on North American football.');

INSERT INTO TBL_JOURNALIST (NAME, EMAIL, COUNTRY, PHOTO_URL, BIOGRAPHY)
VALUES ('David Faitelson', 'david@worldcup.com', 'Mexico', 'david.jpg', 'Mexican sports journalist known for football analysis.');

INSERT INTO TBL_JOURNALIST (NAME, EMAIL, COUNTRY, PHOTO_URL, BIOGRAPHY)
VALUES ('Marion Reimers', 'marion@worldcup.com', 'Mexico', 'marion.jpg', 'Mexican football commentator and television host.');

INSERT INTO TBL_JOURNALIST (NAME, EMAIL, COUNTRY, PHOTO_URL, BIOGRAPHY)
VALUES ('Guillem Balague', 'guillem@worldcup.com', 'Spain', 'guillem.jpg', 'Spanish football journalist covering European and international football.');

INSERT INTO TBL_JOURNALIST (NAME, EMAIL, COUNTRY, PHOTO_URL, BIOGRAPHY)
VALUES ('Sid Lowe', 'sid@worldcup.com', 'Spain', 'sidlowe.jpg', 'Spanish football writer specializing in international competitions.');

INSERT INTO TBL_JOURNALIST (NAME, EMAIL, COUNTRY, PHOTO_URL, BIOGRAPHY)
VALUES ('Julien Laurens', 'julien@worldcup.com', 'France', 'julien.jpg', 'French football journalist and international analyst.');

INSERT INTO TBL_JOURNALIST (NAME, EMAIL, COUNTRY, PHOTO_URL, BIOGRAPHY)
VALUES ('Hugo Gatti', 'hugo@worldcup.com', 'Argentina', 'hugogatti.jpg', 'Argentine football commentator and former professional goalkeeper.');

INSERT INTO TBL_JOURNALIST (NAME, EMAIL, COUNTRY, PHOTO_URL, BIOGRAPHY) VALUES ('Martin Liberman', 'martin@worldcup.com', 'Argentina', 'martin.jpg', 'Argentine sports journalist covering international football events.');


-- STADIUM

INSERT INTO TBL_STADIUM (NAME, CITY, COUNTRY, CAPACITY, IMAGE_URL, DESCRIPTION, OPENED_YEAR)
VALUES ('MetLife Stadium', 'New Jersey', 'USA', 82500, 'metlife.jpg', 'Official stadium of the FIFA World Cup 2026.', 2010);

INSERT INTO TBL_STADIUM (NAME, CITY, COUNTRY, CAPACITY, IMAGE_URL, DESCRIPTION, OPENED_YEAR)
VALUES ('AT&T Stadium', 'Arlington', 'USA', 80000, 'att.jpg', 'One of the largest stadiums in the United States.', 2009);

INSERT INTO TBL_STADIUM (NAME, CITY, COUNTRY, CAPACITY, IMAGE_URL, DESCRIPTION, OPENED_YEAR)
VALUES ('Estadio Azteca', 'Mexico City', 'Mexico', 87523, 'azteca.jpg', 'Historic World Cup stadium.', 1966);

INSERT INTO TBL_STADIUM (NAME, CITY, COUNTRY, CAPACITY, IMAGE_URL, DESCRIPTION, OPENED_YEAR)
VALUES ('Mercedes-Benz Stadium', 'Atlanta', 'USA', 71000, 'mercedes-benz.jpg', 'Host venue for FIFA World Cup 2026 matches.', 2017);

INSERT INTO TBL_STADIUM (NAME, CITY, COUNTRY, CAPACITY, IMAGE_URL, DESCRIPTION, OPENED_YEAR)
VALUES ('Gillette Stadium', 'Foxborough', 'USA', 65878, 'gillette.jpg', 'World Cup venue located near Boston.', 2002);

INSERT INTO TBL_STADIUM (NAME, CITY, COUNTRY, CAPACITY, IMAGE_URL, DESCRIPTION, OPENED_YEAR)
VALUES ('Hard Rock Stadium', 'Miami Gardens', 'USA', 65326, 'hardrock.jpg', 'Host stadium for FIFA World Cup 2026.', 1987);

INSERT INTO TBL_STADIUM (NAME, CITY, COUNTRY, CAPACITY, IMAGE_URL, DESCRIPTION, OPENED_YEAR)
VALUES ('NRG Stadium', 'Houston', 'USA', 72220, 'nrg.jpg', 'Major venue selected for the World Cup.', 2002);

INSERT INTO TBL_STADIUM (NAME, CITY, COUNTRY, CAPACITY, IMAGE_URL, DESCRIPTION, OPENED_YEAR)
VALUES ('Arrowhead Stadium', 'Kansas City', 'USA', 76416, 'arrowhead.jpg', 'One of the loudest stadiums in the world.', 1972);

INSERT INTO TBL_STADIUM (NAME, CITY, COUNTRY, CAPACITY, IMAGE_URL, DESCRIPTION, OPENED_YEAR)
VALUES ('SoFi Stadium', 'Los Angeles', 'USA', 70000, 'sofi.jpg', 'Modern stadium hosting World Cup matches.', 2020);

INSERT INTO TBL_STADIUM (NAME, CITY, COUNTRY, CAPACITY, IMAGE_URL, DESCRIPTION, OPENED_YEAR)
VALUES ('Lincoln Financial Field', 'Philadelphia', 'USA', 67594, 'lincoln.jpg', 'Philadelphia World Cup venue.', 2003);

INSERT INTO TBL_STADIUM (NAME, CITY, COUNTRY, CAPACITY, IMAGE_URL, DESCRIPTION, OPENED_YEAR)
VALUES ('Lumen Field', 'Seattle', 'USA', 68740, 'lumen.jpg', 'Seattle host stadium for the World Cup.', 2002);

INSERT INTO TBL_STADIUM (NAME, CITY, COUNTRY, CAPACITY, IMAGE_URL, DESCRIPTION, OPENED_YEAR)
VALUES ('Levis Stadium', 'Santa Clara', 'USA', 68500, 'levis.jpg', 'San Francisco Bay Area World Cup venue.', 2014);

INSERT INTO TBL_STADIUM (NAME, CITY, COUNTRY, CAPACITY, IMAGE_URL, DESCRIPTION, OPENED_YEAR)
VALUES ('BC Place', 'Vancouver', 'Canada', 54500, 'bcplace.jpg', 'Canadian host stadium for FIFA World Cup 2026.', 1983);

INSERT INTO TBL_STADIUM (NAME, CITY, COUNTRY, CAPACITY, IMAGE_URL, DESCRIPTION, OPENED_YEAR)
VALUES ('BMO Field', 'Toronto', 'Canada', 45000, 'bmofield.jpg', 'Toronto venue for the FIFA World Cup.', 2007);

INSERT INTO TBL_STADIUM (NAME, CITY, COUNTRY, CAPACITY, IMAGE_URL, DESCRIPTION, OPENED_YEAR)
VALUES ('Estadio BBVA', 'Monterrey', 'Mexico', 53500, 'bbva.jpg', 'Modern Mexican venue selected for the tournament.', 2015);

INSERT INTO TBL_STADIUM (NAME, CITY, COUNTRY, CAPACITY, IMAGE_URL, DESCRIPTION, OPENED_YEAR)
VALUES ('Estadio Akron', 'Guadalajara', 'Mexico', 49850, 'akron.jpg', 'Host stadium in Guadalajara.', 2010);

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
        4,
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
INSERT INTO TBL_NEWS
(TITLE, SUMMARY, CONTENT, IMAGE_URL, VIDEO_URL, FEATURED, VIEWS, CREATED_AT, CATEGORY_ID, JOURNALIST_ID, STADIUM_ID)
VALUES ('Neymar has 79 international goals and leads Brazil’s all-time scoring list.',
        'Neymar tem 79 gols pela Seleção Brasileira e ocupa o topo da lista de maiores artilheiros da história do país. Ele está à frente de Pelé no ranking histórico de gols pela equipe nacional.',
        'Neymar currently has 79 goals for the Brazilian national team, establishing himself as the all-time leading scorer in the team’s history. The forward reached this milestone throughout his international career, surpassing long-standing records that were previously attributed to Pelé for decades. With this achievement, Neymar stands at the top of Brazil’s all-time scoring chart, reinforcing his status as one of the most important players in the country’s football history. His record reflects not only longevity and consistent high-level performance, but also his decisive impact in both official competitions and international friendlies.',
        'https://images.ctfassets.net/3mv54pzvptwz/55YLwKPDnRXkqMBITRpWbC/0c2aefc04afa455c20e9ca0d209698e0/53174188191_42d4c831ae_o.jpg',
        'https://www.youtube.com/watch?v=UcLXIG3W7u4',
        FALSE,
        2500,
        CURRENT_TIMESTAMP,
        4,
        3,
        4
       );

