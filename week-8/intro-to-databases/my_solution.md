# Introduction to Databases

#### I worked on this challenge by myself
#### This challenge took me 2 hours.

## SQL Queries

######Paste the correct SQL queries for each of the following:

Select all data for all states: 

```
SELECT * FROM states;
```

######Select all data for the regions: 

```
SELECT * FROM regions;
```

######Select the `state_name` and `population` for all states: 

```
SELECT state_name,population
FROM states;
```

######Select the `state_name` and `population` for all states ordered by population. The most populous state should be at the top:

```
SELECT state_name,population
FROM states
ORDER BY population DESC;
```

######Select the 'state_name's for the states in region 7:

```
SELECT state_name
FROM states
WHERE region_id = 7;
```

######Select the 'state_names' and 'population_density' with a population density over 50 ordered from least to most dense:

```
SELECT state_name,population
FROM states
WHERE population_density > 50
ORDER BY population_density ASC;
```

######Select all state_names for states with a population between 1 million and 1.5 million people:

```
SELECT state_name
FROM states
WHERE population BETWEEN 1000000 AND 1500000;
```

######Select all state_names and region_id ordered by region in ascending order:

```
SELECT state_name,region_id
FROM states
ORDER BY region_id ASC;
```

######Select the 'region_name' for the regions with "Central" in the name:

```
SELECT region_name
FROM regions
WHERE region_name LIKE '%Central%';
```

######Select all of the region names and the state names in ascending order by regional id:


```
SELECT regions.region_name,states.state_name
FROM regions
LEFT JOIN states
ON regions.id=states.region_id
ORDER BY regions.id ASC;
```

## `persons` and `outfits` Schema
Here's a [link](./outfit_db.png) to my snazzy Schema.


## Reflection


<!--

What are databases for?

Databases allow you to store and access data. They are especially
useful for large amounts of data, because they can make it easy to
quickly and efficiently organize and access information.

What is a one-to-many relationship?

A one-to-many relationship describes how one type of data relates to
another. As the name suggests, ONE type of data will have many
instances - and in database theory, these may be stored in separate
tables. For example, each region_name in the regions table from the
exercise above has many states in it (the states are listed in
states.state_name). The relationship between region_name and
state_name is one-to-many.

There are also one-to-one and many-to-many relationship types in DB
theory.

What is a primary key? What is a foreign key? How can you determine
which is which?

A primary key is a number that uniquely identifies each instance in a
database. A foreign key is a number on a different table that matches
the primary key, thereby linking the two together. You have to set the
relationship of primary key and foreign key in order to integrate
separate tables in a database management system.

How can you select information out of a SQL database? What are some
general guidelines for that?

SELECT is the command used to select information out of an SQL
database. There are lots of commands and guidelines that can be added
to SELECT, to limit or define what data you want to access, how you
want to display it, etc. General quidelines for selecting information:
seems like ALL CAPS for db query commands; dot notation for field
names within tables; semicolon tells the console that you're ready to
execute the command. Many of the guidelines seem like programming
language basics.




-->



