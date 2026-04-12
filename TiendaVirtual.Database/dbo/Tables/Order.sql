CREATE TABLE [dbo].[Order] (
    [OrderId]           INT             NOT NULL IDENTITY(1,1),
    [UserId]            INT             NOT NULL,
    [OrderDate]         DATETIME        NOT NULL DEFAULT GETDATE(),
    [Status]            TINYINT         NOT NULL DEFAULT 0,
    [Total]             DECIMAL(10,2)   NOT NULL,
    [Enabled]           BIT             NOT NULL DEFAULT 1,
    [IUser]             NVARCHAR(100)   NULL,
    [IDate]             DATETIME        NULL,
    [UUser]             NVARCHAR(100)   NULL,
    [UDate]             DATETIME        NULL,
    [IComments]         NVARCHAR(500)   NULL,
    [UComments]         NVARCHAR(500)   NULL,
    CONSTRAINT PK_Order PRIMARY KEY (OrderId),
    CONSTRAINT FK_Order_User
        FOREIGN KEY ([UserId]) REFERENCES [dbo].[User] ([UserId])
);