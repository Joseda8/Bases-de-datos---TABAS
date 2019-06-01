CREATE OR REPLACE FUNCTION delete_flight(flight_id_p INTEGER) 
RETURNS void AS $$
    
BEGIN
      			 
	

	DELETE FROM BAG_TO_SECTION
	
	WHERE(flight_id=flight_id_p);
		
	

	DELETE FROM BAGCART_TO_FLIGHT 
	WHERE(flight_id=flight_id_p);
   

	DELETE FROM FLIGHT
	WHERE(flight_id=flight_id_p);

END;
$$ LANGUAGE plpgsql
