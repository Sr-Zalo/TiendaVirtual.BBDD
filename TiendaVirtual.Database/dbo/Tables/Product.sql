CREATE TABLE [dbo].[Product] (
    [ProductId]     INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [CategoryId]    INT               NOT NULL,
    [Name]          NVARCHAR(255)     NOT NULL,
    [Description]   NVARCHAR(2000)    NULL,
    [Price]         DECIMAL(10,2)     NOT NULL,
    [Stock]         INT               NOT NULL DEFAULT 0,
    [Enabled]       BIT               NOT NULL DEFAULT 1,
    [IUser]         NVARCHAR(100)     NULL,
    [IDate]         DATETIME          NULL,
    [UUser]         NVARCHAR(100)     NULL,
    [UDate]         DATETIME          NULL,
    [IComments]     NVARCHAR(500)     NULL,
    [UComments]     NVARCHAR(500)     NULL,
    CONSTRAINT FK_Product_Category
        FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[Category] ([CategoryId])
);