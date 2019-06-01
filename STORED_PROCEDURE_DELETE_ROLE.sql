CREATE PROCEDURE delete_role @role_id INT
AS
BEGIN
	UPDATE USER_ROLE
	SET role_id = 1
	WHERE(role_id=@role_id);

	DELETE FROM ROLE
	WHERE(role_id=@role_id);
END
GO

/*
EXEC delete_role @role_id = 3

DROP PROCEDURE delete_role
*/