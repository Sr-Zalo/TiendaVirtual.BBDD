CREATE TABLE [dbo].[ProductImage] (
    [ProductImageId]    INT             NOT NULL IDENTITY(1,1),
    [ProductId]         INT             NOT NULL,
    [Url]               NVARCHAR(500)   NOT NULL,
    [AltText]           NVARCHAR(200)   NULL,
    [IsMain]            BIT             NOT NULL DEFAULT 0,
    [Order]             INT             NOT NULL DEFAULT 0,
    [Enabled]           BIT             NOT NULL DEFAULT 1,
    [IUser]             NVARCHAR(100)   NULL,
    [IDate]             DATETIME        NULL,
    [UUser]             NVARCHAR(100)   NULL,
    [UDate]             DATETIME        NULL,
    [IComments]         NVARCHAR(500)   NULL,
    [UComments]         NVARCHAR(500)   NULL,
    CONSTRAINT PK_ProductImage PRIMARY KEY (ProductImageId),
    CONSTRAINT FK_ProductImage_Product
        FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([ProductId])
);