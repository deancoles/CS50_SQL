-- Create a temporary table

CREATE TABLE "meteorites_temp" (
	"name" TEXT,
	"id" INTEGER,
    "nametype" TEXT,
	"class" TEXT,
	"mass" REAL,
	"discovery" TEXT,
	"year" INTEGER,
	"lat" REAL,
	"long" REAL,
	PRIMARY KEY ('id')
);

-- import .csv file
-- .import --csv --skip 1 meteorites.csv meteorites_temp


-- Any empty values changed to NULL
UPDATE meteorites_temp
SET mass = NULL
WHERE mass LIKE '';

UPDATE meteorites_temp
SET long = NULL
WHERE long LIKE '';

UPDATE meteorites_temp
SET lat = NULL
WHERE lat LIKE '';

UPDATE meteorites_temp
SET year = NULL
WHERE year LIKE '';


-- Round decimals to nearest hundredths place (e.g., 70.4777 becomes 70.48)
UPDATE meteorites_temp
SET mass = ROUND(mass, 2),
    lat = ROUND(lat, 2),
    long = ROUND(long, 2);
	
	
-- Create real table
CREATE TABLE "meteorites" (
	"name" TEXT,
	"id" INTEGER,
	"class" TEXT,
	"mass" REAL,
	"discovery" TEXT,
	"year" INTEGER,
	"lat" REAL,
	"long" REAL,
	PRIMARY KEY ('id')
);

-- Transfer data from temporary table to new table
INSERT INTO "meteorites" ("name", "class", "mass", "discovery", "year", "lat", "long")
SELECT "name", "class", "mass", "discovery", "year", "lat", "long" FROM "meteorites_temp"
WHERE "nametype" NOT LIKE "%relict%"
ORDER BY "year", "name";

-- Drop temporary table when finished
DROP TABLE meteorites_temp;
