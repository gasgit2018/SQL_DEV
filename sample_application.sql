CREATE TABLE Personal_Details (
applicant_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
pps_no VARCHAR(12) not null,
fname VARCHAR(36) not null,
lname VARCHAR(36) not null,
address_1 VARCHAR(144) not null,
address_2 VARCHAR(144) not null,
town VARCHAR(144) not null,
city VARCHAR(144) not null,
county VARCHAR(144) not null,
country VARCHAR(144) not null,
email VARCHAR(36) not null,
land_line INT null,
mobile INT not null

);

INSERT INTO Personal_Details(
pps_no,
fname,
lname,
address_1,
address_2,
town,
city,
county,
country,
email,
land_line,
mobile) VALUES ( '533333G','glen','gordon','the Quarry','Stoney Batter','smithfield','dublin','dublin','ireland','glen@gordon.ie',01123456,0897652222 );



CREATE TABLE Position (
reference_number VARCHAR(24),
position_applied VARCHAR(144),
applicant_id INT
);



INSERT INTO Position (reference_number, position_applied, applicant_id) VALUES ('001234', 'temp art teacher', last_insert_id());

START TRANSACTION;
INSERT INTO Personal_Details(
pps_no,
fname,
lname,
address_1,
address_2,
town,
city,
county,
country,
email,
land_line,
mobile) VALUES ( '5333444G','ben','gordon','the Quarry','Stoney Batter','smithfield','dublin','dublin','ireland','glen@gordon.ie',01123456,0897652222 );

INSERT INTO Position (reference_number, position_applied, applicant_id) VALUES ('001234', 'temp art teacher', last_insert_id());

COMMIT;


INSERT INTO Current_Status(applicant_id,employed, current_position, geographical_region, teach_through_irish, registered_teacher, registration_number) 
VALUES ( last_insert_id(), TRUE, 'Assitant Manager','galway',FALSE,TRUE,'12345'); 


CREATE TABLE Current_Status(
applicant_id INT,
employed BOOLEAN not null,
current_position VARCHAR(144),
geographical_region VARCHAR(24), 
teach_through_irish BOOLEAN null,
registered_teacher BOOLEAN not null,
registration_number VARCHAR(24) null
  
);



select fname, lname, position_applied , current_position , geographical_region , email from Personal_Details as pd inner join Position as p on pd.applicant_id = p.applicant_id inner join Current_Status as cs on p.applicant_id = cs.applicant_id;

select * from Personal_Details join Position on Personal_Details.applicant_id = Position.applicant_id;

CREATE TABLE temp AS
select Personal_Details.pps_no AS 'Temp_ID',
Personal_Details.fname, Personal_Details.lname FROM Personal_Details, Position
WHERE Personal_Details.applicant_id = Position.applicant_id = 2;


INSERT into temp (Temp_ID, fname,lname)  SELECT Personal_Details.pps_no, Personal_Details.fname, Personal_Details.lname FROM Personal_Details;


