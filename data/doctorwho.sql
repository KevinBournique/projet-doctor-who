
DROP TABLE IF EXISTS "doctor";
DROP TABLE IF EXISTS "companion";

CREATE TABLE IF NOT EXISTS "doctor"(
	"doctor_id" INT PRIMARY KEY NOT NULL,
	"doctor_numero" INT NOT NULL,
	"doctor_name" VARCHAR(350) NOT NULL,
	"birth_date" VARCHAR(350) NOT NULL,
	"first_episode_date" VARCHAR(350) NOT NULL,
	"last_episode_date" VARCHAR(350) NOT NULL
);

CREATE TABLE IF NOT EXISTS "companion"(
	"companion_id" INT PRIMARY KEY NOT NULL,
	"companion_name" VARCHAR(350) NOT NULL,
	"actor_name" VARCHAR(350) NOT NULL,
	"first_episode_date" VARCHAR(350) NOT NULL,
	"last_episode_date" VARCHAR(350) NOT NULL
);

INSERT INTO "doctor" (
	"doctor_id",
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

INSERT INTO "companion" (
	"companion_id",
	"companion_name",
	"actor_name",
	"birth_date",
	"first_episode_date",
	"last_episode_date")

VALUES 
	('1', 'Susan Foreman', 'Carole Ann Ford', '1940-06-16', '1963-11-23', '1964-12-26'),
	('2', 'Barbara Wright', 'Jacqueline Hill', '1929-12-17', '1963-11-23', '1965-06-26'),
    ('3', 'Ian Chesterton', 'William Russell', '1924-11-19', '1963-11-23', '1965-06-26'),
	('4', 'Vicki', 'Maureen O Brien', '1943-06-29', '1965-01-02', '1965-11-06'),
	('5', 'Steven Taylor', 'Peter Purves', '1939-02-10', '1965-05-22', '1966-06-18'),
	('6', 'Katarina', 'Adrienne Hill', '1937-07-22', '1965-10-16', '1966-01-29'),
	('7', 'Sara Kingdom', 'Jean Marsh', '1934-07-01', '1965-11-13', '1966-01-29'),
	('8', 'Dodo Chaplet', 'Jackie Lane', '1941-06-23', '1966-02-05', '1966-07-16'),
	('9', 'Polly', 'Anneke Wills', '1941-10-20', '1966-06-25', '2017-12-25'),
	('10', 'Ben Jackson', 'Michael Craze', '1942-11-29', '1966-06-25', '2017-12-25'),
	('11', 'Jamie McCrimmon', 'Frazer Hines', '1944-09-22', '1966-12-17', '1969-06-21'),
	('12', 'Victoria Waterfield', 'Deborah Watling','1948-01-02', '1967-05-20', '1968-04-20'),
	('13', 'Zoe Heriot', 'Wendy Padbury', '1947-12-07', '1968-04-27', '1969-06-21');
	('15', 'Liz Shaw', 'Caroline John', '1940-09-19', '1970-01-03', '1970-06-20');
	('16', 'Jo Grant', 'Katy Manning', '1946-10-14', '1971-01-02', '1973-06-23');
	('17', 'Sarah Jane Smith', 'Elisabeth Sladen', '1946-02-01', '1973-12-15', '2009-12-25');
	('18', 'Harry Sullivan', 'Ian Marter', '1944-10-28', '1974-12-28', '1975-12-13');
	('19', 'Leela', 'Louise Jameson', '1951-04-20', '1977-01-01', '1978-03-11');
	('20', 'K-9', 'John Leeson', '1943-03-16', '1977-10-01', '2006-04-29');
	('21', 'Romana I', 'Mary Tamm', '1950-03-22', '1978-09-02', '1993-11-27');
	('22', 'Romana II', 'Lalla Ward', '1951-06-28', '1978-09-02', '1993-11-27');
	('23', 'Adric', 'Matthew Waterhouse', '1961-12-19', '1980-10-25', '1982-03-16');
	('24', 'Nyssa', 'Sarah Sutton', '1961-12-12', '1981-01-31', '1983-02-23');
	('25', 'Tegan Jovanka', 'Janet Fielding', '1953-09-05', '1981-02-28', '1984-02-15');
	('26', 'Vislor Turlough', 'Mark Strickson', '1959-04-06', '1983-02-01', '1984-03-02');
	('27', 'Kamelion', 'Gerald Flood', '1927-04-21', '1983-03-15', '1984-03-02');
	('28', 'Peri Brown', 'Nicola Bryant', '1960-10-11', '1984-02-23', '1986-10-25');
	('29', 'Mel Bush', 'Bonnie Langford', '1964-07-22', '1986-11-01', '1987-12-07');
	('30', 'Ace', 'Sophie Aldred', '1962-08-20', '1987-12-07', '1989-12-06');
	('31', 'Grace Holloway', 'Daphne Ashbrook', '1963-01-30', '1996-05-27', '1996-05-27');
	('32', 'Rose Tyler', 'Billie Piper', '1982-09-22', '2005-03-26', '2013-11-23');
	('33', 'Captain Jack Harkness', 'John Barrowman', '1967-03-11', '2005-05-21', '2021-01-01');
	('34', 'Mickey Smith', 'Noel Clarke', '1975-12-06', '2005-03-26', '2009-12-25');
	('35', 'Donna Noble', 'Catherine Tate', '1969-12-05', '2006-07-08', '2023');
	('36', 'Martha Jones', 'Freema Agyeman', '1979-03-20', '2007-03-31', '2009-12-25');
	('37', 'Amy Pond', 'Karen Gillan', '1987-11-28', '2010-04-03', '2013-12-25');
	('38', 'Rory Williams', 'Arthur Darvill', '1982-06-17', '2013-04-03', '2013-09-29');
	('39', 'River Song', 'Alex Kingston', '1963-03-11', '2008-05-31', '2015-12-25');
	('40', 'Clara Oswald', 'Jenna Coleman', '1986-04-27', '2012-09-01', '2017-12-25');
	('41', 'Nardole', 'Matt Lucas', '1974-03-05', '2015-12-25', '2017-12-25');
	('42', 'Bill Potts', 'Pearl Mackie', '1987-05-29', '2017-04-15', '2017-12-25');
	('43', `Graham O'Brien`, 'Bradley Walsh', '1960-06-04', '2018-10-07', '2022-10-23');
	('44', 'Ryan Sinclair', 'Tosin Cole', '1992-07-23', '2018-10-07', '2021-01-01');
	('45', 'Yasmin Khan', 'Mandip Gill', '1988-01-05', '2018-10-07', '2022-10-23');
	('46', 'Dan', 'John Bishop', '1966-11-30', '2021-10-30', '2022-10-23');
