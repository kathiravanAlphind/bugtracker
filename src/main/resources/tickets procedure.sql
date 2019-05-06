DROP PROCEDURE IF EXISTS sp_iu_tickets;
DELIMITER //

CREATE PROCEDURE sp_iu_tickets
(p_id INT,
p_submitted_by INT,
p_project_id INT,
p_number VARCHAR(255),
p_title VARCHAR(255),
p_category VARCHAR(255),
p_description VARCHAR(255),
p_status VARCHAR(255))

BEGIN	
DECLARE p_unique_number VARCHAR(255);
DECLARE last_upd_id,p_new_number INT;

IF NOT EXISTS(SELECT 1 FROM tickets WHERE id = p_id) THEN
INSERT INTO tickets
(submitted_by,project_id ,number,title,category,description,status)

SELECT p_submitted_by,
p_project_id,
p_number,
p_title,
p_category,
p_description,
p_status;

SET last_upd_id = last_insert_id();

SET p_unique_number = (SELECT ticket_num FROM ticket_seq where project_id = p_project_id);-- active = 1);
SET p_new_number = p_unique_number + 1;
SET p_unique_number = (SELECT CONCAT((select pname from projects where id = p_project_id) ,p_unique_number));

UPDATE tickets SET number = p_unique_number WHERE id = last_upd_id;
UPDATE ticket_seq SET ticket_num = p_new_number WHERE project_id = p_project_id;


ELSE
SET SQL_SAFE_UPDATES = 0;
UPDATE tickets 
SET id = p_id ,submitted_by = p_submitted_by,project_id = p_project_id, title = p_title, number = p_number,
category = p_category,description= p_description,status = p_status
WHERE id = p_id;
SET SQL_SAFE_UPDATES = 1;



END IF;
END	//

DELIMITER ;
