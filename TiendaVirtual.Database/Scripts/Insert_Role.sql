GO
SET IDENTITY_INSERT [dbo].[Role] ON
GO
IF NOT EXISTS (SELECT 1 FROM [dbo].[Role] WHERE [RoleId] = 1)
    INSERT INTO [dbo].[Role] ([RoleId], [Name], [Enabled], [IUser], [IDate], [IComments])
    VALUES (1, 'Admin', 1, '1', GETDATE(), 'Carga inicial')
GO
IF NOT EXISTS (SELECT 1 FROM [dbo].[Role] WHERE [RoleId] = 2)
    INSERT INTO [dbo].[Role] ([RoleId], [Name], [Enabled], [IUser], [IDate], [IComments])
    VALUES (2, 'Cliente', 1, '1', GETDATE(), 'Carga inicial')
GO
SET IDENTITY_INSERT [dbo].[Role] OFF
GO