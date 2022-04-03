
alter PROCEDURE post_user (@user_id int , @plant_id int , @creat_date date , @pic image , @likes int , @comm int , @cont varchar(500))

AS

BEGIN
	BEGIN TRANSACTION
	
	insert into dbo.post values (@user_id , @plant_id , @creat_date , @pic , @likes , @comm , @cont);
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


declare @dd date ; select @dd=cast(GETDATE() as date);
exec post_user 1 , 1 , @dd , null , 0 , 0 , 'hi Napta'

