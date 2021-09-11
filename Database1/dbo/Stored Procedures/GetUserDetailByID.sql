CREATE PROCEDURE [dbo].[GetUserDetailByID]
@UserDetailID varchar(50)
 
AS
     
BEGIN
 
   Select * From UserDetail Where UserId = @UserDetailID 
     

END