IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'sedm')
EXEC sys.sp_executesql N'CREATE SCHEMA [sedm]'
GO
