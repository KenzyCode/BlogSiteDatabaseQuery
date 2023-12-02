USE [BlogSiteDb]
GO
/****** Object:  Table [dbo].[tbl_Comment]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Comment](
	[Commentid] [nvarchar](20) NOT NULL,
	[CommentDescription] [nvarchar](max) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Commentid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Post]   ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Post](
	[Postid] [nvarchar](20) NOT NULL,
	[Heading] [nvarchar](max) NULL,
	[PageTitle] [nvarchar](max) NULL,
	[ShortDescription] [nvarchar](max) NULL,
	[FeaturedImageUrl] [nvarchar](max) NULL,
	[UrlHandle] [nvarchar](max) NULL,
	[PublishedDate] [smalldatetime] NULL,
	[Author] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,	
 CONSTRAINT [PK_tbl_Post] PRIMARY KEY CLUSTERED 
(
	[Postid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
Go
/****** Object:  Table [dbo].[tbl_Postimage]   ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Postimage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Postcode] [nvarchar](50) NOT NULL,
	[ProfilePicture] [image] NULL,
 CONSTRAINT [PK_tbl_Postimage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object: Table [dbo].[tbl_Refreshtoken] ******/
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Refreshtoken](
[UserId] [nvarchar](50) NOT NULL,
[TokenId] [nvarchar](50) NULL,
[RefreshToken] [nvarchar](max) NULL,
CONSTRAINT [PK_tbl_Refreshtoken] PRIMARY KEY CLUSTERED 
(
[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY] 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Role]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Role](
	[Roleid] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_role] PRIMARY KEY CLUSTERED 
(
	[Roleid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_user]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_user](
	[userid] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,	
	[Role] [varchar](50) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_tbl_user] PRIMARY KEY CLUSTERED 
(
	[userid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


