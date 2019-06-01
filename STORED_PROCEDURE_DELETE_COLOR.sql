CREATE OR REPLACE FUNCTION delete_color(color_id_p INTEGER) RETURNS void AS $$
    BEGIN
      	UPDATE SUITCASE
		SET color_id = 1
		WHERE(color_id=color_id_p);

		DELETE FROM COLOR 
		WHERE(color_id=color_id_p);
    END;
$$ LANGUAGE plpgsql
