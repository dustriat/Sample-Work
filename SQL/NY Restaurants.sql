CREATE TABLE nomnom (
    name TEXT,
    neighborhood TEXT,
    cuisine TEXT,
    review INTEGER,
    price TEXT,
    health TEXT
);

INSERT INTO nomnom VALUES
('Peter Luger Steak House','Brooklyn','Steak',4.4,'$$$$','A'),
('Jongro BBQ','Midtown','Korean',4.5,'$$','A'),
('Pocha 32','Midtown','Korean',4.0,'$$','A'),
('Nom Wah Tea Parlor','Chinatown','Chinese',4.2,'$','A'),
('Roberta''s','Brooklyn','Pizza',4.4,'$$','A'),
('Speedy Romeo','Brooklyn','Pizza',4.4,'$$','A'),
('Bunna Cafe','Brooklyn','Ethiopian',4.6,'$$','A'),
('Massawa','Uptown','Ethiopian',4.0,'$$',NULL),
('Buddha Bodai','Chinatown','Vegetarian',4.2,'$$','A'),
('Nan Xiang Xiao Long Bao','Queens','Chinese',4.2,'$','A'),
('Mission Chinese Food','Downtown','Chinese',3.9,'$$','A'),
('Baohaus','Downtown','Chinese',4.2,'$','A'),
('al di la Trattoria','Brooklyn','Italian',4.4,'$$$','A'),
('Locanda Vini & Olii','Brooklyn','Italian',4.4,'$$$','A'),
('Rao''s','Uptown','Italian',4.2,'$$$','A'),
('Minca','Downtown','Japanese',4.4,'$$','A'),
('Kenka','Downtown','Japanese',4.3,'$','B'),
('Yakitori Taisho','Downtown','Japanese',4.1,'$','B'),
('Xi''an Famous Foods','Midtown','Chinese',4.4,'$','A'),
('Shake Shack','Midtown','American',4.4,'$','A'),
('The Halal Guys','Midtown','Mediterranean',4.4,'$','A'),
('Foodcademy','Midtown','American',4.4,'$$','A'),
('Sonnyboy''s','Brooklyn','Chinese',4.2,'$$','A'),
('The Cole Romano Experience','Brooklyn','Italian',2.1,'$$$$$','C'),
('Timbo Slice','Brooklyn','Pizza',2.8,'$','B'),
('Scorpio Sisters','Downtown','American',4.2,'$$','A'),
('N.E.D','Uptown','American',4.2,'$$$','A'),
('Great NY Noodletown','Chinatown','Chinese',4.1,'$$','B'),
('Golden Unicorn','Chinatown','Chinese',3.8,'$$','A'),
('Wo Hop','Chinatown','Chinese',4.2,'$$',NULL),
('Di Fara Pizza','Brooklyn','Pizza',4.2,'$$','A'),
('Kang Ho Dong Baekjeong','Midtown','Korean',4.3,'$$$','C'),
('Roti Roll Bombay Frankie','Uptown','Indian',4.2,'$','A'),
('Jacob''s Pickles','Uptown','American',NULL,'$$',NULL),
('Dan and John''s Wings','Downtown','American',4.5,'$','A'),
('Ping''s Seafood','Chinatown','Chinese',4.2,'$$','A'),
('XO Kitchen','Chinatown','Chinese',4.0,'$','B'),
('Carbone','Downtown','Italian',4.3,'$$$','A'),
('I Sodi','Downtown','Italian',4.5,'$$$','A'),
('Lilia','Brooklyn','Italian',4.4,'$$$','A'),
('Enid''s','Brooklyn','Soul Food',4.0,'$$','A'),
('Jajaja','Downtown','Vegetarian',4.5,'$$','A'),
('Smalls Jazz Club','Downtown','American',NULL,'$$','A'),
('Russ & Daughters','Downtown','American',4.6,'$$','A'),
('The Meatball Shop','Downtown','American',4.2,'$','A'),
('Dirt Candy','Downtown','Vegetarian',4.4,'$$$','A'),
('Ippudo','Downtown','Japanese',4.4,'$$','A'),
('St. Anselm','Brooklyn','Steak',4.5,'$$','A'),
('Marea','Midtown','Italian',4.5,'$$$$','A'),
('Lighthouse','Brooklyn','American',4.6,'$$',NULL),
('Los Hermanos','Brooklyn','Mexican',4.4,'$',NULL),
('The Standard Biergarten','Downtown','American',4.0,'$$','A'),
('Ootoya','Downtown','Japanese',4.5,'$$','A');

/*
=======================================
Queries for the NY Restaurants analysis
=======================================
*/

SELECT DISTINCT neighborhood
FROM nomnom;

SELECT DISTINCT cuisine
FROM nomnom;

--Good Chinese food
SELECT name, review
FROM nomnom
WHERE cuisine = 'Chinese'
  AND review >= 4;

--Abbi and Ilana request fancy dinner
SELECT name, price
FROM nomnom
WHERE cuisine = 'Italian'
  AND price = '$$$';

--Trey can't remember the meatball restaurant
SELECT name
FROM nomnom
WHERE name LIKE '%meatball%';

--Nearby delivery
SELECT name, cuisine, review
FROM nomnom
WHERE neighborhood = 'Midtown'
  OR  neighborhood = 'Downtown'
  OR  neighborhood = 'Chinatown';

--Missing health grading
SELECT name
FROM nomnom
WHERE health IS NULL;

--Top 10 restaurants
SELECT name, cuisine, neighborhood, review
FROM nomnom
ORDER BY review DESC
LIMIT 10;

--Change rating names
SELECT name, cuisine,
  CASE
    WHEN review > 4.5 THEN 'Extraordinary'
    WHEN review > 4   THEN 'Excellent'
    WHEN review > 3   THEN 'Good'
    WHEN review > 2   THEN 'Fair'
    ELSE 'Poor'
  END AS 'Rating'
FROM nomnom;
