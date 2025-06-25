-- *** The Lost Letter ***

-- Establish address_id for Anneke
SELECT "id"
FROM "addresses"
WHERE "address" = '900 Somerville Avenue';

-- Check package_id from Anneke
SELECT *
FROM "packages"
WHERE "from_address_id" = 432;

-- Check address_id for Congratulatory Letter
SELECT *
FROM "addresses"
WHERE "id" = 854;


-- *** The Devious Delivery ***

-- Find all packages with 'Duck' in contents
SELECT *
FROM "packages"
WHERE "contents"
LIKE '%duck%';

-- Look at 'Duck Debugger' destination
SELECT *
FROM "scans"
WHERE "package_id" = 5098;

-- Check address_id '348'
SELECT *
FROM "addresses"
WHERE id = 348;


-- *** The Forgotten Gift ***

-- Check details for 728 Maple Place
SELECT *
FROM "addresses"
WHERE "address" = '728 Maple Place';

-- Check Details for 109 Tileston Street
SELECT *
FROM "addresses"
WHERE "address" = '109 Tileston Street';

-- Look at packages sent between them
SELECT *
FROM "packages"
WHERE "from_address_id" = 9873 AND "to_address_id" = 4983;

-- Check package scan history
SELECT *
FROM "scans"
WHERE "package_id" = 9523;

-- Lookup driver information
SELECT *
FROM "drivers"
WHERE "id" = 17;