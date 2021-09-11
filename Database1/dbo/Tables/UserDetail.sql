CREATE TABLE [dbo].[UserDetail] (
    [id]        INT           IDENTITY (1, 1) NOT NULL,
    [UserId]    VARCHAR (10)  NOT NULL,
    [FirstName] VARCHAR (50)  NULL,
    [LastName]  VARCHAR (50)  NULL,
    [Email]     NVARCHAR (50) NULL,
    [PhoneNo]   INT           NULL,
    [Address]   NVARCHAR (50) NULL,
    [Status]    VARCHAR (1)   NULL,
    [Role]      VARCHAR (50)  NULL,
    [Password]  NVARCHAR (50) NULL,
    CONSTRAINT [PK_UserDetail] PRIMARY KEY CLUSTERED ([UserId] ASC)
);

