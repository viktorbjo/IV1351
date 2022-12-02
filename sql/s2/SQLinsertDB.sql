-- Detta dokument är fyllt med viss slumpmässig data för det triviala
-- delarna av skolans databassystem för att möjliggöra vissa tester

--- student
-- parent
-- instructor
-- group_lesson
-- rent_instrument
-- email
-- monthly_salary
-- phone
-- student_email
-- student_phone
-- application
-- ensemble
-- individual_lesson
-- school
-- siblings
-- booking
-- discount
-- monthly_fee
-- number_of_lessons
-- schedule

INSERT INTO student (frist_name,last_name,home_address,person_number,age,sibling_id,student_id) VALUES
('Thomas', 'Gustafsson','Fjalkinge Nastvattnet 74','200210074567','20','0','0'),
('Adam', 'Lilienberg','Viken Lantmannagatan 77','199309276134','29','1','1'),
('Viktor', 'Björken','Ostersund Stallstigen 41','200001024961','22','2','2');


INSERT INTO parent (fisrt_name,last_name,age,home_address,person_number,student_id) VALUES
('Oscar', 'Gustafsson','50','Fjalkinge Nastvattnet 74','197211066567','0'),
('Simon', 'Lilienberg','55','Viken Lantmannagatan 77','196706276136','1'),
('Hugo', 'Björken','60','Ostersund Stallstigen 41','196202034461','2');


INSERT INTO instructor (frist_name,last_name,age,home_address,salary_per_hour,person_number,instrument_type,instructor_id) VALUES
('Elis', 'Gunnarsson','22','Forsvik  Framsteby Vena 32','225','200012074587','Piano,Guitar','0'),
('Oscar', 'Raftewold','20','Dala-jarna Nojesgatan 98','215','200205276154','Violin,Trumpet','1'),
('Erik', 'Lundsten','20','Vikbolandet Hagaskog 14','215','200201124931','Drums,Piano,Guitar','2');


INSERT INTO group_lesson (min_student_req,max_student_req,scheduled_time_slot,venue,instructor_id) VALUES
('2', '5','2022.11.28.10:00-11:00','ZOOM','0'),
('2', '5','2022.11.29.10:00-11:00','ZOOM','1'),
('2', '5','2022.11.30.10:00-11:00','ZOOM','2');

INSERT INTO rent_instrument (price_monthly,time_leased,quantity_of_instrument,brand_type,instrument_type,student_id) VALUES
('200', '6 months','1','Gibson','Guitar','0'),
('400', '8 months','2','Yamaha','Guitar,Piano','1'),
('600', '5 months','3','Yamaha','Trumpet,Drums,Guitar','2');

INSERT INTO email (email_id,email_address) VALUES
('0','johnwick@gmail.com'),
('1','shrekgreenmachine@live.se'),
('2', 'milesdavis112@icloud.com');

INSERT INTO monthly_salary (instructor_id,date_of_payment,amount_to_pay) VALUES
('0','2022.12.25 00:00:00','37000'),
('1','2022.12.25 00:00:00', '32000'),
('2','2022.12.25 00:00:00', '35000');

INSERT INTO phone (phone_id,phone_number) VALUES
('0','0704355324'),
('1','0708549322'),
('2','0709679933');

INSERT INTO application (student_id,genre_of_music,skill_level) VALUES
('0','jazz', 'beginner'),
('1', 'blues', 'intermediate'),
('2', 'classic', 'advnaced');

INSERT INTO ensemble (ensemble_id,scheduled_time_slot,target_genre,min_student_req,max_student_req,instructor_id,school_id) VALUES
('0','2022.12.12 11:00:00', 'jazz', '2','5','2','0'),
('1','2022.12.13 11:00:00', 'blues', '2','5','0','0'),
('2','2022.12.12 11:00:00', 'classic','2' ,'5','1','0');