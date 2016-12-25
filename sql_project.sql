--
-- File generated with SQLiteStudio v3.1.1 on Sun Dec 25 15:55:39 2016
--
-- Text encoding used: UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: apps
CREATE TABLE apps (
    id        INTEGER,
    name      CHAR (20),
    category  CHAR (20),
    downloads INTEGER,
    price     REAL
);


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
