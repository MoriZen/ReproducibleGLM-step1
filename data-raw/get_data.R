## ---- makedb
library(DBI)
library(RSQLite)
titanicdb <- dbConnect(SQLite(),dbname= "../data-raw/titanic.sqlite")

## ---- writeTitanic
library(PASWR)
dbWriteTable(titanicdb, "titanic", titanic3, overwrite = TRUE)
#dbWriteTable(database connection, name of table, data for table)
#dbReadTable(database connection, name of table) to read the data

