CREATE TABLE [dbo].[User] (
    [UserId]        INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [RoleId]        INT               NOT NULL,
    [Name]          NVARCHAR(100)     NOT NULL,
    [Surname]       NVARCHAR(150)     NOT NULL,
    [Email]         NVARCHAR(255)     NOT NULL,
    [PasswordHash]  NVARCHAR(500)     NOT NULL,
    [Enabled]       BIT               NOT NULL DEFAULT 1,
    [IUser]         NVARCHAR(100)     NULL,
    [IDate]         DATETIME          NULL,
    [UUser]         NVARCHAR(100)     NULL,
    [UDate]         DATETIME          NULL,
    [IComments]     NVARCHAR(500)     NULL,
    [UComments]     NVARCHAR(500)     NULL,
    CONSTRAINT UQ_User_Email
        UNIQUE ([Email]),
    CONSTRAINT FK_User_Role
        FOREIGN KEY ([RoleId]) REFERENCES [dbo].[Role] ([RoleId])
);