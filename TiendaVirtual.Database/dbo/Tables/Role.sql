CREATE TABLE [dbo].[Role] (
    [RoleId]      INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [Name]        NVARCHAR(50)      NOT NULL,
    [Enabled]     BIT               NOT NULL DEFAULT 1,
    [IUser]       NVARCHAR(100)     NULL,
    [IDate]       DATETIME          NULL,
    [UUser]       NVARCHAR(100)     NULL,
    [UDate]       DATETIME          NULL,
    [IComments]   NVARCHAR(500)     NULL,
    [UComments]   NVARCHAR(500)     NULL
);
