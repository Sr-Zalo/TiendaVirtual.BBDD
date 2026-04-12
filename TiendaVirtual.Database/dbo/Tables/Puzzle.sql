CREATE TABLE [dbo].[Puzzle] (
    [PuzzleId]      INT             NOT NULL,
    [Pieces]        INT             NULL,
    [Difficulty]    NVARCHAR(50)    NULL,
    [Shape]         NVARCHAR(50)    NULL,
    [Material]      NVARCHAR(100)   NULL,
    [MinAge]        INT             NULL,
    [Creator]       NVARCHAR(150)   NULL,
    [Dimensions]    NVARCHAR(100)   NULL,
    [Enabled]       BIT             NOT NULL DEFAULT 1,
    [IUser]         NVARCHAR(100)   NULL,
    [IDate]         DATETIME        NULL,
    [UUser]         NVARCHAR(100)   NULL,
    [UDate]         DATETIME        NULL,
    [IComments]     NVARCHAR(500)   NULL,
    [UComments]     NVARCHAR(500)   NULL,
    CONSTRAINT PK_Puzzle PRIMARY KEY (PuzzleId),
    CONSTRAINT FK_Puzzle_Product
        FOREIGN KEY ([PuzzleId]) REFERENCES [dbo].[Product] ([ProductId])
);