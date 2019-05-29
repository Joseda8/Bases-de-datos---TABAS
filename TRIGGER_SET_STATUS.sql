CREATE OR REPLACE FUNCTION trigger_set_status_aux()
  RETURNS trigger AS
$BODY$
BEGIN
   UPDATE SUITCASE_CHECK
		SET comment = 'NO ISSUES'
		WHERE (status='Accepted');
   RETURN NEW;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER SET_STATUS
AFTER INSERT ON SUITCASE_CHECK
FOR EACH ROW
EXECUTE PROCEDURE trigger_set_status_aux()



	

	