CREATE TABLE xmen (
   id INTEGER,
   name TEXT,
   date_of_birth DATE
);

INSERT INTO xmen (id, name, date_of_birth) 
VALUES 
(1, 'Charles Xavier', '1932'),
(2, 'Scott Summers', '1948'),
(3, 'Jean Grey', '1949'),
(4, 'Hank McCoy', '1951'),
(5, 'Logan', '1832'),
(6, 'Ororo Munroe', '1956');

SELECT * FROM xmen;

--Add a new column for the member codenames
ALTER TABLE xmen
ADD COLUMN codename TEXT;

--Update all records to include member codenames
UPDATE xmen
SET codename = 'Professor X'
WHERE name = 'Charles Xavier';

UPDATE xmen
SET codename = 'Cyclops'
WHERE name = 'Scott Summers';

UPDATE xmen
SET codename = 'Beast'
WHERE name = 'Hank McCoy';

UPDATE xmen
SET codename = 'Wolverine'
WHERE name = 'Logan';

UPDATE xmen
SET codename = 'Storm'
WHERE name = 'Ororo Munroe';

SELECT * FROM xmen;

--Add a new column for the member email addresses
ALTER TABLE xmen
ADD COLUMN email TEXT;

--Update all records to include email addresses
UPDATE xmen
SET email = 'profx@codecademy.com'
WHERE codename = 'Professor X';

UPDATE xmen
SET email = 'cyclops@codecademy.com'
WHERE codename = 'Cyclops';

UPDATE xmen
SET email = 'beast@codecademy.com'
WHERE codename = 'Beast';

UPDATE xmen
SET email = 'wolverine@codecademy.com'
WHERE codename = 'Wolverine';

UPDATE xmen
SET email = 'storm@codecademy.com'
WHERE codename = 'Storm';

SELECT * FROM xmen;

--Remove any records for members without a codename
DELETE FROM xmen
WHERE codename IS NULL;

SELECT * FROM xmen;
