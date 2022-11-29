-- Detta dokument är fyllt med viss slumpmässig data för det triviala
-- delarna av skolans databassystem för att möjliggöra vissa tester

-- student
-- parent
-- instructor
-- group_lesson
-- rent_instrument

INSERT INTO student (frist_name,last_name,home_address,person_number,age,sibling_id,phone_number,email_address,student_id) VALUES
('Thomas', 'Gustafsson','Fjalkinge Nastvattnet 74','200210074567','20','0','044-9659966','icie22@hotmail.com','0'),
('Adam', 'Lilienberg','Viken Lantmannagatan 77','199309276134','29','1','042-6827673','brian.andersson@gmail.com','1'),
('Viktor', 'Björken','Ostersund Stallstigen 41','200001024961','22','2','063-6897354','guido_andersson@hotmail.com','2');


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
