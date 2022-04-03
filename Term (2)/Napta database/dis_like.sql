alter PROCEDURE dis_like (@user_id int , @post_id int)

AS

BEGIN
	BEGIN TRANSACTION
	declare @ac INT;
	delete from dbo.likes where user_id=@user_id and post_id=@post_id
	
	select @ac=@@ROWCOUNT;
	select @ac
	update post set likes = likes - 1 where post_id=@post_id;
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

exec dis_like 1,1

