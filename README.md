#Books and Authors LINQ Query Practice

1. Run the booksAndAuthors.sql script and paste in workbench to create the database.
2. Create an appsettings.json file and paste the following code, changing the username, password and port fields.

```javascript
    {
        "DBInfo":
        {
            "Name": "MySQLconnect",
            "ConnectionString": "server=localhost;userid={ username };password={ password };port={ port };database=EFBooksAndAuthors;SslMode=None"
        }
    }
```
3. Run dotnet restore to install needed packages
4. Run dotnet watch run in command line.
5. Change the queries in the Index method of the HomeController to display the output.
6. Foreach query, use the DbSet for the model finding the data for.  I.E. Find Authors... use _context.Authors.QueryMethod

## Level I
* Find all Authors order by name ascending.
* Find all Books that have the letter b.


## Level II
* Find all Books and display Author name.
* Find all Authors and the count of Books written.
* Find the count of Books for each Auther.
* Find all of the Harry Potter Books written by JK Rowling.
* Find all Books order by title limit 10.

## Level III
* Find all Books, with their Publisher and Author.
* Find the number of Books published by Penguin Random House.
* Find the Publication with the most Books.
