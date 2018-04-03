SET IDENTITY_INSERT [dbo].[ArticleType] ON 

INSERT [dbo].[ArticleType] ([ID], [Title], [Description], [ParentID], [Status], [CreateBy], [CreatebyName], [CreateDate], [LastUpdateBy], [LastUpdateByName], [LastUpdateDate]) VALUES (1, N'博客', NULL, 0, 1, N'admin', N'ZKEASOFT', CAST(N'2016-03-10 13:50:18.000' AS DateTime), N'admin', N'ZKEASOFT', CAST(N'2018-04-03 10:38:00.387' AS DateTime))
INSERT [dbo].[ArticleType] ([ID], [Title], [Description], [ParentID], [Status], [CreateBy], [CreatebyName], [CreateDate], [LastUpdateBy], [LastUpdateByName], [LastUpdateDate]) VALUES (2, N'C#', NULL, 1, 1, N'admin', N'ZKEASOFT', CAST(N'2016-03-10 13:50:24.000' AS DateTime), N'admin', N'ZKEASOFT', CAST(N'2018-04-03 10:38:23.163' AS DateTime))
INSERT [dbo].[ArticleType] ([ID], [Title], [Description], [ParentID], [Status], [CreateBy], [CreatebyName], [CreateDate], [LastUpdateBy], [LastUpdateByName], [LastUpdateDate]) VALUES (3, N'JavaScript', NULL, 1, 1, N'admin', N'ZKEASOFT', CAST(N'2016-03-10 13:50:29.000' AS DateTime), N'admin', N'ZKEASOFT', CAST(N'2018-04-03 10:38:29.990' AS DateTime))
INSERT [dbo].[ArticleType] ([ID], [Title], [Description], [ParentID], [Status], [CreateBy], [CreatebyName], [CreateDate], [LastUpdateBy], [LastUpdateByName], [LastUpdateDate]) VALUES (4, N'HTML / CSS', NULL, 1, 1, N'admin', N'ZKEASOFT', CAST(N'2018-04-03 10:38:39.000' AS DateTime), N'admin', N'ZKEASOFT', CAST(N'2018-04-03 10:39:17.250' AS DateTime))
INSERT [dbo].[ArticleType] ([ID], [Title], [Description], [ParentID], [Status], [CreateBy], [CreatebyName], [CreateDate], [LastUpdateBy], [LastUpdateByName], [LastUpdateDate]) VALUES (5, N'SQL', NULL, 1, 1, N'admin', N'ZKEASOFT', CAST(N'2018-04-03 10:38:48.843' AS DateTime), N'admin', N'ZKEASOFT', CAST(N'2018-04-03 10:38:48.843' AS DateTime))
INSERT [dbo].[ArticleType] ([ID], [Title], [Description], [ParentID], [Status], [CreateBy], [CreatebyName], [CreateDate], [LastUpdateBy], [LastUpdateByName], [LastUpdateDate]) VALUES (6, N'Linux', NULL, 1, 1, N'admin', N'ZKEASOFT', CAST(N'2018-04-03 10:39:05.830' AS DateTime), N'admin', N'ZKEASOFT', CAST(N'2018-04-03 10:39:05.830' AS DateTime))
SET IDENTITY_INSERT [dbo].[ArticleType] OFF

GO
