CREATE TABLE [dbo].[OrderLine] (
    [OrderLineId]       INT             NOT NULL IDENTITY(1,1),
    [OrderId]           INT             NOT NULL,
    [ProductId]         INT             NOT NULL,
    [Quantity]          INT             NOT NULL,
    [UnitPrice]         DECIMAL(10,2)   NOT NULL,
    [Enabled]           BIT             NOT NULL DEFAULT 1,
    [IUser]             NVARCHAR(100)   NULL,
    [IDate]             DATETIME        NULL,
    [UUser]             NVARCHAR(100)   NULL,
    [UDate]             DATETIME        NULL,
    [IComments]         NVARCHAR(500)   NULL,
    [UComments]         NVARCHAR(500)   NULL,
    CONSTRAINT PK_OrderLine PRIMARY KEY (OrderLineId),
    CONSTRAINT FK_OrderLine_Order
        FOREIGN KEY ([OrderId]) REFERENCES [dbo].[Order] ([OrderId]),
    CONSTRAINT FK_OrderLine_Product
        FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([ProductId])
);