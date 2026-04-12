CREATE TABLE [dbo].[Book] (
    [BookId]        INT             NOT NULL,
    [Author]        NVARCHAR(150)   NULL,
    [Publisher]     NVARCHAR(150)   NULL,
    [ISBN]          NVARCHAR(20)    NULL,
    [Pages]         INT             NULL,
    [Language]      NVARCHAR(50)    NULL,
    [Enabled]       BIT             NOT NULL DEFAULT 1,
    [IUser]         NVARCHAR(100)   NULL,
    [IDate]         DATETIME        NULL,
    [UUser]         NVARCHAR(100)   NULL,
    [UDate]         DATETIME        NULL,
    [IComments]     NVARCHAR(500)   NULL,
    [UComments]     NVARCHAR(500)   NULL,
    CONSTRAINT PK_Book PRIMARY KEY (BookId),
    CONSTRAINT FK_Book_Product
        FOREIGN KEY ([BookId]) REFERENCES [dbo].[Product] ([ProductId])
);