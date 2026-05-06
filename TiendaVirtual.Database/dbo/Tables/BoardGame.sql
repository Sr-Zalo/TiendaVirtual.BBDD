CREATE TABLE [dbo].[BoardGame] (
    [BoardGameId]   INT             NOT NULL,
    [MinPlayers]    INT             NULL,
    [MaxPlayers]    INT             NULL,
    [AvgDuration]   INT             NULL,
    [MinAge]        INT             NULL,
    [Type]          NVARCHAR(100)   NULL,
    [Enabled]       BIT             NOT NULL DEFAULT 1,
    [IUser]         NVARCHAR(100)   NULL,
    [IDate]         DATETIME        NULL,
    [UUser]         NVARCHAR(100)   NULL,
    [UDate]         DATETIME        NULL,
    [IComments]     NVARCHAR(500)   NULL,
    [UComments]     NVARCHAR(500)   NULL,
    CONSTRAINT PK_BoardGame PRIMARY KEY (BoardGameId),
    CONSTRAINT FK_BoardGame_Product
        FOREIGN KEY ([BoardGameId]) REFERENCES [dbo].[Product] ([ProductId])
);