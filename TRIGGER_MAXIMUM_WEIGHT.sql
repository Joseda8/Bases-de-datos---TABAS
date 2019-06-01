CREATE OR REPLACE FUNCTION trigger_maximum_weight_aux()
RETURNS trigger AS
$BODY$
BEGIN
	IF(NEW.weight>25.0) THEN
		INSERT INTO SUITCASE_CHECK(suitcase_id, user_id, status, comment) 
		VALUES (NEW.suitcase_id, 0, 'WARNING', 'Extra charge for over weight');
	END IF; 
   RETURN NEW;
END;
$BODY$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS MAXIMUM_WEIGHT
ON SUITCASE;

CREATE TRIGGER MAXIMUM_WEIGHT
AFTER INSERT ON SUITCASE
FOR EACH ROW
EXECUTE PROCEDURE trigger_maximum_weight_aux()