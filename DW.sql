-- create the database needed
CREATE DATABASE "DoctorWho";

-- create table of authors of episodes
CREATE TABLE "tblAuthor"(
	"AuthorId" SERIAL PRIMARY KEY,
	"AuthorName" VARCHAR(50)
);

-- create table of companions of Dr Who
CREATE TABLE "tblCompanion"(
	"CompanionId" SERIAL PRIMARY KEY,
	"CompanionName" VARCHAR(50) NOT NULL,
	"WhoPlayed" VARCHAR(50)
);

-- create table of Dr Who's
CREATE TABLE "tblDoctor"(
	"DoctorId" SERIAL PRIMARY KEY,
	"DoctorNumber" INT,
	"DoctorName" VARCHAR(50),
	"BirthDate" DATE,
	"FirstEpisodeDate" DATE,
	"LastEpisodeDate" DATE
);

-- create table of enemies of the Doctor
CREATE TABLE "tblEnemy"(
	"EnemyId" SERIAL PRIMARY KEY,
	"EnemyName" VARCHAR(100),
	"Description" VARCHAR(255)
);

-- create table of the episodes
CREATE TABLE "tblEpisode"(
	"EpisodeId" SERIAL PRIMARY KEY,
	"SeriesNumber" INT,
	"EpisodeNumber" INT,
	"EpisodeType" VARCHAR(50),
	"Title" VARCHAR(255),
	"EpisodeDate" DATE,
	"AuthorId" INT,
	"DoctorId" INT,
	"Notes" VARCHAR(255)
);

-- create table of which companions were in which episodes
CREATE TABLE ""tblEpisodeCompanion""(
	"EpisodeCompanionId" SERIAL PRIMARY KEY,
	"EpisodeId" INT,
	"CompanionId" INT
);

-- create table of which enemies were in which episodes
CREATE TABLE "tblEpisodeEnemy"(
	"EpisodeEnemyId" SERIAL PRIMARY KEY,
	"EpisodeId" INT,
	"EnemyId" INT
);

-- Ajouter les auteurs
INSERT INTO "tblAuthor" ("AuthorId", "AuthorName") VALUES (1, 'Chris Chibnall');
INSERT INTO "tblAuthor" ("AuthorId", "AuthorName") VALUES (2, 'Gareth Roberts');
INSERT INTO "tblAuthor" ("AuthorId", "AuthorName") VALUES (3, 'Helen Raynor');
INSERT INTO "tblAuthor" ("AuthorId", "AuthorName") VALUES (4, 'James Moran');
INSERT INTO "tblAuthor" ("AuthorId", "AuthorName") VALUES (5, 'James Strong');
INSERT INTO "tblAuthor" ("AuthorId", "AuthorName") VALUES (6, 'Jamie Matheson');
INSERT INTO "tblAuthor" ("AuthorId", "AuthorName") VALUES (7, 'Keith Temple');
INSERT INTO "tblAuthor" ("AuthorId", "AuthorName") VALUES (8, 'Mark Gatiss');
INSERT INTO "tblAuthor" ("AuthorId", "AuthorName") VALUES (9, 'Matt Jones');
INSERT INTO "tblAuthor" ("AuthorId", "AuthorName") VALUES (10, 'Matthew Graham');
INSERT INTO "tblAuthor" ("AuthorId", "AuthorName") VALUES (11, 'Neil Cross');
INSERT INTO "tblAuthor" ("AuthorId", "AuthorName") VALUES (12, 'Neil Gaiman');
INSERT INTO "tblAuthor" ("AuthorId", "AuthorName") VALUES (13, 'Paul Cornell');
INSERT INTO "tblAuthor" ("AuthorId", "AuthorName") VALUES (14, 'Peter Harness');
INSERT INTO "tblAuthor" ("AuthorId", "AuthorName") VALUES (15, 'Phil Ford');
INSERT INTO "tblAuthor" ("AuthorId", "AuthorName") VALUES (16, 'Richard Curtis');
INSERT INTO "tblAuthor" ("AuthorId", "AuthorName") VALUES (17, 'Robert Shearman');
INSERT INTO "tblAuthor" ("AuthorId", "AuthorName") VALUES (18, 'Russell T. Davies');
INSERT INTO "tblAuthor" ("AuthorId", "AuthorName") VALUES (19, 'Simon Nye');
INSERT INTO "tblAuthor" ("AuthorId", "AuthorName") VALUES (20, 'Stephen Greenhorn');
INSERT INTO "tblAuthor" ("AuthorId", "AuthorName") VALUES (21, 'Steve Thompson');
INSERT INTO "tblAuthor" ("AuthorId", "AuthorName") VALUES (22, 'Steven Moffat');
INSERT INTO "tblAuthor" ("AuthorId", "AuthorName") VALUES (23, 'Toby Whithouse');
INSERT INTO "tblAuthor" ("AuthorId", "AuthorName") VALUES (24, 'Tom MacRae');
INSERT INTO "tblAuthor" ("AuthorId", "AuthorName") VALUES (25, 'Frank Cottrell Boyce');

-- Ajouter les compagnons
INSERT INTO "tblCompanion" ("CompanionId", "CompanionName", "WhoPlayed") VALUES (1, 'River Song', 'Alex Kingston');
INSERT INTO "tblCompanion" ("CompanionId", "CompanionName", "WhoPlayed") VALUES (2, 'Rory Williams', 'Arthur Darvill');
INSERT INTO "tblCompanion" ("CompanionId", "CompanionName", "WhoPlayed") VALUES (3, 'Wilfred Mott', 'Bernard Cribbins');
INSERT INTO "tblCompanion" ("CompanionId", "CompanionName", "WhoPlayed") VALUES (4, 'Rose Tyler', 'Billie Piper');
INSERT INTO "tblCompanion" ("CompanionId", "CompanionName", "WhoPlayed") VALUES (5, 'Adam Mitchell', 'Bruno Langley');
INSERT INTO "tblCompanion" ("CompanionId", "CompanionName", "WhoPlayed") VALUES (6, 'Donna Noble', 'Catherine Tate');
INSERT INTO "tblCompanion" ("CompanionId", "CompanionName", "WhoPlayed") VALUES (7, 'Jackson Lake', 'David Morrissey');
INSERT INTO "tblCompanion" ("CompanionId", "CompanionName", "WhoPlayed") VALUES (8, 'Sarah Jane Smith', 'Elisabeth Sladen');
INSERT INTO "tblCompanion" ("CompanionId", "CompanionName", "WhoPlayed") VALUES (9, 'Martha Jones', 'Freema Agyeman');
INSERT INTO "tblCompanion" ("CompanionId", "CompanionName", "WhoPlayed") VALUES (10, 'Craig Owens', 'James Corden');
INSERT INTO "tblCompanion" ("CompanionId", "CompanionName", "WhoPlayed") VALUES (11, 'Clara Oswald', 'Jenna Coleman');
INSERT INTO "tblCompanion" ("CompanionId", "CompanionName", "WhoPlayed") VALUES (12, 'Jack Harkness', 'John Barrowman');
INSERT INTO "tblCompanion" ("CompanionId", "CompanionName", "WhoPlayed") VALUES (13, 'Amy Pond', 'Karen Gillan');
INSERT INTO "tblCompanion" ("CompanionId", "CompanionName", "WhoPlayed") VALUES (14, 'Astrid Peth', 'Kylie Minogue');
INSERT INTO "tblCompanion" ("CompanionId", "CompanionName", "WhoPlayed") VALUES (15, 'Adelaide Brooke', 'Lindsay Duncan');
INSERT INTO "tblCompanion" ("CompanionId", "CompanionName", "WhoPlayed") VALUES (16, 'Lady Christina de Souza', 'Michelle Ryan');
INSERT INTO "tblCompanion" ("CompanionId", "CompanionName", "WhoPlayed") VALUES (17, 'Mickey Smith', 'Noel Clarke');
INSERT INTO "tblCompanion" ("CompanionId", "CompanionName", "WhoPlayed") VALUES (18, 'Rosita Farisi', 'Velle Tshabalala');

-- Ajouter les docteurs
INSERT INTO "tblDoctor" ("DoctorId", "DoctorNumber", "DoctorName", "BirthDate", "FirstEpisodeDate", "LastEpisodeDate") VALUES (1, 9, 'Christopher Eccleston', '1964-02-16', '2005-03-26', '2005-06-18');
INSERT INTO "tblDoctor" ("DoctorId", "DoctorNumber", "DoctorName", "BirthDate", "FirstEpisodeDate", "LastEpisodeDate") VALUES (2, 6, 'Colin Baker', '1943-06-08', '1984-03-22', '1986-12-06');
INSERT INTO "tblDoctor" ("DoctorId", "DoctorNumber", "DoctorName", "BirthDate", "FirstEpisodeDate", "LastEpisodeDate") VALUES (3, 10, 'David Tennant', '1971-04-18', '2005-06-18', '2010-01-01');
INSERT INTO "tblDoctor" ("DoctorId", "DoctorNumber", "DoctorName", "BirthDate", "FirstEpisodeDate", "LastEpisodeDate") VALUES (4, 3, 'Jon Pertwee', '1919-07-07', '1970-01-03', '1974-06-08');
INSERT INTO "tblDoctor" ("DoctorId", "DoctorNumber", "DoctorName", "BirthDate", "FirstEpisodeDate", "LastEpisodeDate") VALUES (5, 11, 'Matt Smith', '1982-10-28', '2010-01-01', '2013-12-25');
INSERT INTO "tblDoctor" ("DoctorId", "DoctorNumber", "DoctorName", "BirthDate", "FirstEpisodeDate", "LastEpisodeDate") VALUES (6, 2, 'Patrick Troughton', '1920-03-25', '1966-10-29', '1969-06-21');
INSERT INTO "tblDoctor" ("DoctorId", "DoctorNumber", "DoctorName", "BirthDate", "FirstEpisodeDate", "LastEpisodeDate") VALUES (7, 8, 'Paul McGann', '1959-11-14', '1996-05-27', '1996-05-27');
INSERT INTO "tblDoctor" ("DoctorId", "DoctorNumber", "DoctorName", "BirthDate", "FirstEpisodeDate", "LastEpisodeDate") VALUES (8, 12, 'Peter Capaldi', '1958-04-14', '2013-12-25', NULL);
INSERT INTO "tblDoctor" ("DoctorId", "DoctorNumber", "DoctorName", "BirthDate", "FirstEpisodeDate", "LastEpisodeDate") VALUES (9, 5, 'Peter Davison', '1951-04-13', '1982-03-26', '1984-03-16');
INSERT INTO "tblDoctor" ("DoctorId", "DoctorNumber", "DoctorName", "BirthDate", "FirstEpisodeDate", "LastEpisodeDate") VALUES (10, 7, 'Sylvester McCoy', '1943-08-20', '1987-09-07', '1989-12-06');
INSERT INTO "tblDoctor" ("DoctorId", "DoctorNumber", "DoctorName", "BirthDate", "FirstEpisodeDate", "LastEpisodeDate") VALUES (11, 4, 'Tom Baker', '1934-01-20', '1974-12-28', '1981-03-21');
INSERT INTO "tblDoctor" ("DoctorId", "DoctorNumber", "DoctorName", "BirthDate", "FirstEpisodeDate", "LastEpisodeDate") VALUES (12, 1, 'William Hartnell', '1908-01-08', '1963-11-23', '1966-10-29');

-- Ajouter les ennemis
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (1, 'The Autons', 'Murderous mannequins');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (2, 'Lady Cassandra', 'The last living human being');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (3, 'The Gelth', 'An alien species comprised of gas');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (4, 'The Slitheen', 'A baby-faced alien family');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (5, 'Daleks', 'Armoured aliens');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (6, 'Jagrafess', 'A hideous, giant slug-like creature');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (7, 'Reapers', 'Winged reptile-like creatures');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (8, 'The empty child', 'A by-product of a dead four-year-old child');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (9, 'The Sycorax', 'An alien race wearing bone-like masks');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (10, 'Face of Boe', 'A gigantic humanoid head');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (11, 'Sisters of Plenitude', 'A humanoid feline race, also known as "Catkind"');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (12, 'Werewolf', 'A werewolf moster');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (13, 'Krillitanes', 'Carnivorous, winged bat-like creatures');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (14, 'Clockwork Droids', 'Repair droids wearing scary masks');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (15, 'Cybermen', 'Cyborg race');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (16, 'The Wire', 'An alien lifeform of pure energy, taking human female form');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (17, 'The Ood', 'Aliens with tentacled faces carrying translation spheres');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (18, 'The Beast', 'Gigantic monster claiming to be Satan');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (19, 'The Abzorbaloff', 'Obese alien which absorbs victims through touch');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (20, 'Isolus', 'Alien resembling a small white flower, which will do anything not to be alone');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (21, 'Roboforms', 'Robots disguised as Santas');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (22, 'The empress of the Racnoss', 'The empress of a half-human, half arachnid race called the Racnoss');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (23, 'The Judoon', 'Galactic stormtroopers resembling rhinoceroses');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (24, 'Pyrovile', 'Volcano-dwelling creatures');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (25, 'Adipose', 'Small, white, marshmallow-like creatures');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (26, 'Vashta Nerada', 'Shadow-dwelling creatures');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (27, 'Sontarans', 'Cloned warriors from the planet Sontar');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (28, 'The Family of Blood', 'Shapeshifting aliens');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (29, 'Weeping Angels', 'Quantum-locked angelic beings');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (30, 'The Silence', 'Aliens with the ability to erase memory');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (31, 'The Great Intelligence', 'Sentient disembodied entity');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (32, 'Ice Warriors', 'Martian reptilian warriors');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (33, 'Zygons', 'Shape-shifting aliens from Zygor');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (34, 'The Master', 'Time Lord nemesis of the Doctor');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (35, 'Axons', 'Aliens with a deceptive appearance');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (36, 'Krynoids', 'Plant-like creatures with destructive tendencies');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (37, 'Mara', 'Manifestation of evil dreams');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (38, 'Mandrels', 'Primate-like creatures with sharp teeth');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (39, 'Omega', 'Ancient Time Lord and creator of Time Lord technology');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (40, 'Sea Devils', 'Marine cousins of the Silurians');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (41, 'Silurians', 'Reptilian race that ruled the Earth millions of years ago');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (42, 'The Celestial Toymaker', 'Powerful being who creates deadly games');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (43, 'The Black Guardian', 'Manifestation of chaos and darkness');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (44, 'The White Guardian', 'Manifestation of order and light');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (45, 'Krotons', 'Cyborg crystalline entities');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (46, 'Wirrn', 'Giant insectoid creatures');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (47, 'Yeti', 'Robotic Yeti controlled by the Great Intelligence');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (48, 'The Macra', 'Giant crab-like creatures');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (49, 'Alpha Centauri', 'Ambassador of the Galactic Federation');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (50, 'The Rani', 'Time Lord renegade scientist');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (51, 'Autons', 'Living plastic creatures');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (52, 'The Great Vampire', 'Ancient and powerful vampire-like being');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (53, 'The Nimon', 'Horned, bull-like aliens');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (54, 'The Mara', 'Manifestation of nightmares and fear');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (55, 'The Rutans', 'Shapeshifting alien race at war with the Sontarans');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (56, 'The Terileptils', 'Reptilian humanoids with advanced technology');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (57, 'The Tractators', 'Insectoid creatures that manipulate gravity');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (58, 'The Vervoids', 'Plant-based creatures created for genetic experiments');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (59, 'The Zygons', 'Shape-shifting aliens with a desire for conquest');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (60, 'The Fisher King', 'Powerful alien warlord');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (61, 'The Veil', 'Entity from a pocket universe');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (62, 'The Sandmen', 'Creatures made of sleep dust');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (63, 'The Monks', 'Aliens seeking to conquer Earth through manipulation');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (64, 'The Landlord', 'Entity that feeds on human memories');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (65, 'The Eaters of Light', 'Interdimensional creatures');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (66, 'The Emoji-Bots', 'Robotic creatures with emotion-based faces');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (67, 'The Boneless', '2D beings that absorb humans');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (68, 'The Veil', 'Entity that stalks its prey');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (69, 'The Time Beetle', 'Parasitic creature that alters timelines');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (70, 'The Flood', 'Intelligent water-based creatures');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (71, 'The Midnight Entity', 'Entity that possesses passengers on a spacecraft');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (72, 'The Trickster', 'Temporal manipulator');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (73, 'The Wire', 'Electromagnetic entity');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (74, 'The Gelth', 'Gaseous alien race');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (75, 'The Reapers', 'Temporal vortices that devour time-altered areas');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (76, 'The Isolus', 'Lonely child-like beings');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (77, 'The Hoix', 'Dog-like creatures from the Void');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (78, 'The Racnoss', 'Giant spider-like creatures');
INSERT INTO tblEnemy (EnemyId, EnemyName, Description) VALUES (79, 'The Judoon', 'Rhinoceros-headed intergalactic police force');

-- add the episodes
INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (1, 1, 1, 'Normal episode', 'Rose', '2000-01-01', 18, 1, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (2, 1, 2, 'Normal episode', 'The End of the World', '2000-01-02', 18, 1, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (3, 1, 3, 'Normal episode', 'The Unquiet Dead', '2000-01-03', 18, 1, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (4, 1, 4, 'Normal episode', 'Aliens of London (Part 1)', '2000-01-04', 18, 1, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (5, 1, 5, 'Normal episode', 'World War Three (Part 2)', '2000-01-05', 18, 1, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (6, 1, 6, 'Normal episode', 'Dalek', '2000-01-06', 17, 1, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (7, 1, 7, 'Normal episode', 'The Long Game', '2000-01-07', 18, 1, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (8, 1, 8, 'Normal episode', 'Father''s Day', '2000-01-08', 13, 1, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (9, 1, 9, 'Normal episode', 'The Empty Child (Part 1)', '2000-01-09', 22, 1, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (10, 1, 10, 'Normal episode', 'The Doctor Dances (Part 2)', '2000-01-10', 22, 1, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (11, 1, 11, 'Normal episode', 'Boom Town', '2000-01-11', 18, 1, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (12, 1, 12, 'Normal episode', 'Bad Wolf (Part 1)', '2000-01-12', 18, 1, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (13, 1, 13, 'Normal episode', 'The Parting of the Ways (Part 2)', '2000-01-13', 18, 1, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (14, 2, NULL, 'Christmas special', 'The Christmas Invasion', '2000-01-14', 18, 3, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (15, 2, 1, 'Normal episode', 'New Earth', '2000-01-15', 18, 3, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (16, 2, 2, 'Normal episode', 'Tooth and Claw', '2000-01-16', 18, 3, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (17, 2, 3, 'Normal episode', 'School Reunion', '2000-01-17', 23, 3, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (18, 2, 4, 'Normal episode', 'The Girl in the Fireplace', '2000-01-18', 22, 3, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (19, 2, 5, 'Normal episode', 'Rise of the Cybermen (Part 1)', '2000-01-19', 24, 3, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (20, 2, 6, 'Normal episode', 'The Age of Steel (Part 2)', '2000-01-20', 24, 3, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes)
VALUES (21, 2, 7, 'Normal episode', 'The Idiot\'s Lantern', CAST('2006-05-27' AS Date), 8, 3, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes)
VALUES (22, 2, 8, 'Normal episode', 'The Impossible Planet (Part 1)', CAST('2006-06-03' AS Date), 9, 3, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes)
VALUES (23, 2, 9, 'Normal episode', 'The Satan Pit (Part 2)', CAST('2006-06-10' AS Date), 9, 3, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes)
VALUES (24, 2, 10, 'Normal episode', 'Love & Monsters', CAST('2006-06-17' AS Date), 18, 3, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes)
VALUES (25, 2, 11, 'Normal episode', 'Fear Her', CAST('2006-06-24' AS Date), 10, 3, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes)
VALUES (26, 2, 12, 'Normal episode', 'Army of Ghosts (Part 1)', CAST('2006-07-01' AS Date), 18, 3, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes)
VALUES (27, 2, 13, 'Normal episode', 'Doomsday (Part 2)', CAST('2006-07-08' AS Date), 18, 3, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes)
VALUES (28, 3, NULL, 'Christmas special', 'The Runaway Bride', CAST('2006-12-25' AS Date), 18, 3, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes)
VALUES (29, 3, 1, 'Normal episode', 'Smith and Jones', CAST('2007-03-31' AS Date), 18, 3, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes)
VALUES (30, 3, 2, 'Normal episode', 'The Shakespeare Code', CAST('2007-04-07' AS Date), 2, 3, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes)
VALUES (31, 3, 3, 'Normal episode', 'Gridlock', CAST('2007-04-14' AS Date), 18, 3, 'Guest appearance by Ardal O\'Hanlon');

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes)
VALUES (32, 3, 4, 'Normal episode', 'Daleks in Manhattan (Part 1)', CAST('2007-04-21' AS Date), 5, 3, 'Technically monster is a human-dalek hybrid');

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes)
VALUES (33, 3, 5, 'Normal episode', 'Evolution of the Daleks (Part 2)', CAST('2007-04-28' AS Date), 5, 3, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes)
VALUES (34, 3, 6, 'Normal episode', 'The Lazarus Experiment', CAST('2007-05-05' AS Date), 20, 3, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes)
VALUES (35, 3, 7, 'Normal episode', '42', CAST('2007-05-19' AS Date), 1, 3, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes)
VALUES (36, 3, 8, 'Normal episode', 'Human Nature (Part 1)', CAST('2007-05-26' AS Date), 13, 3, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes)
VALUES (37, 3, 9, 'Normal episode', 'The Family of Blood (Part 2)', CAST('2007-06-02' AS Date), 13, 3, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes)
VALUES (38, 3, 10, 'Normal episode', 'Blink', CAST('2007-06-09' AS Date), 22, 3, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes)
VALUES (39, 3, 11, 'Normal episode', 'Utopia (Part 1)', CAST('2007-06-16' AS Date), 18, 3, 'Guest appearance by Derek Jacobi');

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (40, 3, 12, 'Normal episode', 'Last of the Time Lords (Part 2)', DATE '0020-11-11', 18, 3, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (41, 3, 13, 'Normal episode', 'Last of the Time Lords (Part 3)', DATE '0020-11-11', 18, 3, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (42, 4, NULL, 'Christmas special', 'Voyage of the Damned', DATE '0022-11-11', 18, 3, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (43, 4, 1, 'Normal episode', 'Partners in Crime', DATE '0023-11-11', 18, 3, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (44, 4, 2, 'Normal episode', 'The Fires of Pompeii', DATE '0024-11-11', 4, 3, 'Both Peter Capaldi and Karen Gillan play characters in this episode (future Doctor and companion)');

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (45, 4, 3, 'Normal episode', 'Planet of the Ood', DATE '0025-11-11', 7, 3, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (46, 4, 4, 'Normal episode', 'The Sontaran Stratagem (Part 1)', DATE '0026-11-11', 3, 3, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (47, 4, 5, 'Normal episode', 'The Poison Sky (Part 2)', DATE '0026-11-11', 3, 3, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (48, 4, 6, 'Normal episode', 'The Doctor''s Daughter', DATE '0027-11-11', 20, 3, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (49, 4, 7, 'Normal episode', 'The Unicorn and the Wasp', DATE '0027-11-11', 2, 3, 'Felicity Kendal guest stars');

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (50, 4, 8, 'Normal episode', 'Silence in the Library (Part 1)', DATE '0028-11-11', 22, 3, 'Count the shadows …');

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (51, 4, 9, 'Normal episode', 'Forest of the Dead (Part 2)', DATE '0028-11-11', 22, 3, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (52, 4, 10, 'Normal episode', 'Midnight', DATE '0028-11-11', 18, 3, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (53, 4, 11, 'Normal episode', 'Turn Left', DATE '0029-11-11', 18, 3, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (54, 4, 12, 'Normal episode', 'The Stolen Earth (Part 1)', DATE '0029-11-11', 18, 3, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (55, 4, 13, 'Normal episode', 'Journey''s End (Part 2)', DATE '0030-11-11', 18, 3, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (56, 4, NULL, 'Christmas special', 'The Next Doctor', DATE '0030-11-11', 18, 3, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (57, 4, NULL, 'Easter special', 'Planet of the Dead', DATE '0031-11-11', 2, 3, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (58, 4, NULL, 'Autumn special', 'The Waters of Mars', DATE '0032-11-11', 20, 3, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (59, 4, NULL, 'Christmas special', 'The End of Time (Part 1)', DATE '0033-11-11', 18, 3, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (60, 4, NULL, 'Christmas special', 'The End of Time (Part 2)', DATE '0033-11-11', 18, 3, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes)
VALUES (61, 5, 1, 'Normal episode', 'The Eleventh Hour', '2010-04-03', 22, 5, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes)
VALUES (62, 5, 2, 'Normal episode', 'The Beast Below', '2010-04-10', 22, 5, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes)
VALUES (63, 5, 3, 'Normal episode', 'Victory of the Daleks', '2010-04-17', 8, 5, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes)
VALUES (64, 5, 4, 'Normal episode', 'The Time of Angels (Part 1)', '2010-04-24', 22, 5, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes)
VALUES (65, 5, 5, 'Normal episode', 'Flesh and Stone (Part 2)', '2010-05-01', 22, 5, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes)
VALUES (66, 5, 6, 'Normal episode', 'The Vampires of Venice', '2010-05-08', 23, 5, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes)
VALUES (67, 5, 7, 'Normal episode', 'Amy''s Choice', '2010-05-15', 19, 5, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes)
VALUES (68, 5, 8, 'Normal episode', 'The Hungry Earth (Part 1)', '2010-05-22', 1, 5, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes)
VALUES (69, 5, 9, 'Normal episode', 'Cold Blood (Part 2)', '2010-05-29', 1, 5, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes)
VALUES (70, 5, 10, 'Normal episode', 'Vincent and the Doctor', '2010-06-05', 16, 5, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes)
VALUES (71, 5, 11, 'Normal episode', 'The Lodger', '2010-06-12', 2, 5, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes)
VALUES (72, 5, 12, 'Normal episode', 'The Pandorica Opens (Part 1)', '2010-06-19', 22, 5, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes)
VALUES (73, 5, 13, 'Normal episode', 'The Big Bang (Part 2)', '2010-06-26', 22, 5, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes)
VALUES (74, 6, NULL, 'Christmas special', 'A Christmas Carol', '2010-12-25', 22, 5, 'Michael Gambon guest stars');

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes)
VALUES (75, 6, 1, 'Normal episode', 'The Impossible Astronaut (Part 1)', '2011-04-23', 22, 5, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes)
VALUES (76, 6, 2, 'Normal episode', 'Day of the Moon (Part 2)', '2011-04-30', 22, 5, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes)
VALUES (77, 6, 3, 'Normal episode', 'The Curse of the Black Spot', '2011-05-07', 21, 5, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes)
VALUES (78, 6, 4, 'Normal episode', 'The Doctor''s Wife', '2011-05-14', 12, 5, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes)
VALUES (79, 6, 5, 'Normal episode', 'The Rebel Flesh (Part 1)', '2011-05-21', 10, 5, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes)
VALUES (80, 6, 6, 'Normal episode', 'The Almost People (Part 2)', '2011-05-28', 10, 5, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes) 
VALUES (81, 6, 7, 'Normal episode', 'A Good Man Goes to War', '2013-06-09', 22, 5, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes) 
VALUES (82, 6, 8, 'Normal episode', 'Let''s Kill Hitler', '2013-08-27', 22, 5, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes) 
VALUES (83, 6, 9, 'Normal episode', 'Night Terrors', '2013-09-03', 8, 5, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes) 
VALUES (84, 6, 10, 'Normal episode', 'The Girl Who Waited', '2013-09-10', 24, 5, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes) 
VALUES (85, 6, 11, 'Normal episode', 'The God Complex', '2013-09-17', 23, 5, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes) 
VALUES (86, 6, 12, 'Normal episode', 'Closing Time', '2013-09-24', 2, 5, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes) 
VALUES (87, 6, 13, 'Normal episode', 'The Wedding of River Song', '2013-10-01', 22, 5, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes) 
VALUES (88, 7, NULL, 'Christmas special', 'The Doctor, the Widow and the Wardrobe', '2013-12-25', 22, 5, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes) 
VALUES (89, 7, 1, 'Normal episode', 'Asylum of the Daleks', '2014-09-01', 22, 5, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes) 
VALUES (90, 7, 2, 'Normal episode', 'Dinosaurs on a Spaceship', '2014-09-08', 1, 5, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes) 
VALUES (91, 7, 3, 'Normal episode', 'A Town Called Mercy', '2014-09-15', 23, 5, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes) 
VALUES (92, 7, 4, 'Normal episode', 'The Power of Three', '2014-09-22', 1, 5, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes) 
VALUES (93, 7, 5, 'Normal episode', 'The Angels Take Manhattan', '2014-09-29', 22, 5, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes) 
VALUES (94, 7, NULL, 'Christmas special', 'The Snowmen', '2014-12-25', 22, 5, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes) 
VALUES (95, 7, 6, 'Normal episode', 'The Bells of Saint John', '2015-03-30', 22, 5, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes) 
VALUES (96, 7, 7, 'Normal episode', 'The Rings of Akhaten', '2015-04-06', 11, 5, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes) 
VALUES (97, 7, 8, 'Normal episode', 'Cold War', '2015-04-13', 8, 5, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes) 
VALUES (98, 7, 9, 'Normal episode', 'Hide', '2015-04-20', 11, 5, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes) 
VALUES (99, 7, 10, 'Normal episode', 'Journey to the Centre of the TARDIS', '2015-04-27', 21, 5, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes) 
VALUES (100, 7, 11, 'Normal episode', 'The Crimson Horror', '2015-05-04', 8, 5, 'Diana Rigg plays the main baddie in this episode');

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes) 
VALUES (101, 7, 12, 'Normal episode', 'Nightmare in Silver', '2023-06-11', 12, 5, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes) 
VALUES (102, 7, 13, 'Normal episode', 'The Name of the Doctor', '2023-06-29', 22, 5, 'Features cameo appearances from all of the previous doctors');

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes) 
VALUES (103, 8, NULL, '50th anniversary special', 'The Day of the Doctor', '2023-12-01', 22, 5, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes) 
VALUES (104, 8, NULL, 'Christmas special', 'The Time of the Doctor', '2023-12-25', 22, 5, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes) 
VALUES (105, 8, 1, 'Normal episode', 'Deep Breath', '2024-08-23', 22, 8, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes) 
VALUES (106, 8, 2, 'Normal episode', 'Into the Dalek', '2024-08-30', 22, 8, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes) 
VALUES (107, 8, 3, 'Normal episode', 'Robot of Sherwood', '2024-09-06', 8, 8, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes) 
VALUES (108, 8, 4, 'Normal episode', 'Listen', '2024-09-13', 22, 8, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes) 
VALUES (109, 8, 5, 'Normal episode', 'Time Heist', '2024-09-20', 21, 8, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes) 
VALUES (110, 8, 6, 'Normal episode', 'The Caretaker', '2024-09-27', 2, 8, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes) 
VALUES (111, 8, 7, 'Normal episode', 'Kill the Moon', '2024-10-04', 14, 8, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes) 
VALUES (112, 8, 8, 'Normal episode', 'Mummy on the Orient Express', '2024-10-11', 6, 8, 'John Sessions was the voice actor for this episode');

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes) 
VALUES (113, 8, 9, 'Normal episode', 'Flatline', '2024-10-18', 6, 8, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes) 
VALUES (114, 8, 10, 'Normal episode', 'In the Forest of the Night', '2024-10-25', 25, 8, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes) 
VALUES (115, 8, 11, 'Normal episode', 'Dark Water (Part 1)', '2024-11-01', 22, 8, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes) 
VALUES (116, 8, 12, 'Normal episode', 'Death in Heaven (Part 2)', '2024-11-08', 22, 8, NULL);

INSERT INTO tblEpisode (EpisodeId, SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, AuthorId, DoctorId, Notes) 
VALUES (117, 9, NULL, 'Christmas special', 'Last Christmas', '2025-12-25', 22, 8, NULL);

INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (1, 1, 4);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (2, 2, 4);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (3, 3, 4);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (4, 4, 4);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (5, 5, 4);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (6, 6, 4);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (7, 7, 4);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (8, 8, 4);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (9, 9, 4);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (10, 10, 4);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (11, 11, 4);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (12, 12, 4);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (13, 13, 4);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (14, 14, 4);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (15, 15, 4);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (16, 16, 4);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (17, 17, 4);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (18, 18, 4);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (19, 19, 4);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (20, 20, 4);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (21, 21, 4);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (22, 22, 4);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (23, 23, 4);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (24, 24, 4);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (25, 25, 4);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (26, 26, 4);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (27, 27, 4);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (28, 28, 6);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (29, 29, 9);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (30, 30, 9);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (31, 31, 9);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (32, 32, 9);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (33, 33, 9);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (34, 34, 9);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (35, 35, 9);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (36, 36, 9);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (37, 37, 9);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (38, 38, 9);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (39, 39, 9);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (40, 40, 9);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (41, 41, 9);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (42, 42, 14);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (43, 43, 6);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (44, 44, 6);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (45, 45, 6);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (46, 46, 6);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (47, 47, 6);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (48, 48, 6);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (49, 49, 6);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (50, 50, 6);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (51, 51, 6);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (52, 52, 6);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (53, 53, 6);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (54, 54, 6);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (55, 55, 6);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (56, 56, 7);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (57, 57, 16);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (58, 58, 15);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (59, 59, 3);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (60, 60, 3);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (61, 61, 13);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (62, 62, 13);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (63, 63, 13);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (64, 64, 13);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (65, 65, 13);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (66, 66, 13);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (67, 67, 13);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (68, 68, 13);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (69, 69, 13);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (70, 70, 13);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (71, 71, 13);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (72, 72, 13);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (73, 73, 13);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (74, 74, 13);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (75, 75, 13);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (76, 76, 13);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (77, 77, 13);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (78, 78, 13);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (79, 79, 13);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (80, 80, 13);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (81, 81, 13);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (82, 82, 13);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (83, 83, 13);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (84, 84, 13);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (85, 85, 13);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (86, 86, 13);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (87, 87, 13);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (88, 88, 13);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (89, 89, 13);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (90, 90, 13);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (91, 91, 13);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (92, 92, 13);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (93, 93, 13);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (94, 94, 11);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (95, 95, 11);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (96, 96, 11);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (97, 97, 11);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (98, 98, 11);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (99, 99, 11);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (100, 100, 11);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (101, 101, 11);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (102, 102, 11);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (103, 103, 11);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (104, 104, 11);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (105, 105, 11);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (106, 106, 11);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (107, 107, 11);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (108, 108, 11);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (109, 109, 11);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (110, 110, 11);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (111, 111, 11);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (112, 112, 11);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (113, 113, 11);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (114, 114, 11);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (115, 115, 11);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (116, 116, 11);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (117, 117, 11);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (118, 6, 5);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (119, 7, 5);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (120, 9, 12);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (121, 10, 12);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (122, 11, 12);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (123, 12, 12);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (124, 13, 12);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (125, 17, 17);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (126, 18, 17);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (127, 19, 17);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (128, 20, 17);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (129, 39, 12);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (130, 40, 12);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (131, 41, 12);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (132, 43, 4);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (133, 46, 9);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (134, 47, 9);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (135, 48, 9);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (136, 50, 1);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (137, 51, 1);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (138, 52, 4);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (139, 53, 4);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (140, 54, 4);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (141, 55, 4);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (142, 56, 18);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (143, 61, 2);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (144, 64, 1);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (145, 65, 1);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (146, 66, 2);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (147, 67, 2);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (148, 68, 2);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (149, 69, 2);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (150, 71, 10);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (151, 72, 1);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (152, 73, 1);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (153, 74, 2);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (154, 75, 2);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (155, 76, 2);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (156, 77, 2);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (157, 78, 2);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (158, 79, 2);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (159, 80, 2);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (160, 81, 2);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (161, 82, 2);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (162, 83, 2);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (163, 84, 2);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (164, 85, 2);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (165, 86, 2);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (166, 87, 2);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (167, 88, 2);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (168, 89, 2);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (169, 90, 2);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (170, 91, 2);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (171, 92, 2);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (172, 93, 2);
INSERT INTO "tblEpisodeCompanion" ("EpisodeCompanionId", "EpisodeId", "CompanionId") VALUES (173, 102, 1);

-- Activer l'insertion manuelle d'identifiants
ALTER TABLE tblEpisodeEnemy ENABLE REPLICA IDENTITY;

-- Insérer les enregistrements dans tblEpisodeEnemy
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (1, 15, 10);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (2, 26, 15);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (3, 27, 15);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (4, 72, 15);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (5, 73, 15);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (6, 116, 15);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (7, 54, 42);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (8, 55, 42);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (9, 31, 10);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (10, 112, 77);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (11, 91, 62);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (12, 101, 71);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (13, 29, 24);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (14, 61, 44);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (15, 22, 18);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (16, 23, 18);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (17, 28, 22);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (18, 42, 33);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (19, 40, 32);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (20, 41, 32);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (21, 59, 17);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (22, 86, 51);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (23, 104, 51);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (24, 87, 51);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (25, 75, 56);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (26, 103, 72);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (27, 15, 11);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (28, 15, 2);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (29, 26, 5);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (30, 27, 5);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (31, 72, 5);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (32, 73, 5);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (33, 116, 32);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (34, 54, 5);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (35, 55, 5);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (36, 31, 26);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (37, 112, 76);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (38, 91, 61);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (39, 101, 15);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (40, 29, 23);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (41, 61, 43);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (42, 22, 17);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (43, 23, 17);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (44, 28, 21);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (45, 42, 34);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (46, 40, 31);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (47, 41, 31);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (48, 59, 32);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (49, 86, 15);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (50, 104, 5);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (51, 87, 56);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (52, 75, 51);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (53, 103, 5);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (54, 43, 35);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (55, 96, 66);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (56, 113, 78);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (57, 18, 14);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (58, 105, 14);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (59, 19, 15);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (60, 20, 15);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (61, 56, 15);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (62, 6, 5);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (63, 12, 5);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (64, 13, 5);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (65, 32, 5);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (66, 33, 5);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (67, 63, 5);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (68, 89, 5);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (69, 106, 5);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (70, 67, 47);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (71, 39, 30);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (72, 79, 54);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (73, 80, 54);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (74, 84, 58);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (75, 81, 55);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (76, 78, 53);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (77, 25, 20);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (78, 7, 6);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (79, 117, 79);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (80, 70, 49);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (81, 17, 13);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (82, 2, 2);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (83, 34, 27);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (84, 109, 74);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (85, 83, 57);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (86, 44, 36);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (87, 8, 7);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (88, 66, 46);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (89, 36, 28);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (90, 37, 28);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (91, 68, 48);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (92, 69, 48);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (93, 97, 67);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (94, 110, 75);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (95, 74, 50);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (96, 62, 45);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (97, 90, 60);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (98, 24, 19);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (99, 1, 1);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (100, 30, 25);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (101, 9, 8);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (102, 10, 8);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (103, 3, 3);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (104, 95, 64);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (105, 102, 64);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (106, 48, 38);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (107, 60, 32);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (108, 115, 32);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (109, 85, 59);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (110, 45, 17);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (111, 92, 63);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (112, 107, 73);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (113, 76, 51);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (114, 77, 52);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (115, 4, 4);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (116, 5, 4);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (117, 11, 4);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (118, 94, 65);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (119, 46, 37);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (120, 47, 37);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (121, 14, 9);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (122, 82, 56);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (123, 53, 41);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (124, 21, 16);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (125, 99, 68);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (126, 50, 40);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (127, 51, 40);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (128, 38, 29);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (129, 64, 29);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (130, 65, 29);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (131, 93, 29);
INSERT INTO tblEpisodeEnemy (EpisodeEnemyId, EpisodeId, EnemyId) VALUES (132, 16, 12);

-- create relationships between tables
ALTER TABLE tblEpisode ADD CONSTRAINT FK_tblEpisode_tblAuthor FOREIGN KEY (AuthorId)
REFERENCES tblAuthor (AuthorId) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE tblEpisode ADD CONSTRAINT FK_tblEpisode_tblDoctor FOREIGN KEY (DoctorId)
REFERENCES tblDoctor (DoctorId) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE tblEpisodeCompanion ADD CONSTRAINT FK_tblEpisodeCompanion_tblCompanion FOREIGN KEY (CompanionId)
REFERENCES tblCompanion (CompanionId) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE tblEpisodeEnemy ADD CONSTRAINT FK_tbEpisodeEnemy_tblEnemy FOREIGN KEY (EnemyId)
REFERENCES tblEnemy (EnemyId) ON UPDATE CASCADE ON DELETE CASCADE;

-- create a function to list companions
CREATE OR REPLACE FUNCTION fnCompanions(
	EpisodeId INT
)
RETURNS VARCHAR(100) AS $$
DECLARE
	c VARCHAR(100) := '';
BEGIN
	SELECT
		c := c || CASE WHEN length(c) > 0 THEN ', ' ELSE '' END || c.CompanionName
	FROM
		tblEpisodeCompanion AS ec
		INNER JOIN tblCompanion AS c ON ec.CompanionId = c.CompanionId
	WHERE
		ec.EpisodeId = EpisodeId;

	RETURN c;
END;
$$ LANGUAGE plpgsql;

-- create a function to list enemies
CREATE OR REPLACE FUNCTION fnEnemies(
	EpisodeId INT
)
RETURNS VARCHAR(100) AS $$
DECLARE
	c VARCHAR(100) := '';
BEGIN
	SELECT
		c := c || CASE WHEN length(c) > 0 THEN ', ' ELSE '' END || c.EnemyName
	FROM
		tblEpisodeEnemy AS ec
		INNER JOIN tblEnemy AS c ON ec.EnemyId = c.EnemyId
	WHERE
		ec.EpisodeId = EpisodeId;

	RETURN c;
END;
$$ LANGUAGE plpgsql;

-- create a procedure to list episodes
CREATE OR REPLACE PROCEDURE spEpisodes()
AS $$
BEGIN
	SELECT 
		SeriesNumber,
		EpisodeNumber,
		Title,
		a.AuthorName,
		d.DoctorName,
		fnCompanions(e.EpisodeId) AS Companions,
		fnEnemies(e.EpisodeId) AS Enemies
	FROM
		tblEpisode AS e
		INNER JOIN tblAuthor AS a ON a.AuthorId = e.AuthorId
		INNER JOIN tblDoctor AS d ON e.DoctorId = d.DoctorId
	ORDER BY
		EpisodeDate;
END;
$$ LANGUAGE plpgsql;
