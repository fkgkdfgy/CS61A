CREATE TABLE parents AS
  SELECT "abraham" AS parent, "barack" AS child UNION
  SELECT "abraham"          , "clinton"         UNION
  SELECT "delano"           , "herbert"         UNION
  SELECT "fillmore"         , "abraham"         UNION
  SELECT "fillmore"         , "delano"          UNION
  SELECT "fillmore"         , "grover"          UNION
  SELECT "eisenhower"       , "fillmore";

CREATE TABLE dogs AS
  SELECT "abraham" AS name, "long" AS fur, 26 AS height UNION
  SELECT "barack"         , "short"      , 52           UNION
  SELECT "clinton"        , "long"       , 47           UNION
  SELECT "delano"         , "long"       , 46           UNION
  SELECT "eisenhower"     , "short"      , 35           UNION
  SELECT "fillmore"       , "curly"      , 32           UNION
  SELECT "grover"         , "short"      , 28           UNION
  SELECT "herbert"        , "curly"      , 31;

CREATE TABLE sizes AS
  SELECT "toy" AS size, 24 AS min, 28 AS max UNION
  SELECT "mini"       , 28       , 35        UNION
  SELECT "medium"     , 35       , 45        UNION
  SELECT "standard"   , 45       , 60;


-- The size of each dog
CREATE TABLE size_of_dogs AS
  SELECT name ,size FROM dogs, sizes WHERE height<= max AND height>min;


-- All dogs with parents ordered by decreasing height of their parent
CREATE TABLE by_parent_height AS
  SELECT child.name FROM dogs as child , parents as list , dogs as parent WHERE list.child = child.name AND list.parent = parent.name ORDER BY parent.height DESC;


-- Filling out this helper table is optional
CREATE TABLE siblings AS
  SELECT a.name as n1, b.name as n2, a.size as size
  FROM size_of_dogs as a, size_of_dogs as b,
       parents as c , parents as d
  WHERE a.size = b.size AND
        c.parent = d.parent AND 
	a.name = c.child AND
	b.name = d.child AND 
	a.name <b.name;

-- Sentences about siblings that are the same size
CREATE TABLE sentences AS
  SELECT "The " || 'two ' || "siblings, "|| n1 || " " || "plus "|| n2 || " " || 'have the same size: ' || size 
   FROM siblings ORDER BY n1 DESC;

