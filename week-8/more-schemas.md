###What is a one-to-one database?

A one-to-one database relationship indicates that two pieces of information have a single relationship - essentially, they are a pair. As discussed in the challenge, it is difficult to unravel why one wouldn't just make the second piece of information a field within the table of data for the first piece of information. See below for my understanding of when one is appropriate versus the other.

###When would you use a one-to-one database? (Think generally, not in terms of the example you created).

The rule-of-thumb for how to decide whether to create two tables that have a one-to-one relationship versus a field in one table is whether you have a relationship where a group of fields can all optionally be empty (signified by NULL).

In the example video, the narrator uses a separate 'Details' table about a product (in this example, a loan), to illustrate a situation where you would want to use a one-to-one relationship. I think an important benefit of using the one-to-one relationship for somethin like a details table would be that it significantly increases the speed that query results can be accessed. If you put all the frequently-accessed fields in the 'primary' table, and a long list of less-frequently-accessed fields in the details table, your database will be more 'agile' when you query it for information.

Here's a [link](./imgs/one-to-one.png) to my one-to-one database schema.

###What is a many-to-many database?

A many-to-many database relationship indicates that two groups of data both have many instances. In database theory, they can be connected by a "join table" that links their respective key IDs.


###When would you use a many-to-many database? (Think generally, not in terms of the example you created).

Some examples discussed in this challenge include instructors/courses, grocery lists/items, and artists/paintings. Others might include authors/books, investors/stocks, and countries/languages.

Here's a [link](./imgs/many-to-many.png) to my many-to-many database schema.

###What is confusing about database schemas? What makes sense?

The use of artists/paintings as an example of a many-to-many relationship made me pause and contemplate, mainly because it seems like an edge case - the vast majority of paintings are created by one artist, so at first it seems like the intuitive thing would be to consider this a "poor" example of a one-to-many relationship, that fails upon closer investigation, if you look close enough at the details. The same could be said for author/book. I find this instructive, in terms of database theory, since it is clearly important to consider the edge cases, in addition to making sure that you have the 'primary' examples understood and illustrated as well.

I find database schemas interesting, and the logic used in their theory makes sense to me. It seems deceptively straight-forward, and I hope that we get the chance to explore it in more detail during the on-site phases of DBC.