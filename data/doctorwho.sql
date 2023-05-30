
DROP TABLE IF EXISTS "doctor";

CREATE TABLE IF NOT EXISTS "doctor"(
	"doctor_id" INT PRIMARY KEY NOT NULL,
	"doctor_numero" INT NOT NULL,
	"doctor_name" VARCHAR(350) NOT NULL,
	"birth_date" VARCHAR(350) NOT NULL,
	"first_episode_date" VARCHAR(350) NOT NULL,
	"last_episode_date" VARCHAR(350) NOT NULL
);

INSERT INTO "doctor" ("doctor_id",
	"doctor_numero",
	"doctor_name",
	"birth_date",
	"first_episode_date",
	"last_episode_date")

VALUES ('1', 1, 'William Hartnell', '1908-01-08', '1963-10-29', '1966-10-29'),
	('2', 2, 'Patrick Troughton', '1920-03-25', '1966-11-05', '1969-06-21'),
    ('3', 3, 'Jon Pertwee', '1919-07-07', '1970-01-02', '1974-06-08'),
	('4', 4, 'Tom Baker', '1934-01-20', '1974-12-28', '1981-03-21'),
	('5', 5, 'Peter Davison', '1951-04-13', '1982-01-04', '1984-03-16'),
	('6', 6, 'Colin Baker', '1943-06-08', '1984-03-22', '1986-12-06'),
	('7', 7, 'Sylvester McCoy', '1943-08-20', '1987-09-07', '1989-12-06'),
	('8', 8, 'Paul McGann', '1959-11-14', '1996-05-27', '1996-05-27'),
	('9', 9, 'Christopher Eccleston', '1964-02-16', '2005-03-26', '2005-06-18'),
	('10', 10, 'David Tennant', '1971-04-18', '2005-12-25', '2010-01-01'),
	('11', 11, 'Matt Smith', '1982-10-28', '2010-04-03', '2013-12-25'),
	('12', 12, 'Peter Capaldi', '1958-04-14','2014-08-23', '2017-12-25'),
	('13', 13, 'Jodie Whittaker', '1982-06-17', '2018-10-07', '2020-03-01');
