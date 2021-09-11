

CREATE PROCEDURE [dbo].[SaveUserDetail] (
                                          @first_name    VARCHAR(50),
                                          @last_name     VARCHAR(50),
                                          @email       NVARCHAR(50),
                                          @PhoneNo          Int,
										   @Address         NVARCHAR(50),
                                          @Role varchar(50),
										  @Password varchar(50),
										  @Status varchar(1)
										  
										  )
AS
  BEGIN

		CREATE TABLE #TempTable1(
ID varchar(100) )


insert into #TempTable1 select (concat('U','W',ISNULL(MAX(cast(SUBSTRING(UserId,CHARINDEX('W',UserId)+1,len(UserId))as int)),1000)+1) )from USerDetail


            INSERT INTO UserDetail
                        (UserId,
						FirstName,
                         LastName,
                         Email,
                         PhoneNo,
                         Address,
						 Role,
						 Password,
						 Status
						 )
            VALUES     ((select ID from #TempTable1), @first_name   , @last_name  ,@email ,@PhoneNo  ,@Address , @Role,@Password,@Status)

		select UserId from UserDetail where UserId=(select ID from #TempTable1)
			

DRop TAble #TempTable1

        END