CREATE TABLE [dbo].[VideoGame] (
    [VideoGameId]   INT             NOT NULL,
    [Platform]      NVARCHAR(100)   NULL,
    [Developer]     NVARCHAR(150)   NULL,
    [Pegi]          INT             NULL,
    [Enabled]       BIT             NOT NULL DEFAULT 1,
    [IUser]         NVARCHAR(100)   NULL,
    [IDate]         DATETIME        NULL,
    [UUser]         NVARCHAR(100)   NULL,
    [UDate]         DATETIME        NULL,
    [IComments]     NVARCHAR(500)   NULL,
    [UComments]     NVARCHAR(500)   NULL,
    CONSTRAINT PK_VideoGame PRIMARY KEY (VideoGameId),
    CONSTRAINT FK_VideoGame_Product
        FOREIGN KEY ([VideoGameId]) REFERENCES [dbo].[Product] ([ProductId])
);