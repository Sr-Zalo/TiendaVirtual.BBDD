CREATE TABLE [dbo].[Cart] (
    [CartId]        INT             NOT NULL IDENTITY(1,1),
    [UserId]        INT             NOT NULL,
    [ProductId]     INT             NOT NULL,
    [Quantity]      INT             NOT NULL DEFAULT 1,
    [Enabled]       BIT             NOT NULL DEFAULT 1,
    [IUser]         NVARCHAR(100)   NULL,
    [IDate]         DATETIME        NULL,
    [UUser]         NVARCHAR(100)   NULL,
    [UDate]         DATETIME        NULL,
    [IComments]     NVARCHAR(500)   NULL,
    [UComments]     NVARCHAR(500)   NULL,
    CONSTRAINT PK_Cart PRIMARY KEY (CartId),
    CONSTRAINT FK_Cart_User
        FOREIGN KEY ([UserId]) REFERENCES [dbo].[User] ([UserId]),
    CONSTRAINT FK_Cart_Product
        FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([ProductId])
);