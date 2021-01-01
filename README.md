# dev_SnowflakePOC
Snowflake Development and Testing

#### Adding Northwind Database
![Northwind ER](https://github.com/lel99999/dev_SnowflakePOC/blob/main/Northwind_ER.png)

#### Login to Snowflake, run DDL
![https://github.com/lel99999/dev_SnowflakePOC/blob/main/snowflake_insert-01.png](https://github.com/lel99999/dev_SnowflakePOC/blob/main/snowflake_insert-01.png)

#### Configuring unixODBC
```
$sudo yum install -y unixODBC.x86_64

Verify the directory location of odbc.ini and odbcinst.ini (/etc)
$odbcinst -j
```
![Cmd Result](https://github.com/lel99999/dev_SnowflakePOC/blob/main/odbcinst_cmd-01.PNG)

#### Add/Edit /etc/odbc.ini
```
[snowflake]
Description=SnowflakeDB
Driver=SnowflakeDSIIDriver
Locale=en-US
#SERVER=abc123.snowflakecomputing.com
#SERVER=https://abc123.snowflakecomputing.com
server=abc123.us-east-1.snowflakecomputing.com
database=testDB
#PORT=443
#SSL=on
ACCOUNT=abc123
```

#### Snowflake ODBC Driver location
[Snowflake ODBC Download Directory - https://sfc-repo.snowflakecomputing.com/odbc/linux/2.22.3/index.html](https://sfc-repo.snowflakecomputing.com/odbc/linux/2.22.3/index.html)

#### Install Snowflake ODBC
```
$sudo yum localinstall -y snowflake-odbc-2.22.3.x86_64.rpm
or
$sudo yum install -y https://sfc-repo.snowflakecomputing.com/odbc/linux/2.22.3/snowflake-odbc-2.22.3.x86_64.rpm

Installs into /usr/lib64/snowflake/odbc/lib  ... where you will find libSnowflake.so, simba.snowflake.ini
```
#### Add to simba.snowflake.ini
```
ErrorMessagesPath=<path>/ErrorMessages/
LogPath=/tmp/
ODBCInstLib=<driver_manager_path>
CABundleFile=<path>/lib/cacert.pem
ANSIENCODING=UTF-8
```
