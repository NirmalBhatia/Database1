CREATE PROCEDURE [dbo].[AuthenticateUser]
@UserName varchar(50),
@Pass varchar(50),
@Roles varchar(50) OUTPUT,
@Userid varchar(50) OUTPUT
AS
    SET NOCOUNT ON
BEGIN
 
    If Not Exists (Select   Role From UserDetail Where Email = @UserName) Set @Roles = 'Incorrect UserName' 
    Else If Not Exists (Select   Role From UserDetail Where Password = @Pass) Set @Roles = 'Incorrect Password'
    Else Set @Roles = (select   Role from UserDetail Where Email = @UserName and Password = @Pass)
	
	if(@Roles='Agent')
	begin

	Set @Userid = (select   UserId from UserDetail Where Email = @UserName and Password = @Pass)
	end

    Select @Roles ,@Userid

END