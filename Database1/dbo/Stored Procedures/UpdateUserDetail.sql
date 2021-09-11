

Create PROCEDURE [dbo].[UpdateUserDetail] (
                                          @DUserid  varchar(50),
                                          @email       NVARCHAR(50),
                                          @PhoneNo          Int,
										   @Address         NVARCHAR(50),
										  @Status varchar(1)
										  
										  )
AS
  BEGIN

            Update UserDetail SET Email=@email,  PhoneNo=@PhoneNo,  Address=@Address,  Status=@Status where UserId=@DUserid
						  
 

        END