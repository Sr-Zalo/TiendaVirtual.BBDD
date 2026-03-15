GO
SET IDENTITY_INSERT [dbo].[Category] ON
GO
IF NOT EXISTS (SELECT 1 FROM [dbo].[Category] WHERE [CategoryId] = 1)
    INSERT INTO [dbo].[Category] ([CategoryId], [Name], [Enabled], [IUser], [IDate], [IComments])
    VALUES (1, 'Juego de mesa', 1, '1', GETDATE(), 'Carga inicial')
GO
IF NOT EXISTS (SELECT 1 FROM [dbo].[Category] WHERE [CategoryId] = 2)
    INSERT INTO [dbo].[Category] ([CategoryId], [Name], [Enabled], [IUser], [IDate], [IComments])
    VALUES (2, 'Videojuego', 1, '1', GETDATE(), 'Carga inicial')
GO
IF NOT EXISTS (SELECT 1 FROM [dbo].[Category] WHERE [CategoryId] = 3)
    INSERT INTO [dbo].[Category] ([CategoryId], [Name], [Enabled], [IUser], [IDate], [IComments])
    VALUES (3, 'Libro', 1, '1', GETDATE(), 'Carga inicial')
GO
IF NOT EXISTS (SELECT 1 FROM [dbo].[Category] WHERE [CategoryId] = 4)
    INSERT INTO [dbo].[Category] ([CategoryId], [Name], [Enabled], [IUser], [IDate], [IComments])
    VALUES (4, 'Coleccionable', 1, '1', GETDATE(), 'Carga inicial')
GO
IF NOT EXISTS (SELECT 1 FROM [dbo].[Category] WHERE [CategoryId] = 5)
    INSERT INTO [dbo].[Category] ([CategoryId], [Name], [Enabled], [IUser], [IDate], [IComments])
    VALUES (5, 'Puzzle', 1, '1', GETDATE(), 'Carga inicial')
GO
SET IDENTITY_INSERT [dbo].[Category] OFF
GO