
alter PROCEDURE reg_user (@first_name varchar(50) , @last_name varchar(50) , @email varchar(50) , @phone varchar(50) , @pic image , @us_name varchar(50) , @pass varchar(50))

AS

BEGIN
	BEGIN TRANSACTION
	
	insert into dbo.user_data values (@first_name , @last_name , @email , @phone , @pic , @us_name , @pass);
	declare @ac INT;

	select @ac=@@ROWCOUNT;
	--print @ac
	if @ac > 0
	begin
	
		print 'commit';
		COMMIT;
	
	end

	else
	begin
		print 'rollbacks';
		Rollback;
	end

END

GO

exec reg_user 'moaz' , 'wahed' , 'mwkmezo@gmail.com' , '01202814456' , null , 'mezo_wahed' , 'asd123456'


