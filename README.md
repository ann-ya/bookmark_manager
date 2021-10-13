First user story:
```
As a time-pressed user
So that I can quickly go to web sites I regularly visit
I would like to see a list of bookmarks```

Second user story:
```
As a time-pressed user
So that I can save a website
I would like to add the site's address and title to bookmark manager```


To set up a database:
```
1. Connect to psql
2. Create the database using the psql command CREATE DATABASE bookmark_manager;
3. Connect to the database using the pqsl command \c bookmark_manager;
4. Run the query we have saved in the file 01_create_bookmarks_table.sql```

To set up a test database:
```
$> psql
admin=# CREATE DATABASE "bookmark_manager_test";
admin=# CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));```
