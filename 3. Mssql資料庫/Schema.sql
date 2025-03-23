USE [maintain]
GO
/****** Object:  User [maintain]    Script Date: 2025/2/21 ¤U¤È 11:06:59 ******/
CREATE USER [maintain] FOR LOGIN [maintain] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [maintain]
GO
ALTER ROLE [db_datareader] ADD MEMBER [maintain]
GO
/****** Object:  Table [dbo].[computer]    Script Date: 2025/2/21 ¤U¤È 11:06:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[computer](
	[computer_name] [char](15) NOT NULL,
	[computer_ip] [char](15) NOT NULL,
	[computer_lastuser] [char](15) NOT NULL,
	[computer_lastdate] [char](10) NOT NULL,
	[computer_lasttime] [char](8) NOT NULL,
	[computer_lastupdate] [char](10) NOT NULL,
	[computer_lastsecure] [char](10) NOT NULL,
	[computer_compliant] [char](1) NOT NULL,
	[computer_appupdate] [char](1) NOT NULL,
	[computer_lastwu] [char](1) NOT NULL,
 CONSTRAINT [PK_computer] PRIMARY KEY CLUSTERED 
(
	[computer_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[wmsinfo]    Script Date: 2025/2/21 ¤U¤È 11:06:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wmsinfo](
	[computer_name] [char](15) NOT NULL,
	[computer_ip] [char](15) NOT NULL,
	[computer_user] [char](15) NOT NULL,
	[computer_date] [char](10) NOT NULL,
	[computer_time] [char](8) NOT NULL,
	[computer_daysoff] [char](1) NOT NULL,
	[computer_auth] [char](1) NULL,
 CONSTRAINT [PK_wmsinfo] PRIMARY KEY CLUSTERED 
(
	[computer_date] DESC,
	[computer_time] DESC,
	[computer_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[computer] ADD  CONSTRAINT [DF_computer_computer_info]  DEFAULT ('') FOR [computer_lastdate]
GO
ALTER TABLE [dbo].[computer] ADD  CONSTRAINT [DF_computer_computer_lasttime]  DEFAULT ('') FOR [computer_lasttime]
GO
ALTER TABLE [dbo].[computer] ADD  CONSTRAINT [DF_computer_computer_nic_index]  DEFAULT ('0000') FOR [computer_lastupdate]
GO
ALTER TABLE [dbo].[computer] ADD  CONSTRAINT [DF_computer_computer_type_1]  DEFAULT ('X') FOR [computer_lastsecure]
GO
ALTER TABLE [dbo].[computer] ADD  CONSTRAINT [DF_computer_computer_compliant]  DEFAULT ('N') FOR [computer_compliant]
GO
ALTER TABLE [dbo].[computer] ADD  CONSTRAINT [DF_computer_computer_appupdate]  DEFAULT ('Y') FOR [computer_appupdate]
GO
ALTER TABLE [dbo].[computer] ADD  CONSTRAINT [DF_computer_computer_lastwu]  DEFAULT ('Y') FOR [computer_lastwu]
GO
ALTER TABLE [dbo].[wmsinfo] ADD  CONSTRAINT [DF_wmsinfo_computer_daysoff]  DEFAULT ('N') FOR [computer_daysoff]
GO
ALTER TABLE [dbo].[wmsinfo] ADD  CONSTRAINT [DF_wmsinfo_computer_auth]  DEFAULT ('N') FOR [computer_auth]
GO
