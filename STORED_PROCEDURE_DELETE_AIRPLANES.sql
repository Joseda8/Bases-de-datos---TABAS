CREATE OR REPLACE FUNCTION delete_airplane(plane_id_p INTEGER) 
RETURNS void AS $$
    BEGIN
      	UPDATE FLIGHT
	SET plane_id = 1
	WHERE(plane_id=plane_id_p);

	UPDATE BAG_TO_SECTION
	SET section_id = 0
	WHERE(flight_id IN 
	  (SELECT flight_id FROM FLIGHT
	  WHERE (plane_id = plane_id_p))
		 );
			 
	DELETE FROM AIRPLANE_SECTION 
	WHERE(plane_id=plane_id_p);
		
	DELETE FROM AIRPLANE
	WHERE(plane_id=plane_id_p);
    END;
$$ LANGUAGE plpgsql
