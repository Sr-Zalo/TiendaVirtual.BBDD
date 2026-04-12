CREATE TABLE [dbo].[Collectible] (
    [CollectibleId]     INT             NOT NULL,
    [Type]              NVARCHAR(100)   NULL,
    [Material]          NVARCHAR(100)   NULL,
    [LimitedEdition]    BIT             NOT NULL DEFAULT 0,
    [Size]              NVARCHAR(100)   NULL,
    [Reference]         NVARCHAR(200)   NULL,
    [Enabled]           BIT             NOT NULL DEFAULT 1,
    [IUser]             NVARCHAR(100)   NULL,
    [IDate]             DATETIME        NULL,
    [UUser]             NVARCHAR(100)   NULL,
    [UDate]             DATETIME        NULL,
    [IComments]         NVARCHAR(500)   NULL,
    [UComments]         NVARCHAR(500)   NULL,
    CONSTRAINT PK_Collectible PRIMARY KEY (CollectibleId),
    CONSTRAINT FK_Collectible_Product
        FOREIGN KEY ([CollectibleId]) REFERENCES [dbo].[Product] ([ProductId])
);