USE [StudentBd]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 25.03.2025 16:17:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[ID_Role] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[ID_Role] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Specialization]    Script Date: 25.03.2025 16:17:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Specialization](
	[ID_Specialization] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Specialization] PRIMARY KEY CLUSTERED 
(
	[ID_Specialization] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 25.03.2025 16:17:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[ID_student] [int] IDENTITY(12,1) NOT NULL,
	[FIO] [nvarchar](50) NOT NULL,
	[Specialization_ID] [int] NOT NULL,
	[Groups] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[ID_student] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 25.03.2025 16:17:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Role_ID] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Role] ([ID_Role], [Title]) VALUES (1, N'Пользователь')
GO
INSERT [dbo].[Specialization] ([ID_Specialization], [Title]) VALUES (1, N'44.02.02 Преподавание в начальных классах')
INSERT [dbo].[Specialization] ([ID_Specialization], [Title]) VALUES (2, N'44.02.01 Дошкольное образование')
INSERT [dbo].[Specialization] ([ID_Specialization], [Title]) VALUES (3, N'09.02.05 Прикладная информатика (по отраслям) ')
INSERT [dbo].[Specialization] ([ID_Specialization], [Title]) VALUES (4, N'49.02.01 Физическая культура ')
INSERT [dbo].[Specialization] ([ID_Specialization], [Title]) VALUES (5, N'09.02.07 Информационные системы и программирование')
GO
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (1, N'Власов Даниил Львович', 5, N'911')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (2, N'Ушаков Александр Егорович', 5, N'911')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (3, N'Осипова Карина Тимуровна', 5, N'911')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (4, N'Рогова Агата Ивановна', 5, N'911')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (5, N'Власов Борис Фёдорович', 5, N'911')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (6, N'Морозова Ульяна Германовна', 5, N'911')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (7, N'Соловьев Константин Артёмович', 5, N'911')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (8, N'Вавилова София Ивановна', 5, N'911')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (9, N'Носова Камилла Тимофеевна', 5, N'911')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (10, N'Романов Егор Ильич', 5, N'911')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (11, N'Павловская Мария Елисеевна', 5, N'921')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (12, N'Позднякова Анна Михайловна', 5, N'921')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (14, N'Свиридов Кирилл Андреевич', 5, N'921')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (15, N'Селиванова Варвара Максимовна', 5, N'921')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (16, N'Сергеев Андрей Фёдорович', 5, N'921')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (17, N'Иванова Елизавета Михайловна', 5, N'921')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (18, N'Софронов Сергей Демидович', 5, N'921')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (19, N'Федоров Лев Степанович', 5, N'921')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (20, N'Михайлов Фёдор Миронович', 5, N'921')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (21, N'Григорьева Василиса Никитична', 5, N'931')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (22, N'Попова Мия Вадимовна', 5, N'931')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (23, N'Пономарева Ирина Максимовна', 5, N'931')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (24, N'Соколова Василиса Марковна', 5, N'931')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (25, N'Борисов Марк Иванович', 5, N'931')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (26, N'Яковлев Дмитрий Максимович', 5, N'931')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (27, N'Крылова Алёна Ильинична', 5, N'931')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (28, N'Карасева Ксения Алексеевна', 5, N'931')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (29, N'Алешин Иван Ильич', 5, N'931')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (30, N'Рудаков Максим Маркович', 5, N'931')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (31, N'Губанов Роберт Глебович', 5, N'941')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (32, N'Крючков Егор Дмитриевич', 5, N'941')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (33, N'Круглова Таисия Ильинична', 5, N'941')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (34, N'Захаров Даниил Даниилович', 5, N'941')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (35, N'Борисов Евгений Адрианович', 5, N'941')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (36, N'Бородина Мария Александровна', 5, N'941')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (37, N'Павлова Алиса Сергеевна', 5, N'941')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (38, N'Медведев Максим Максимович', 5, N'941')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (39, N'Булатова Кристина Никитична', 5, N'941')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (40, N'Пахомова Вероника Ивановна', 5, N'941')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (41, N'Сергеева Виктория Георгиевна', 4, N'811')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (42, N'Титова Ксения Александровна', 4, N'811')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (43, N'Шаповалова Анна Савельевна', 4, N'811')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (44, N'Крюкова Камила Мироновна', 4, N'811')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (45, N'Васильев Кирилл Миронович', 4, N'811')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (46, N'Степанова Марта Ивановна', 4, N'821')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (47, N'Орлов Алексей Максимович', 4, N'821')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (48, N'Комаров Максим Александрович', 4, N'821')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (49, N'Васильева Ясмина Дмитриевна', 4, N'821')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (50, N'Соловьев Матвей Константинович', 4, N'821')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (51, N'Абрамов Святослав Михайлович', 4, N'831')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (52, N'Герасимова Алёна Максимовна', 4, N'831')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (53, N'Белов Тимофей Александрович', 4, N'831')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (54, N'Полякова Александра Никитична', 4, N'831')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (55, N'Иванов Егор Алексеевич', 4, N'831')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (56, N'Серебряков Арсений Алексеевич', 4, N'841')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (57, N'Филимонов Илья Даниилович', 4, N'841')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (58, N'Васильева София Романовна', 4, N'841')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (59, N'Покровский Максим Андреевич', 4, N'841')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (60, N'Чернова Анна Марковна', 4, N'841')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (61, N'Лебедева Ника Денисовна', 2, N'311')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (62, N'Давыдов Кирилл Фёдорович', 2, N'311')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (63, N'Титова Алиса Кирилловна', 2, N'311')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (64, N'Еремин Дамир Кириллович', 2, N'311')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (65, N'Третьяков Адам Даниилович', 2, N'311')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (66, N'Панкратов Даниил Михайлович', 2, N'321')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (67, N'Прохорова Диана Владимировна', 2, N'321')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (68, N'Козлова Алина Марковна', 2, N'321')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (69, N'Соловьев Фёдор Матвеевич', 2, N'321')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (70, N'Морозова Вера Александровна', 2, N'321')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (72, N'Соколов Егор Владимирович', 2, N'331')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (73, N'Худякова Ариана Кирилловна', 2, N'331')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (74, N'Маркова Ксения Матвеевна', 2, N'331')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (76, N'Казакова Екатерина Данииловна', 2, N'331')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (77, N'Зорин Богдан Михайлович', 2, N'331')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (78, N'Волков Александр Даниилович', 2, N'341')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (79, N'Шилова Аделина Тимуровна', 2, N'341')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (80, N'Мальцев Тимур Николаевич', 2, N'341')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (81, N'Рябова Анна Данииловна', 2, N'341')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (82, N'Рожкова Вера Данииловна', 2, N'341')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (83, N'Демидова Валерия Даниэльевна', 1, N'211')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (84, N'Ефимов Александр Макарович', 1, N'211')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (85, N'Зверев Алексей Михайлович', 1, N'211')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (86, N'Уткина Екатерина Демьяновна', 1, N'211')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (87, N'Попова Анна Алексеевна', 1, N'211')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (88, N'Лазарева Милана Ильинична', 1, N'221')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (89, N'Антонова Полина Данииловна', 1, N'221')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (90, N'Самойлов Николай Александрович', 1, N'221')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (91, N'Ермолаева Виктория Семёновна', 1, N'221')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (92, N'Мартынова Анастасия Александровна', 1, N'221')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (93, N'Коровина Александра Ильинична', 1, N'231')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (94, N'Белоусова Мария Алексеевна', 1, N'231')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (95, N'Добрынин Гордей Андреевич', 1, N'231')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (96, N'Овчинников Егор Ильич', 1, N'231')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (97, N'Егоров Сергей Артёмович', 1, N'231')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (98, N'Сазонов Владислав Ильич', 1, N'241')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (99, N'Старостина Мария Глебовна', 1, N'241')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (101, N'Завьялов Фёдор Даниилович', 1, N'241')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (102, N'Данилов Максим Вячеславович', 1, N'241')
INSERT [dbo].[Student] ([ID_student], [FIO], [Specialization_ID], [Groups]) VALUES (103, N'Полякова Эмилия Ильинична', 1, N'241')
GO
SET IDENTITY_INSERT [dbo].[Student] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([ID], [Login], [Password], [Role_ID]) VALUES (1, N'123', N'123', 1)
INSERT [dbo].[User] ([ID], [Login], [Password], [Role_ID]) VALUES (2, N'000', N'000', 1)
INSERT [dbo].[User] ([ID], [Login], [Password], [Role_ID]) VALUES (3, N'444', N'444', 1)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Specialization] FOREIGN KEY([Specialization_ID])
REFERENCES [dbo].[Specialization] ([ID_Specialization])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Specialization]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([Role_ID])
REFERENCES [dbo].[Role] ([ID_Role])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
