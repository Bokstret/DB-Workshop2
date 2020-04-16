--------------------------------
-- Populate projectcountry table
--------------------------------
INSERT INTO projectcountry(country)
VALUES('US');

INSERT INTO projectcountry(country)
VALUES('GB');

INSERT INTO projectcountry(country)
VALUES('CA');

INSERT INTO projectcountry(country)
VALUES('AU');

INSERT INTO projectcountry(country)
VALUES('NO');

-------------------------
-- Populate projectcategory table
-------------------------
INSERT INTO projectcategory(main_category)
VALUES('Publishing');

INSERT INTO projectcategory(main_category)
VALUES('Film and Video');

INSERT INTO projectcategory(main_category)
VALUES('Music');

INSERT INTO projectcategory(main_category)
VALUES('Food');

INSERT INTO projectcategory(main_category)
VALUES('Design');

INSERT INTO projectcategory(main_category)
VALUES('Games');

-------------------------
-- Populate project table
-------------------------
INSERT INTO Project(projectid,title,country,main_category)
VALUES(1000002330, 'The Songs of Adelaide and Abullah', 'GB', 'Publishing');

INSERT INTO Project(projectid,title,country,main_category)
VALUES(1000004038, 'Where is Hank?', 'US', 'Film and Video');

INSERT INTO Project(projectid,title,country,main_category)
VALUES(1000007540, 'ToshiCapital Needs Help to Complete Album', 'US', 'Music');

INSERT INTO Project(projectid,title,country,main_category)
VALUES(100004721, 'Of Jesus and Madmen', 'CA', 'Publishing');

INSERT INTO Project(projectid,title,country,main_category)
VALUES(1000014025, 'Monarch Espresso Bar', 'US', 'Food');

INSERT INTO Project(projectid,title,country,main_category)
VALUES(1000232288, 'Empires at Sea', 'US', 'Games');

INSERT INTO Project(projectid,title,country,main_category)
VALUES(1000256760, 'Raise the Woof, expanding the love', 'CA', 'Design');

INSERT INTO Project(projectid,title,country,main_category)
VALUES(1000335422, 'Where is Home? Anthology', 'CA', 'Publishing');

INSERT INTO Project(projectid,title,country,main_category)
VALUES(1000190427, 'Seas of Iron', 'US', 'Games');

INSERT INTO Project(projectid,title,country,main_category)
VALUES(1000115172, 'Daily Brew Coffee', 'GB', 'Food');

INSERT INTO Project(projectid,title,country,main_category)
VALUES(1000104953, 'Rebel Army: The Story Of Major Gripes', 'GB', 'Publishing');

INSERT INTO Project(projectid,title,country,main_category)
VALUES(1000071625, 'Boco Tea', 'US', 'Food');

INSERT INTO Project(projectid,title,country,main_category)
VALUES(1000320473, 'Uncommon Rhythm Season One	', 'US', 'Film and Video');

INSERT INTO Project(projectid,title,country,main_category)
VALUES(1000542390, 'Spirits Asunder', 'GB', 'Film and Video');

INSERT INTO Project(projectid,title,country,main_category)
VALUES(1000567557, 'The Seven Rays', 'US', 'Music');

------------------------
-- Populate collectionstatus table
------------------------
INSERT INTO collectionstatus(status)
VALUES('failed');

INSERT INTO collectionstatus(status)
VALUES('successful');


----------------------------
-- Populate collectiontime table
----------------------------

INSERT INTO collectiontime(projectid,launched)
VALUES(1000002330, '11-08-2015 12:12:28');

INSERT INTO collectiontime(projectid,launched)
VALUES(1000004038, '12-01-2013 00:20:50');

INSERT INTO collectiontime(projectid,launched)
VALUES(1000007540, '17-03-2012 03:24:11');

INSERT INTO collectiontime(projectid,launched)
VALUES(100004721, '09-09-2013 18:19:37');

INSERT INTO collectiontime(projectid,launched)
VALUES(1000014025, '26-02-2016 13:38:27');

INSERT INTO collectiontime(projectid,launched)
VALUES(1000232288, '24-05-2015 12:47:52');

INSERT INTO collectiontime(projectid,launched)
VALUES(1000256760, '08-07-2015 21:46:53');

INSERT INTO collectiontime(projectid,launched)
VALUES(1000335422, '10-06-2014 00:09:47');

INSERT INTO collectiontime(projectid,launched)
VALUES(1000190427, '19-06-2013 03:16:33');

INSERT INTO collectiontime(projectid,launched)
VALUES(1000115172, '01-03-2015 18:06:32');

INSERT INTO collectiontime(projectid,launched)
VALUES(1000104953, '29-12-2015 16:59:29');

INSERT INTO collectiontime(projectid,launched)
VALUES(1000071625, '03-05-2012 17:24:32');

INSERT INTO collectiontime(projectid,launched)
VALUES(1000320473, '15-08-2013 11:16:24');

INSERT INTO collectiontime(projectid,launched)
VALUES(1000542390, '01-03-2015 05:52:30');

INSERT INTO collectiontime(projectid,launched)
VALUES(1000567557, '24-02-2012 02:52:41');

----------------------------
-- Populate collection table
----------------------------
INSERT INTO Collection(projectid,collected,goal,currancy,status)
VALUES(1000002330, 0, 1000, 'GBP', 'failed');

INSERT INTO Collection(projectid,collected,goal,currancy,status)
VALUES(1000004038, 220, 45000, 'USD', 'failed');

INSERT INTO Collection(projectid,collected,goal,currancy,status)
VALUES(1000007540, 1283, 19500, 'USD', 'failed');

INSERT INTO Collection(projectid,collected,goal,currancy,status)
VALUES(100004721, 0, 2500, 'CAD', 'failed');

INSERT INTO Collection(projectid,collected,goal,currancy,status)
VALUES(1000014025, 52375, 50000, 'USD', 'successful');

INSERT INTO Collection(projectid,collected,goal,currancy,status)
VALUES(1000232288, 37199, 25000, 'USD', 'successful');

INSERT INTO Collection(projectid,collected,goal,currancy,status)
VALUES(1000256760, 700, 15000, 'CAD', 'failed');

INSERT INTO Collection(projectid,collected,goal,currancy,status)
VALUES(1000335422, 4944, 4000, 'CAD', 'successful');

INSERT INTO Collection(projectid,collected,goal,currancy,status)
VALUES(1000190427, 8105, 3000, 'USD', 'successful');

INSERT INTO Collection(projectid,collected,goal,currancy,status)
VALUES(1000115172, 21, 3500, 'GBP', 'failed');

INSERT INTO Collection(projectid,collected,goal,currancy,status)
VALUES(1000104953, 112, 100, 'GBP', 'successful');

INSERT INTO Collection(projectid,collected,goal,currancy,status)
VALUES(1000071625, 1781, 5000, 'USD', 'failed');

INSERT INTO Collection(projectid,collected,goal,currancy,status)
VALUES(1000320473, 10410, 29700, 'USD', 'failed');

INSERT INTO Collection(projectid,collected,goal,currancy,status)
VALUES(1000542390, 5, 500, 'GBP', 'failed');

INSERT INTO Collection(projectid,collected,goal,currancy,status)
VALUES(1000567557, 260, 3000, 'USD', 'failed');
