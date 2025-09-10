IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'tracked_changes_sedm')
EXEC sys.sp_executesql N'CREATE SCHEMA [tracked_changes_sedm]'
GO

