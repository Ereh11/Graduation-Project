
create PROCEDURE plants (@name varchar(50))

AS

BEGIN
	BEGIN TRANSACTION
	
	insert into dbo.plant values (@name);
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

exec plants 'tomatoes'


