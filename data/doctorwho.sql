
DROP TABLE IF EXISTS "doctor";

CREATE TABLE IF NOT EXISTS "doctor"(
	"doctor_id" INT PRIMARY KEY NOT NULL,
	"doctor_numero" INT NOT NULL,
	"doctor_name" VARCHAR(350) NOT NULL,
	"birth_date" DATE NOT NULL,
	"first_episode_date" DATE NOT NULL,
	"last_episode_date" DATE NOT NULL
);

INSERT INTO "doctor" ("doctor_id",
	"doctor_numero",
	"doctor_name",
	"birth_date",
	"first_episode_date",
	"last_episode_date")

VALUES ('1', 1, 'William Hartnell', '1908-01-08'::DATE, '1963-10-29'::DATE, '1966-10-29'::DATE),
	('2', 2, 'Patrick Troughton', '1920-03-25'::DATE, '1966-11-05'::DATE, '1969-06-21'::DATE),
    ('3', 3, 'Jon Pertwee', '1919-07-07'::DATE, '1970-01-02'::DATE, '1974-06-08'::DATE),
	('4', 4, 'Tom Baker', '1934-01-20'::DATE, '1974-12-28'::DATE, '1981-03-21'::DATE),
	('5', 5, 'Peter Davison', '1951-04-13'::DATE, '1982-01-04'::DATE, '1984-03-16'::DATE),
	('6', 6, 'Colin Baker', '1943-06-08'::DATE, '1984-03-22'::DATE, '1986-12-06'::DATE),
	('7', 7, 'Sylvester McCoy', '1943-08-20'::DATE, '1987-09-07'::DATE, '1989-12-06'::DATE),
	('8', 8, 'Paul McGann', '1959-11-14'::DATE, '1996-05-27'::DATE, '1996-05-27'::DATE),
	('9', 9, 'Christopher Eccleston', '1964-02-16'::DATE, '2005-03-26'::DATE, '2005-06-18'::DATE),
	('10', 10, 'David Tennant', '1971-04-18'::DATE, '2005-12-25'::DATE, '2010-01-01'::DATE),
	('11', 11, 'Matt Smith', '1982-10-28'::DATE, '2010-04-03'::DATE, '2013-12-25'::DATE),
	('12', 12, 'Peter Capaldi', '1958-04-14'::DATE,'2014-08-23'::DATE, '2017-12-25'::DATE),
	('13', 13, 'Jodie Whittaker', '1982-06-17'::DATE, '2018-10-07'::DATE, '2020-03-01'::DATE);
