alter PROCEDURE plants_user (@plant_id int , @user_id int)

AS

BEGIN
	BEGIN TRANSACTION
	declare @ac INT;
	insert into dbo.user_plants values (@plant_id , @user_id);
	
	select @ac=@@ROWCOUNT;
	select @ac

	if @ac >= 1
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

exec plants_user 1 , 1

