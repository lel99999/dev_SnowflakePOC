# dev_SnowflakePOC
Snowflake Development and Testing

#### Adding Northwind Database
![Northwind ER](https://github.com/lel99999/dev_SnowflakePOC/blob/main/Northwind_ER.png)


#### Configuring unixODBC
```
$sudo yum install -y unixODBC.x86_64

Verify the directory location of odbc.ini and odbcinst.ini (/etc)
$odbcinst -j
```
![Cmd Result](https://github.com/lel99999/dev_SnowflakePOC/blob/main/odbcinst_cmd-01.PNG)

#### Snowflake ODBC Driver location
[Snowflake ODBC Download Directory](https://sfc-repo.snowflakecomputing.com/odbc/linux/2.22.3/index.html)
