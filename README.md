# DBT_explore
This repo will explore the dbt and its functionality


#Install Microsoft ODBC 17

If you're connecting to MS SQL. Below ODBC drive should be installed.

Run it from home directory in terminal.
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew tap microsoft/mssql-release https://github.com/Microsoft/homebrew-mssql-release
brew update
HOMEBREW_NO_ENV_FILTERING=1 ACCEPT_EULA=Y brew install msodbcsql17 mssql-tools
```

Set MS SQL SERVER localhost

Follow below article to setup
```
https://medium.com/geekculture/docker-express-running-a-local-sql-server-on-your-m1-mac-8bbc22c49dc9
```

Dataset is used here: BikeStores
You can find here
```
https://www.sqlservertutorial.net/sql-server-sample-database/
```

The following illustrates the BikeStores database diagram:

![alt text](https://github.com/ktnsh24/DBT_explore/blob/master/SQL-Server-Sample-Database.png)


Linage Graph for the BikeStores Model.
![alt text](https://github.com/ktnsh24/DBT_explore/blob/master/LineageGraph.png)
