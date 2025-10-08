/*
================================================================================
Create Database and Schemas
================================================================================
Script purpose:
This script creates a new database called 'DataWarehouse' after checking if it already exists.
If it already exists, it is droped and recreated. The script also sets up three schemas: 'bronze', 'silver' and 'gold' within the database.

Warning:
Runnign this script will delete the whole DataWarehouse database along with the data permanently.
Proceed with caution ensuring the data is safely backed up if required before runnign the script.
*/

USE master;
GO

--Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name='DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO
  
--Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO

--Create Schemas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
