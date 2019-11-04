--sqlite
sqlite3 Sales.db

CREATE TABLE Prices (
pid INTEGER PRIMARY KEY ,
price INTEGER ,
year INTEGER);
.mode csv
.import /Users/Adam/Downloads/prices.csv Prices


CREATE TABLE Characteristics (
pid INTEGER PRIMARY KEY ,
tid INTEGER ,
home_size INTEGER ,
parcel_size INTEGER ,
beds INTEGER ,
age INTEGER ,
pool INTEGER
);
.import /Users/Adam/Downloads/characteristics.csv Characteristics


CREATE TABLE Locations (
tid INTEGER PRIMARY KEY ,
cbd_dist INTEGER ,
x_coord INTEGER ,
y_coord INTEGER
);
.import /Users/Adam/Downloads/locations.csv Locations

.headers ON
.mode csv
.output sales.csv
SELECT
price,
year,
home_size,
parcel_size,
beds,
age,
pool,
cbd_dist,
x_coord,
y_coord
FROM Prices
JOIN Characteristics on Characteristics.pid = Prices.pid
JOIN Locations on Locations.tid = Characteristics.tid
;
.quit

