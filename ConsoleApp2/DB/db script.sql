USE [MovieDB]
GO
/****** Object:  Table [dbo].[Parent]    Script Date: 4/15/2018 9:37:11 PM ******/
DROP TABLE [dbo].[Parent]
GO
/****** Object:  Table [dbo].[childTwo]    Script Date: 4/15/2018 9:37:11 PM ******/
DROP TABLE [dbo].[childTwo]
GO
/****** Object:  Table [dbo].[ChildOne]    Script Date: 4/15/2018 9:37:11 PM ******/
DROP TABLE [dbo].[ChildOne]
GO
/****** Object:  Table [dbo].[ChildOne]    Script Date: 4/15/2018 9:37:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChildOne](
	[ID] [int] NOT NULL,
	[childPropOne] [nvarchar](max) NULL,
 CONSTRAINT [PK__ChildOne__3214EC273B291EB8] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[childTwo]    Script Date: 4/15/2018 9:37:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[childTwo](
	[ID] [int] NOT NULL,
	[Cost] [int] NULL,
 CONSTRAINT [PK__childTwo__3214EC278001F3FA] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Parent]    Script Date: 4/15/2018 9:37:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parent](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[texting] [nvarchar](max) NULL,
	[comments] [nvarchar](max) NULL,
 CONSTRAINT [PK__Parent__3214EC273B42A84C] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
