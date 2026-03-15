GO
SET IDENTITY_INSERT [dbo].[User] ON
GO
IF NOT EXISTS (SELECT 1 FROM [dbo].[User] WHERE [UserId] = 1)
    INSERT INTO [dbo].[User] ([UserId], [RoleId], [Name], [Surname], [Email], [PasswordHash], [Enabled], [IUser], [IDate], [IComments])
    VALUES (1, 1, 'Admin', 'Admin', 'admin@tienda.com', 'AQAAAAIAAYagAAAAEDjzCHdHxvbJCNdKZb1VKZFXlvamrUj6jbpaCQIRnrixMRLzC+Hekl280HMLXO8sgg==', 1, '1', GETDATE(), 'Carga inicial')
GO
SET IDENTITY_INSERT [dbo].[User] OFF
GO