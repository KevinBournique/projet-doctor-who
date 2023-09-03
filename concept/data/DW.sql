DROP TABLE IF EXISTS "tblAuthor", "tblCompanion", "tblDoctor", "tblEnemy", "tblEpisode", "tblEpisodeCompanion", "tblEpisodeEnemy";

-- create the database needed
CREATE DATABASE "doctorwho";

-- create table of authors of episodes
CREATE TABLE "tblAuthor"(
	"AuthorId" SERIAL PRIMARY KEY,
	"AuthorName" VARCHAR(50),
	"created_at" timestamptz NOT NULL DEFAULT CURRENT_TIMESTAMP,
  	"updated_at" timestamptz
);

-- create table of Dr Who's
CREATE TABLE "tblDoctor"(
	"DoctorId" SERIAL PRIMARY KEY,
	"DoctorNumber" INT,
	"DoctorName" VARCHAR(50),
	"BirthDate" DATE,
	"FirstEpisodeDate" DATE,
	"LastEpisodeDate" DATE,
	"created_at" timestamptz NOT NULL DEFAULT CURRENT_TIMESTAMP,
  	"updated_at" timestamptz
);

-- create table of companions of Dr Who
CREATE TABLE "tblCompanion"(
	"CompanionId" SERIAL PRIMARY KEY,
	"CompanionName" VARCHAR(50) NOT NULL,
	"WhoPlayed" VARCHAR(50),
	"created_at" timestamptz NOT NULL DEFAULT CURRENT_TIMESTAMP,
  	"updated_at" timestamptz
);


-- create table of enemies of the Doctor
CREATE TABLE "tblEnemy"(
	"EnemyId" SERIAL PRIMARY KEY,
	"EnemyName" VARCHAR(100),
	"Description" VARCHAR(255),
	"created_at" timestamptz NOT NULL DEFAULT CURRENT_TIMESTAMP,
  	"updated_at" timestamptz
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
	"Notes" VARCHAR(255),
	"created_at" timestamptz NOT NULL DEFAULT CURRENT_TIMESTAMP,
  	"updated_at" timestamptz
);

-- create table of which companions were in which episodes
CREATE TABLE "tblEpisodeCompanion"(
	"EpisodeCompanionId" SERIAL PRIMARY KEY,
	"EpisodeId" INT,
	"CompanionId" INT,
	"created_at" timestamptz NOT NULL DEFAULT CURRENT_TIMESTAMP,
  	"updated_at" timestamptz
);

-- create table of which enemies were in which episodes
CREATE TABLE "tblEpisodeEnemy"(
	"EpisodeEnemyId" SERIAL PRIMARY KEY,
	"EpisodeId" INT,
	"EnemyId" INT,
	"created_at" timestamptz NOT NULL DEFAULT CURRENT_TIMESTAMP,
  	"updated_at" timestamptz
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
INSERT INTO public."tblCompanion" ("CompanionName","WhoPlayed",created_at,updated_at) VALUES
	 ('River Song','Alex Kingston','2023-08-29 17:36:55.322508+02',NULL),
	 ('Rory Williams','Arthur Darvill','2023-08-29 17:36:55.325917+02',NULL),
	 ('Rose Tyler','Billie Piper','2023-08-29 17:36:55.331031+02',NULL),
	 ('Donna Noble','Catherine Tate','2023-08-29 17:36:55.336591+02',NULL),
	 ('Martha Jones','Freema Agyeman','2023-08-29 17:36:55.347118+02',NULL),
	 ('Clara Oswin Oswald','Jenna Coleman','2023-08-29 17:36:55.351548+02',NULL),
	 ('Jack Harkness','John Barrowman','2023-08-29 17:36:55.354337+02',NULL),
	 ('Amy Pond','Karen Gillan','2023-08-29 17:36:55.357278+02',NULL),
	 ('Mickey Smith','Noel Clarke','2023-08-29 17:36:55.368662+02',NULL),
	 ('Sarah Jane Smith','Elisabeth Sladen','2023-08-29 17:36:55.342521+02',NULL);
INSERT INTO public."tblCompanion" ("CompanionName","WhoPlayed",created_at,updated_at) VALUES
	 ('Susan Foreman','Carole Ann Ford','2023-08-29 17:36:55.371+02',NULL),
	 ('Ian Chesterton','William Russell','2023-08-29 17:36:55.371+02',NULL),
	 ('Barbara Wright','Jacqueline Hill','2023-08-29 17:36:55.371+02',NULL),
	 ('Vicki','Maureen O’Brien','2023-08-29 17:36:55.371+02',NULL),
	 ('Steven Taylor','Peter Purves','2023-08-29 17:36:55.371+02',NULL),
	 ('Katarina','Adrienne Hill','2023-08-29 17:36:55.371+02',NULL),
	 ('Dodo Chaplet','Jackie Lane','2023-08-29 17:36:55.371+02',NULL),
	 ('Ben Jackson','Michael Craze','2023-08-29 17:36:55.371+02',NULL),
	 ('Polly Wright','Anneke Wills','2023-08-29 17:36:55.371+02',NULL),
	 ('Jamie McCrimmon','Frazer Hines','2023-08-29 17:36:55.371+02',NULL);
INSERT INTO public."tblCompanion" ("CompanionName","WhoPlayed",created_at,updated_at) VALUES
	 ('Victoria Waterfield','Deborah Watling','2023-08-29 17:36:55.371+02',NULL),
	 ('Zoe Heriot','Wendy Padbury','2023-08-29 17:36:55.371+02',NULL),
	 ('Alistair Gordon Lethbridge-Stewart','Nicholas Courtney','2023-08-29 17:36:55.371+02',NULL),
	 ('John Benton','John Levene','2023-08-29 17:36:55.371+02',NULL),
	 ('Liz Shaw','Caroline John','2023-08-29 17:36:55.371+02',NULL),
	 ('Mike Yates','Richard Franklin','2023-08-29 17:36:55.371+02',NULL),
	 ('Jo Grant (Jo Jones)','Katy Manning','2023-08-29 17:36:55.371+02',NULL),
	 ('Harry Sullivan','Ian Marter','2023-09-02 14:06:45.636677+02',NULL),
	 ('Leela','Louise Jameson','2023-09-02 14:06:45.639105+02',NULL),
	 ('K-9','(Voice) John Leeson','2023-09-02 14:06:45.641085+02',NULL);
INSERT INTO public."tblCompanion" ("CompanionName","WhoPlayed",created_at,updated_at) VALUES
	 ('Romana I','Mary Tamm','2023-09-02 14:06:45.643393+02',NULL),
	 ('Romana II','Lalla Ward','2023-09-02 14:06:45.645713+02',NULL),
	 ('Adric','Matthew Waterhouse','2023-09-02 14:06:45.648147+02',NULL),
	 ('Nyssa','Sarah Sutton','2023-09-02 14:06:45.650051+02',NULL),
	 ('Tegan Jovanka','Janet Fielding','2023-09-02 14:06:45.651938+02',NULL),
	 ('Vislor Turlough','Mark Strickson','2023-09-02 14:06:45.653909+02',NULL),
	 ('Kamelion','Gerald Flood','2023-09-02 14:06:45.656036+02',NULL),
	 ('Peri Brown','Nicola Bryant','2023-09-02 14:06:45.658107+02',NULL),
	 ('Melanie Bush','Bonnie Langford','2023-09-02 14:06:45.660673+02',NULL),
	 ('Ace','Sophie Aldred','2023-09-02 14:06:45.662949+02',NULL);
INSERT INTO public."tblCompanion" ("CompanionName","WhoPlayed",created_at,updated_at) VALUES
	 ('Wilfred Mott','Bernard Cribbins','2023-08-29 17:36:55.328557+02',NULL),
	 ('Adam Mitchell','Bruno Langley','2023-08-29 17:36:55.333768+02',NULL),
	 ('Jackson Lake','David Morrissey','2023-08-29 17:36:55.339539+02',NULL),
	 ('Craig Owens','James Corden','2023-08-29 17:36:55.349417+02',NULL),
	 ('Astrid Peth','Kylie Minogue','2023-08-29 17:36:55.360387+02',NULL),
	 ('Adelaide Brooke','Lindsay Duncan','2023-08-29 17:36:55.36371+02',NULL),
	 ('Lady Christina de Souza','Michelle Ryan','2023-08-29 17:36:55.365911+02',NULL),
	 ('Rosita Farisi','Velle Tshabalala','2023-08-29 17:36:55.371007+02',NULL),
	 ('Nardole','Matt Lucas','2023-09-02 14:34:15.498888+02',NULL),
	 ('Bill Potts','Pearl Mackie','2023-09-02 14:34:15.501251+02',NULL);

-- Ajouter les docteurs
INSERT INTO "tblDoctor" ("DoctorId", "DoctorNumber", "DoctorName", "BirthDate", "FirstEpisodeDate", "LastEpisodeDate") VALUES (1, 1, 'William Hartnell', '1908-01-08', '1963-11-23', '1966-10-29');
INSERT INTO "tblDoctor" ("DoctorId", "DoctorNumber", "DoctorName", "BirthDate", "FirstEpisodeDate", "LastEpisodeDate") VALUES (2, 2, 'Patrick Troughton', '1920-03-25', '1966-10-29', '1969-06-21');
INSERT INTO "tblDoctor" ("DoctorId", "DoctorNumber", "DoctorName", "BirthDate", "FirstEpisodeDate", "LastEpisodeDate") VALUES (3, 3, 'Jon Pertwee', '1919-07-07', '1970-01-03', '1974-06-08');
INSERT INTO "tblDoctor" ("DoctorId", "DoctorNumber", "DoctorName", "BirthDate", "FirstEpisodeDate", "LastEpisodeDate") VALUES (4, 4, 'Tom Baker', '1934-01-20', '1974-12-28', '1981-03-21');
INSERT INTO "tblDoctor" ("DoctorId", "DoctorNumber", "DoctorName", "BirthDate", "FirstEpisodeDate", "LastEpisodeDate") VALUES (5, 5, 'Peter Davison', '1951-04-13', '1982-03-26', '1984-03-16');
INSERT INTO "tblDoctor" ("DoctorId", "DoctorNumber", "DoctorName", "BirthDate", "FirstEpisodeDate", "LastEpisodeDate") VALUES (6, 6, 'Colin Baker', '1943-06-08', '1984-03-22', '1986-12-06');
INSERT INTO "tblDoctor" ("DoctorId", "DoctorNumber", "DoctorName", "BirthDate", "FirstEpisodeDate", "LastEpisodeDate") VALUES (7, 7, 'Sylvester McCoy', '1943-08-20', '1987-09-07', '1989-12-06');
INSERT INTO "tblDoctor" ("DoctorId", "DoctorNumber", "DoctorName", "BirthDate", "FirstEpisodeDate", "LastEpisodeDate") VALUES (8, 8, 'Paul McGann', '1959-11-14', '1996-05-27', '1996-05-27');
INSERT INTO "tblDoctor" ("DoctorId", "DoctorNumber", "DoctorName", "BirthDate", "FirstEpisodeDate", "LastEpisodeDate") VALUES (9, 9, 'Christopher Eccleston', '1964-02-16', '2005-03-26', '2005-06-18');
INSERT INTO "tblDoctor" ("DoctorId", "DoctorNumber", "DoctorName", "BirthDate", "FirstEpisodeDate", "LastEpisodeDate") VALUES (10, 10, 'David Tennant', '1971-04-18', '2005-06-18', '2010-01-01');
INSERT INTO "tblDoctor" ("DoctorId", "DoctorNumber", "DoctorName", "BirthDate", "FirstEpisodeDate", "LastEpisodeDate") VALUES (11, 11, 'Matt Smith', '1982-10-28', '2010-01-01', '2013-12-25');
INSERT INTO "tblDoctor" ("DoctorId", "DoctorNumber", "DoctorName", "BirthDate", "FirstEpisodeDate", "LastEpisodeDate") VALUES (12, 12, 'Peter Capaldi', '1958-04-14', '2013-12-25', NULL);

-- Ajouter les ennemis
INSERT INTO public."tblEnemy" ("EnemyName","Description",created_at,updated_at) VALUES
	 ('The Autons','Murderous mannequins','2023-08-29 17:36:55.409901+02',NULL),
	 ('Krillitanes','Carnivorous, winged bat-like creatures','2023-08-29 17:36:55.460963+02',NULL),
	 ('The empty child','A by-product of a dead four-year-old child','2023-08-29 17:36:55.440663+02',NULL),
	 ('The Slitheen','A baby-faced alien family','2023-08-29 17:36:55.420701+02',NULL),
	 ('Lady Cassandra','The last living human being','2023-08-29 17:36:55.414924+02',NULL),
	 ('Daleks','Armoured aliens','2023-08-29 17:36:55.424263+02',NULL),
	 ('The Gelth','An alien species comprised of gas','2023-08-29 17:36:55.41711+02',NULL),
	 ('Jagrafess','A hideous, giant slug-like creature','2023-08-29 17:36:55.429236+02',NULL),
	 ('Reapers','Winged reptile-like creatures','2023-08-29 17:36:55.433107+02',NULL),
	 ('The Sycorax','An alien race wearing bone-like masks','2023-08-29 17:36:55.449484+02',NULL);
INSERT INTO public."tblEnemy" ("EnemyName","Description",created_at,updated_at) VALUES
	 ('Werewolf','A werewolf moster','2023-08-29 17:36:55.458304+02',NULL),
	 ('Clockwork Droids','Repair droids wearing scary masks','2023-08-29 17:36:55.463539+02',NULL),
	 ('Cybermen','Cyborg race','2023-08-29 17:36:55.466043+02',NULL),
	 ('The Wire','An alien lifeform of pure energy, taking human female form','2023-08-29 17:36:55.468577+02',NULL),
	 ('The Ood','Aliens with tentacled faces carrying translation spheres','2023-08-29 17:36:55.470808+02',NULL),
	 ('The Beast(Demon)','Gigantic monster claiming to be Satan','2023-08-29 17:36:55.473708+02',NULL),
	 ('The Abzorbaloff','Obese alien which absorbs victims through touch','2023-08-29 17:36:55.476632+02',NULL),
	 ('Isolus','Alien resembling a small white flower, which will do anything not to be alone','2023-08-29 17:36:55.479082+02',NULL),
	 ('Roboforms','Robots disguised as Santas','2023-08-29 17:36:55.481463+02',NULL),
	 ('The Judoon','Galactic stormtroopers resembling rhinoceroses','2023-08-29 17:36:55.486539+02',NULL);
INSERT INTO public."tblEnemy" ("EnemyName","Description",created_at,updated_at) VALUES
	 ('Pyrovile','Volcano-dwelling creatures','2023-08-29 17:36:55.489169+02',NULL),
	 ('Adipose','Small, white, marshmallow-like creatures','2023-08-29 17:36:55.492243+02',NULL),
	 ('Vashta Nerada','Shadow-dwelling creatures','2023-08-29 17:36:55.496243+02',NULL),
	 ('Sontarans','Cloned warriors from the planet Sontar','2023-08-29 17:36:55.498317+02',NULL),
	 ('The Family of Blood','Shapeshifting aliens','2023-08-29 17:36:55.500625+02',NULL),
	 ('Weeping Angels','Quantum-locked angelic beings','2023-08-29 17:36:55.50283+02',NULL),
	 ('The Silence','Aliens with the ability to erase memory','2023-08-29 17:36:55.505247+02',NULL),
	 ('The Great Intelligence(Snowman)','Sentient disembodied entity','2023-08-29 17:36:55.509843+02',NULL),
	 ('Ice Warriors','Martian reptilian warriors','2023-08-29 17:36:55.512648+02',NULL),
	 ('Zygons','Shape-shifting aliens from Zygor','2023-08-29 17:36:55.51521+02',NULL);
INSERT INTO public."tblEnemy" ("EnemyName","Description",created_at,updated_at) VALUES
	 ('The Master','Time Lord nemesis of the Doctor','2023-08-29 17:36:55.517603+02',NULL),
	 ('Axons','Aliens with a deceptive appearance','2023-08-29 17:36:55.520139+02',NULL),
	 ('Krynoids','Plant-like creatures with destructive tendencies','2023-08-29 17:36:55.52223+02',NULL),
	 ('Mara','Manifestation of evil dreams','2023-08-29 17:36:55.525125+02',NULL),
	 ('Mandrels','Primate-like creatures with sharp teeth','2023-08-29 17:36:55.527278+02',NULL),
	 ('Omega','Ancient Time Lord and creator of Time Lord technology','2023-08-29 17:36:55.529382+02',NULL),
	 ('Sea Devils','Marine cousins of the Silurians','2023-08-29 17:36:55.531454+02',NULL),
	 ('Silurians','Reptilian race that ruled the Earth millions of years ago','2023-08-29 17:36:55.533544+02',NULL),
	 ('The Celestial Toymaker','Powerful being who creates deadly games','2023-08-29 17:36:55.53559+02',NULL),
	 ('The Black Guardian','Manifestation of chaos and darkness','2023-08-29 17:36:55.539191+02',NULL);
INSERT INTO public."tblEnemy" ("EnemyName","Description",created_at,updated_at) VALUES
	 ('The White Guardian','Manifestation of order and light','2023-08-29 17:36:55.543674+02',NULL),
	 ('Krotons','Cyborg crystalline entities','2023-08-29 17:36:55.546261+02',NULL),
	 ('Wirrn','Giant insectoid creatures','2023-08-29 17:36:55.548457+02',NULL),
	 ('Yeti','Robotic Yeti controlled by the Great Intelligence','2023-08-29 17:36:55.550659+02',NULL),
	 ('The Macra','Giant crab-like creatures','2023-08-29 17:36:55.553391+02',NULL),
	 ('Alpha Centaurans','Ambassador of the Galactic Federation','2023-08-29 17:36:55.555546+02',NULL),
	 ('The Rani','Time Lord renegade scientist','2023-08-29 17:36:55.558353+02',NULL),
	 ('The Great Vampire','Ancient and powerful vampire-like being','2023-08-29 17:36:55.564112+02',NULL),
	 ('The Nimon','Horned, bull-like aliens','2023-08-29 17:36:55.567131+02',NULL),
	 ('The Rutans','Shapeshifting alien race at war with the Sontarans','2023-08-29 17:36:55.571696+02',NULL);
INSERT INTO public."tblEnemy" ("EnemyName","Description",created_at,updated_at) VALUES
	 ('The Terileptils','Reptilian humanoids with advanced technology','2023-08-29 17:36:55.575226+02',NULL),
	 ('The Tractators','Insectoid creatures that manipulate gravity','2023-08-29 17:36:55.577429+02',NULL),
	 ('The Vervoids','Plant-based creatures created for genetic experiments','2023-08-29 17:36:55.581316+02',NULL),
	 ('The Fisher King','Powerful alien warlord','2023-08-29 17:36:55.586995+02',NULL),
	 ('The Veil','Entity from a pocket universe','2023-08-29 17:36:55.596001+02',NULL),
	 ('The Sandmen','Creatures made of sleep dust','2023-08-29 17:36:55.598391+02',NULL),
	 ('The Monks','Aliens seeking to conquer Earth through manipulation','2023-08-29 17:36:55.60545+02',NULL),
	 ('The Landlord','Entity that feeds on human memories','2023-08-29 17:36:55.607896+02',NULL),
	 ('The Eaters of Light','Interdimensional creatures','2023-08-29 17:36:55.609836+02',NULL),
	 ('The Emoji-Bots','Robotic creatures with emotion-based faces','2023-08-29 17:36:55.613197+02',NULL);
INSERT INTO public."tblEnemy" ("EnemyName","Description",created_at,updated_at) VALUES
	 ('The Boneless','2D beings that absorb humans','2023-08-29 17:36:55.616321+02',NULL),
	 ('The Time Beetle','Parasitic creature that alters timelines','2023-08-29 17:36:55.620784+02',NULL),
	 ('The Flood','Intelligent water-based creatures','2023-08-29 17:36:55.623866+02',NULL),
	 ('The Midnight Entity','Entity that possesses passengers on a spacecraft','2023-08-29 17:36:55.626901+02',NULL),
	 ('The Trickster','Temporal manipulator','2023-08-29 17:36:55.629353+02',NULL),
	 ('The Hoix','Dog-like creatures from the Void','2023-08-29 17:36:55.654058+02',NULL),
	 ('The Racnoss','Giant spider-like creatures','2023-08-29 17:36:55.657799+02',NULL);

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

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (21, 2, 7, 'Normal episode', 'The Idiot s Lantern', CAST('2006-05-27' AS Date), 8, 3, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (22, 2, 8, 'Normal episode', 'The Impossible Planet (Part 1)', CAST('2006-06-03' AS Date), 9, 3, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (23, 2, 9, 'Normal episode', 'The Satan Pit (Part 2)', CAST('2006-06-10' AS Date), 9, 3, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (24, 2, 10, 'Normal episode', 'Love & Monsters', CAST('2006-06-17' AS Date), 18, 3, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (25, 2, 11, 'Normal episode', 'Fear Her', CAST('2006-06-24' AS Date), 10, 3, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (26, 2, 12, 'Normal episode', 'Army of Ghosts (Part 1)', CAST('2006-07-01' AS Date), 18, 3, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (27, 2, 13, 'Normal episode', 'Doomsday (Part 2)', CAST('2006-07-08' AS Date), 18, 3, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (28, 3, NULL, 'Christmas special', 'The Runaway Bride', CAST('2006-12-25' AS Date), 18, 3, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (29, 3, 1, 'Normal episode', 'Smith and Jones', CAST('2007-03-31' AS Date), 18, 3, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (30, 3, 2, 'Normal episode', 'The Shakespeare Code', CAST('2007-04-07' AS Date), 2, 3, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (31, 3, 3, 'Normal episode', 'Gridlock', CAST('2007-04-14' AS Date), 18, 3, 'Guest appearance by Ardal O Hanlon');

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (32, 3, 4, 'Normal episode', 'Daleks in Manhattan (Part 1)', CAST('2007-04-21' AS Date), 5, 3, 'Technically monster is a human-dalek hybrid');

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (33, 3, 5, 'Normal episode', 'Evolution of the Daleks (Part 2)', CAST('2007-04-28' AS Date), 5, 3, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (34, 3, 6, 'Normal episode', 'The Lazarus Experiment', CAST('2007-05-05' AS Date), 20, 3, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (35, 3, 7, 'Normal episode', '42', CAST('2007-05-19' AS Date), 1, 3, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (36, 3, 8, 'Normal episode', 'Human Nature (Part 1)', CAST('2007-05-26' AS Date), 13, 3, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (37, 3, 9, 'Normal episode', 'The Family of Blood (Part 2)', CAST('2007-06-02' AS Date), 13, 3, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (38, 3, 10, 'Normal episode', 'Blink', CAST('2007-06-09' AS Date), 22, 3, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
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

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (61, 5, 1, 'Normal episode', 'The Eleventh Hour', DATE '2010-04-03', 22, 5, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (62, 5, 2, 'Normal episode', 'The Beast Below', DATE '2010-04-10', 22, 5, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (63, 5, 3, 'Normal episode', 'Victory of the Daleks', DATE '2010-04-17', 8, 5, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (64, 5, 4, 'Normal episode', 'The Time of Angels (Part 1)', DATE '2010-04-24', 22, 5, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (65, 5, 5, 'Normal episode', 'Flesh and Stone (Part 2)', DATE '2010-05-01', 22, 5, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (66, 5, 6, 'Normal episode', 'The Vampires of Venice', DATE '2010-05-08', 23, 5, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (67, 5, 7, 'Normal episode', 'Amy''s Choice', DATE '2010-05-15', 19, 5, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (68, 5, 8, 'Normal episode', 'The Hungry Earth (Part 1)', DATE '2010-05-22', 1, 5, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (69, 5, 9, 'Normal episode', 'Cold Blood (Part 2)', DATE '2010-05-29', 1, 5, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (70, 5, 10, 'Normal episode', 'Vincent and the Doctor', DATE '2010-06-05', 16, 5, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (71, 5, 11, 'Normal episode', 'The Lodger', DATE '2010-06-12', 2, 5, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (72, 5, 12, 'Normal episode', 'The Pandorica Opens (Part 1)', DATE '2010-06-19', 22, 5, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (73, 5, 13, 'Normal episode', 'The Big Bang (Part 2)', DATE '2010-06-26', 22, 5, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (74, 6, NULL, 'Christmas special', 'A Christmas Carol', DATE '2010-12-25', 22, 5, 'Michael Gambon guest stars');

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (75, 6, 1, 'Normal episode', 'The Impossible Astronaut (Part 1)', DATE '2011-04-23', 22, 5, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (76, 6, 2, 'Normal episode', 'Day of the Moon (Part 2)', DATE '2011-04-30', 22, 5, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (77, 6, 3, 'Normal episode', 'The Curse of the Black Spot', DATE '2011-05-07', 21, 5, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (78, 6, 4, 'Normal episode', 'The Doctor''s Wife', DATE '2011-05-14', 12, 5, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (79, 6, 5, 'Normal episode', 'The Rebel Flesh (Part 1)', DATE '2011-05-21', 10, 5, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes")
VALUES (80, 6, 6, 'Normal episode', 'The Almost People (Part 2)', DATE '2011-05-28', 10, 5, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes") 
VALUES (81, 6, 7, 'Normal episode', 'A Good Man Goes to War', DATE '2013-06-09', 22, 5, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes") 
VALUES (82, 6, 8, 'Normal episode', 'Let''s Kill Hitler', DATE '2013-08-27', 22, 5, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes") 
VALUES (83, 6, 9, 'Normal episode', 'Night Terrors', DATE '2013-09-03', 8, 5, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes") 
VALUES (84, 6, 10, 'Normal episode', 'The Girl Who Waited', DATE '2013-09-10', 24, 5, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes") 
VALUES (85, 6, 11, 'Normal episode', 'The God Complex', DATE '2013-09-17', 23, 5, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes") 
VALUES (86, 6, 12, 'Normal episode', 'Closing Time', DATE '2013-09-24', 2, 5, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes") 
VALUES (87, 6, 13, 'Normal episode', 'The Wedding of River Song', DATE '2013-10-01', 22, 5, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes") 
VALUES (88, 7, NULL, 'Christmas special', 'The Doctor, the Widow and the Wardrobe', DATE '2013-12-25', 22, 5, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes") 
VALUES (89, 7, 1, 'Normal episode', 'Asylum of the Daleks', DATE '2014-09-01', 22, 5, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes") 
VALUES (90, 7, 2, 'Normal episode', 'Dinosaurs on a Spaceship', DATE '2014-09-08', 1, 5, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes") 
VALUES (91, 7, 3, 'Normal episode', 'A Town Called Mercy', DATE '2014-09-15', 23, 5, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes") 
VALUES (92, 7, 4, 'Normal episode', 'The Power of Three', DATE '2014-09-22', 1, 5, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes") 
VALUES (93, 7, 5, 'Normal episode', 'The Angels Take Manhattan', DATE '2014-09-29', 22, 5, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes") 
VALUES (94, 7, NULL, 'Christmas special', 'The Snowmen', DATE '2014-12-25', 22, 5, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes") 
VALUES (95, 7, 6, 'Normal episode', 'The Bells of Saint John', DATE '2015-03-30', 22, 5, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes") 
VALUES (96, 7, 7, 'Normal episode', 'The Rings of Akhaten', DATE '2015-04-06', 11, 5, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes") 
VALUES (97, 7, 8, 'Normal episode', 'Cold War', DATE '2015-04-13', 8, 5, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes") 
VALUES (98, 7, 9, 'Normal episode', 'Hide', DATE '2015-04-20', 11, 5, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes") 
VALUES (99, 7, 10, 'Normal episode', 'Journey to the Centre of the TARDIS', DATE '2015-04-27', 21, 5, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes") 
VALUES (100, 7, 11, 'Normal episode', 'The Crimson Horror', DATE '2015-05-04', 8, 5, 'Diana Rigg plays the main baddie in this episode');

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes") 
VALUES (101, 7, 12, 'Normal episode', 'Nightmare in Silver', DATE '2023-06-11', 12, 5, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes") 
VALUES (102, 7, 13, 'Normal episode', 'The Name of the Doctor', DATE '2023-06-29', 22, 5, 'Features cameo appearances from all of the previous doctors');

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes") 
VALUES (103, 8, NULL, '50th anniversary special', 'The Day of the Doctor', DATE '2023-12-01', 22, 5, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes") 
VALUES (104, 8, NULL, 'Christmas special', 'The Time of the Doctor', DATE '2023-12-25', 22, 5, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes") 
VALUES (105, 8, 1, 'Normal episode', 'Deep Breath', DATE '2024-08-23', 22, 8, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes") 
VALUES (106, 8, 2, 'Normal episode', 'Into the Dalek', DATE '2024-08-30', 22, 8, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes") 
VALUES (107, 8, 3, 'Normal episode', 'Robot of Sherwood', DATE '2024-09-06', 8, 8, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes") 
VALUES (108, 8, 4, 'Normal episode', 'Listen', DATE '2024-09-13', 22, 8, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes") 
VALUES (109, 8, 5, 'Normal episode', 'Time Heist', DATE '2024-09-20', 21, 8, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes") 
VALUES (110, 8, 6, 'Normal episode', 'The Caretaker', DATE '2024-09-27', 2, 8, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes") 
VALUES (111, 8, 7, 'Normal episode', 'Kill the Moon', DATE '2024-10-04', 14, 8, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes") 
VALUES (112, 8, 8, 'Normal episode', 'Mummy on the Orient Express', DATE '2024-10-11', 6, 8, 'John Sessions was the voice actor for this episode');

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes") 
VALUES (113, 8, 9, 'Normal episode', 'Flatline', DATE '2024-10-18', 6, 8, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes") 
VALUES (114, 8, 10, 'Normal episode', 'In the Forest of the Night', DATE '2024-10-25', 25, 8, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes") 
VALUES (115, 8, 11, 'Normal episode', 'Dark Water (Part 1)', DATE '2024-11-01', 22, 8, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes") 
VALUES (116, 8, 12, 'Normal episode', 'Death in Heaven (Part 2)', DATE '2024-11-08', 22, 8, NULL);

INSERT INTO "tblEpisode" ("EpisodeId", "SeriesNumber", "EpisodeNumber", "EpisodeType", "Title", "EpisodeDate", "AuthorId", "DoctorId", "Notes") 
VALUES (117, 9, NULL, 'Christmas special', 'Last Christmas', DATE '2025-12-25', 22, 8, NULL);

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
ALTER TABLE "tblEpisodeEnemy" ENABLE TRIGGER ALL;

-- Insérer les enregistrements dans tblEpisodeEnemy
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (1, 15, 10);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (2, 26, 15);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (3, 27, 15);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (4, 72, 15);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (5, 73, 15);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (6, 116, 15);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (7, 54, 42);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (8, 55, 42);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (9, 31, 10);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (10, 112, 77);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (11, 91, 62);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (12, 101, 71);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (13, 29, 24);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (14, 61, 44);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (15, 22, 18);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (16, 23, 18);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (17, 28, 22);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (18, 42, 33);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (19, 40, 32);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (20, 41, 32);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (21, 59, 17);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (22, 86, 51);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (23, 104, 51);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (24, 87, 51);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (25, 75, 56);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (26, 103, 72);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (27, 15, 11);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (28, 15, 2);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (29, 26, 5);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (30, 27, 5);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (31, 72, 5);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (32, 73, 5);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (33, 116, 32);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (34, 54, 5);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (35, 55, 5);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (36, 31, 26);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (37, 112, 76);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (38, 91, 61);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (39, 101, 15);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (40, 29, 23);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (41, 61, 43);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (42, 22, 17);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (43, 23, 17);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (44, 28, 21);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (45, 42, 34);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (46, 40, 31);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (47, 41, 31);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (48, 59, 32);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (49, 86, 15);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (50, 104, 5);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (51, 87, 56);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (52, 75, 51);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (53, 103, 5);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (54, 43, 35);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (55, 96, 66);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (56, 113, 78);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (57, 18, 14);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (58, 105, 14);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (59, 19, 15);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (60, 20, 15);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (61, 56, 15);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (62, 6, 5);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (63, 12, 5);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (64, 13, 5);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (65, 32, 5);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (66, 33, 5);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (67, 63, 5);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (68, 89, 5);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (69, 106, 5);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (70, 67, 47);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (71, 39, 30);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (72, 79, 54);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (73, 80, 54);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (74, 84, 58);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (75, 81, 55);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (76, 78, 53);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (77, 25, 20);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (78, 7, 6);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (79, 117, 79);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (80, 70, 49);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (81, 17, 13);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (82, 2, 2);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (83, 34, 27);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (84, 109, 74);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (85, 83, 57);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (86, 44, 36);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (87, 8, 7);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (88, 66, 46);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (89, 36, 28);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (90, 37, 28);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (91, 68, 48);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (92, 69, 48);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (93, 97, 67);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (94, 110, 75);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (95, 74, 50);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (96, 62, 45);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (97, 90, 60);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (98, 24, 19);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (99, 1, 1);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (100, 30, 25);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (101, 9, 8);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (102, 10, 8);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (103, 3, 3);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (104, 95, 64);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (105, 102, 64);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (106, 48, 38);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (107, 60, 32);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (108, 115, 32);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (109, 85, 59);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (110, 45, 17);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (111, 92, 63);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (112, 107, 73);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (113, 76, 51);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (114, 77, 52);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (115, 4, 4);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (116, 5, 4);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (117, 11, 4);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (118, 94, 65);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (119, 46, 37);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (120, 47, 37);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (121, 14, 9);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (122, 82, 56);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (123, 53, 41);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (124, 21, 16);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (125, 99, 68);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (126, 50, 40);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (127, 51, 40);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (128, 38, 29);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (129, 64, 29);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (130, 65, 29);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (131, 93, 29);
INSERT INTO "tblEpisodeEnemy" ("EpisodeEnemyId", "EpisodeId", "EnemyId") VALUES (132, 16, 12);

-- create relationships between tables
-- Ajouter une contrainte de clé étrangère pour AuthorId dans tblEpisode
ALTER TABLE "tblEpisode"
ADD CONSTRAINT "FK_tblEpisode_tblAuthor"
FOREIGN KEY ("AuthorId")
REFERENCES "tblAuthor" ("AuthorId")
ON UPDATE CASCADE
ON DELETE CASCADE;

-- Ajouter une contrainte de clé étrangère pour DoctorId dans tblEpisode
ALTER TABLE "tblEpisode"
ADD CONSTRAINT "FK_tblEpisode_tblDoctor"
FOREIGN KEY ("DoctorId")
REFERENCES "tblDoctor" ("DoctorId")
ON UPDATE CASCADE
ON DELETE CASCADE;

-- Ajouter une contrainte de clé étrangère pour CompanionId dans tblEpisodeCompanion
ALTER TABLE "tblEpisodeCompanion"
ADD CONSTRAINT "FK_tblEpisodeCompanion_tblCompanion"
FOREIGN KEY ("CompanionId")
REFERENCES "tblCompanion" ("CompanionId")
ON UPDATE CASCADE
ON DELETE CASCADE;

-- Ajouter une contrainte de clé étrangère pour EnemyId dans tblEpisodeEnemy
ALTER TABLE "tblEpisodeEnemy"
ADD CONSTRAINT "FK_tbEpisodeEnemy_tblEnemy"
FOREIGN KEY ("EnemyId")
REFERENCES "tblEnemy" ("EnemyId")
ON UPDATE CASCADE
ON DELETE CASCADE;


-- create a function to list companions
CREATE FUNCTION fnCompanions(EpisodeId int)
RETURNS varchar(100)
AS $$
DECLARE 
    c varchar(100) := '';

BEGIN
    SELECT string_agg(c.CompanionName, ', ') INTO c
    FROM tblEpisodeCompanion AS ec
    INNER JOIN tblCompanion AS c ON ec.CompanionId = c.CompanionId
    WHERE ec.EpisodeId = EpisodeId;

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
