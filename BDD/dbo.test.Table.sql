/****** Object:  Table [dbo].[test]    Script Date: 18/7/2017 11:44:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[test](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[aa] [nchar](10) NULL,
 CONSTRAINT [PK_test] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
