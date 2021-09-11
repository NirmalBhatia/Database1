CREATE PROCEDURE [dbo].[GetUserDetail]
@USerRole  varchar(50),
@USerID varchar(50)=''
 
AS
     
BEGIN
 if(@USerRole='Admin')
 BEGIN
   Select * From UserDetail  
   END
   else if(@USerRole='Supervisor')
 BEGIN
   Select * From UserDetail Where Role in('Agent','Supervisor')
   END
   else if(@USerRole='Agent')
 BEGIN
   Select * From UserDetail Where Role = @USerRole and UserId=@USerID
   END
     

END