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

) ENGINE=InnoDB;



CREATE TABLE Position (
reference_number VARCHAR(24),
position_applied VARCHAR(144),
applicant_id INT null,
FOREIGN KEY fk_personal_details(applicant_id)
   REFERENCES Personal_Details(applicant_id)
);



CREATE TABLE Current_Status(
applicant_id INT,
employed BOOLEAN not null,
current_position VARCHAR(144),
geographical_region VARCHAR(24), 
teach_through_irish BOOLEAN null,
registered_teacher BOOLEAN not null,
registration_number VARCHAR(24) null,
attachecd_documents BOOLEAN not null,	
subject_1 VARCHAR(144) null,
subject_2 VARCHAR(144) null,
subject_3 VARCHAR(144) null,
garda_vetted BOOLEAN not null
 
);

CREATE TABLE Qualifications();
CREATE TABLE Other_Qualifications();
CREATE TABLE Irish_Qualifications();
CREATE TABLE Teaching_Experience();
CREATE TABLE ICT_Experience();
CREATE TABLE Other_Relevent_Experience();


