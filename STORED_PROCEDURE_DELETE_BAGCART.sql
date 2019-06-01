CREATE OR REPLACE FUNCTION delete_bagcart(bagcart_id_p INTEGER) 
RETURNS void AS $$
    
BEGIN
      	
	UPDATE BAGCART_TO_FLIGHT
	
	SET bagcart_id = 1
	
	WHERE(bagcart_id = bagcart_id_p);

	

	DELETE FROM BAGCART
	
	WHERE(bagcart_id = bagcart_id_p);
		
	

END;
$$ LANGUAGE plpgsql
