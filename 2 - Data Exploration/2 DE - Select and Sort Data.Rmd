# 1. Data Exploration

## 1.1 Select and Sort Data

### 1.1.1 Select All Columns
In this first section we use "*" to inspect all the columns in a table. This query is run usually when we are not familiar with the table and when you like to take a look at what's present.
```sql
SELECT * FROM table_name;
```
Now this command would select all the column names from the table.
### 1.1.2 Select Specific Columns
After analysing your dataset, if you would prefer to view only a selected number of columns, then the command is
```SQL
SELECT
    column1,
    column2,
    .....
    column n
 From table_name;
 ```
 **Important: Make sure you get the name of the columns right**
 ### 1.1.3 Limit Output Rows
 We use the command **LIMIT** to restrict the output to just the first few number of rows from the query. This is usually used when the dataset has more numbers of rows and you just want to take a look at a few to analyse what we have in hand. <br/> If you are familiar with python, it's similar to *dataframe.head()*.

 ```sql
SELECT * FROM table_name
LIMIT 5;
```
---

## 1.2 Sorting Query Results
Sorting or Order the dataset based on a few columns is natural thing to do while analysing the dataset. Usually used to sort numerical columns where it helps identification of smallest values and largest value.
### 1.2.1 Sorting by a single column
```sql
SELECT
  column1
FROM table_name
ORDER BY column1;
```
**ORDER BY** command by default sorts the column in ascending order and to sort it in descending order we use the command **DESC**
```SQL
SELECT
  column1
FROM table_name
ORDER BY column1 DESC;
```
### 1.2.2 Sorting by multiple Columns
 An example to sort a table in ascending order based on two Columns
 ```SQL
 SELECT
  column1,
  column2
FROM table_name
ORDER BY column1, column2;
```
 An example of ascending and descending
 ```SQL
 SELECT
  column1,
  column2
FROM table_name
ORDER BY column1 DESC, column2;
```
An example for descending and descending
```SQL
SELECT
 column1,
 column2
FROM table_name
ORDER BY column1 DESC, column2 DESC;
```

If you want to sort column1 based on column2 then, it would be wise to sort column2 first
A simple change in the SQL command would be to sort column2 first.

```SQL
SELECT
 column1,
 column2
FROM table_name
ORDER BY column2 DESC, column1;
```
