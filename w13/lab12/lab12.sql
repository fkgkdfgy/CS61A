.read data.sql


CREATE TABLE bluedog AS
  SELECT color, pet FROM students WHERE color="blue" AND pet="dog";

CREATE TABLE bluedog_songs AS
  SELECT color, pet, song FROM students WHERE color="blue" AND pet="dog";


CREATE TABLE smallest_int AS
  SELECT time, smallest FROM students WHERE smallest>2 order by smallest LIMIT 20;


CREATE TABLE matchmaker AS
  SELECT left.pet, left.song, left.color, right.color FROM students as left, students as right WHERE left.time <> right.time AND left.pet = right.pet AND left.song = right.song LIMIT 10;


CREATE TABLE sevens AS
  SELECT a.seven FROM students as a, numbers as b WHERE a.time = b.time AND a.number=7 AND b.'7'='True';

