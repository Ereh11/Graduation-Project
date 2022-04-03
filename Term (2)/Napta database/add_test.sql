alter PROCEDURE add_test (@user_id int , @plant_id int , @disease_id int , @treatment_id int , @test_img image , @creat_date date)

AS

BEGIN
	BEGIN TRANSACTION
	declare @ac INT;
	insert into dbo.test values (@user_id , @plant_id , @disease_id , @treatment_id , @test_img , @creat_date);
	
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


declare @dd date ; select @dd=cast(GETDATE() as date);
exec add_test 1,1,1,1,null,@dd

