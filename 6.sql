SELECT * FROM login_details;
START TRANSACTION;
INSERT INTO login_details 
VALUES
('U001' ,'Admin1@123'),
('U002', 'Admin2@123');
ROLLBACK;
SELECT * FROM login_details;
