create database quiz2;
create TABLE movie(
mID serial primary key,
year int,
director varchar (255) primary key
);
create TABLE reviewer(
rID serial primary key,
name varchar (255) primary key
);
create TABLE rating(
rID  serial primary key,
mID int references movie,
stars int,
ratingDate int
);

INSERT INTO movie VALUES (101, 'Gone with the Wind', 1939,'Victor Fleming');
INSERT INTO movie VALUES (102, 'Star Wars', 1977,'George Lucas');
INSERT INTO movie VALUES (103, 'The Sound of Music', 1965,'Robert Wise');
INSERT INTO movie VALUES (101, 'E.T', 1982,'Steves Spilberg');


INSERT INTO reviewer VALUES (201,'Sarah Martinez');
INSERT INTO reviewer VALUES (202,'Daniel Lewis');
INSERT INTO reviewer VALUES (203,'Brittany Harris');
INSERT INTO reviewer VALUES (204,'Mike Anderson');

INSERT INTO rating VALUES (201,101,2,2011-01-22);
INSERT INTO rating VALUES (201,101,4,2011-01-27);
INSERT INTO rating VALUES (202,106,4, null);
INSERT INTO rating VALUES (203,103,2,2011-01-20);

SELECT m.title, avg (stars) From movie m INNER JOIN rating rt ON m.mID = rt.mID GROUP BY mID ORDER BY avg (stars) desc,title asc;
create view VIEWnew AS SELECT title FROM movie WHERE director = 'Steven Spileberg';
create View Drog AS SELECT title from movie where director='Steven Spileberg';
