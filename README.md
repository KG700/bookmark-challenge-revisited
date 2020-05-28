<!-- website specifications -->

## Project setup

1. Connect to psql using the commandline
```
psql
```
2. Create the database using the psql command:
```
CREATE DATABASE bookmark;
```
3. Connect to the database using the psql command:
```
\c bookmark;
```
3. Run the query saved in the file: 01_create_bookmarks_table.sql

## Website Specifications:
* Show a list of bookmarks
* Add new bookmarks
* Delete bookmarks
* Update bookmarks
* Comment on bookmarks
* Tag bookmarks into categories
* Filter bookmarks by tag
* Users are restricted to manage only their own bookmarks

## User Stories

```
As a user
So I can quickly find URL I want to remember
I would like to see a list of bookmarks
```


## Domain Model

| Bookmark |
|----------|
| bookmarks|
| all()    |
