﻿/*
Deployment script for RestauranteBD

This code was generated by a tool.
Changes to this file may cause incorrect behavior and will be lost if
the code is regenerated.
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "RestauranteBD"
:setvar DefaultFilePrefix "RestauranteBD"
:setvar DefaultDataPath "C:\Users\Allan\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\MSSQLLocalDB\"
:setvar DefaultLogPath "C:\Users\Allan\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\MSSQLLocalDB\"

GO
:on error exit
GO
/*
Detect SQLCMD mode and disable script execution if SQLCMD mode is not supported.
To re-enable the script after enabling SQLCMD mode, execute the following:
SET NOEXEC OFF; 
*/
:setvar __IsSqlCmdEnabled "True"
GO
IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'SQLCMD mode must be enabled to successfully execute this script.';
        SET NOEXEC ON;
    END


GO
USE [$(DatabaseName)];


GO
PRINT N'The following operation was generated from a refactoring log file 33d8fe68-a9dc-4a00-b595-c675d54cdb69, 4395fd1d-7e5f-4ad6-9fb8-2836805db685';

PRINT N'Rename [dbo].[Conta].[Usuario] to UsuarioId';


GO
EXECUTE sp_rename @objname = N'[dbo].[Conta].[Usuario]', @newname = N'UsuarioId', @objtype = N'COLUMN';


GO
-- Refactoring step to update target server with deployed transaction logs
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '33d8fe68-a9dc-4a00-b595-c675d54cdb69')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('33d8fe68-a9dc-4a00-b595-c675d54cdb69')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '4395fd1d-7e5f-4ad6-9fb8-2836805db685')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('4395fd1d-7e5f-4ad6-9fb8-2836805db685')

GO

GO
PRINT N'Update complete.';


GO
