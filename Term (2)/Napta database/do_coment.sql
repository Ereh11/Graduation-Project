alter PROCEDURE do_coment (@user_id int , @post_id int , @post_con varchar(500) )

AS

BEGIN
	BEGIN TRANSACTION
	declare @ac INT;
	
	insert into dbo.comment values (@user_id , @post_id , @post_con);
	select @ac=@@ROWCOUNT;
	select @ac
	update post set comments = comments + 1 where post_id=@post_id;
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

exec do_coment 1,1,'aaaaaaaaaaaaaaaaaaash'

