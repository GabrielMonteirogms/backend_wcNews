
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

INSERT INTO TBL_NEWS(TITLE, SUMMARY, CONTENT, IMAGE_URL, FEATURED, VIEWS, CREATED_AT, CATEGORY_ID, JOURNALIST_ID, STADIUM_ID)
VALUES('Brazil defeats Argentina', 'South American classic ends with Brazilian victory.','Brazil secured a 2-1 victory over Argentina in a thrilling match.','brazil-argentina.jpg',TRUE,1500,CURRENT_TIMESTAMP,1,1,1);

INSERT INTO TBL_NEWS(TITLE, SUMMARY, CONTENT, IMAGE_URL, FEATURED, VIEWS, CREATED_AT, CATEGORY_ID, JOURNALIST_ID, STADIUM_ID)
VALUES('MetLife Stadium prepares for opening match','Organizers complete final inspections.','The stadium is ready to host one of the biggest events in football.','metlife-news.jpg',TRUE,900,CURRENT_TIMESTAMP,3,2,1);

-- COMMENTS

INSERT INTO TBL_COMMENT (AUTHOR_NAME, MESSAGE, CREATED_AT, NEWS_ID)
VALUES ('Gabriel', 'Great match!', CURRENT_TIMESTAMP, 1);

INSERT INTO TBL_COMMENT (AUTHOR_NAME, MESSAGE, CREATED_AT, NEWS_ID)
VALUES ('Lucas', 'Brazil played very well.', CURRENT_TIMESTAMP, 1);

INSERT INTO TBL_COMMENT (AUTHOR_NAME, MESSAGE, CREATED_AT, NEWS_ID)
VALUES ('Maria', 'I cant wait for the tournament.', CURRENT_TIMESTAMP, 2);