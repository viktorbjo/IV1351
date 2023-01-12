  -- Detta Insert programm har modifierats från TASK2 för att tillfreställa det krav som finns i TASK3 
  -- och kommer därmed skilja sig nogurlunda från modellen i astah

INSERT INTO instructor (id, first_name, last_name, age, home_address, salary_per_hour, person_number, instrument_type) VALUES
  (1, 'John', 'Doe', 40, '1 Main St', 50.00, '123-456-7890', 'Guitar'),
  (2, 'Jane', 'Doe', 35, '2 Main St', 45.00, '123-456-7891', 'Piano'),
  (3, 'John', 'Smith', 38, '3 Main St', 52.50, '123-456-7892', 'Drums'),
  (4, 'Jane', 'Smith', 32, '4 Main St', 47.50, '123-456-7893', 'Bass'),
  (5, 'John', 'Brown', 36, '5 Main St', 49.50, '123-456-7894', 'Violin');

INSERT INTO monthly_salary (instructor_id, date_of_payment, amount_to_pay) VALUES
  (1, '2022-01-01', 150.00),
  (2, '2022-01-01', 170.00),
  (3, '2022-01-01', 130.00),
  (4, '2022-01-01', 190.00),
  (5, '2022-01-01', 120.00);

INSERT INTO student (id, first_name, last_name, home_address, person_number, age) VALUES
  (1, 'John', 'Smith', '123 Main St.', '1234567890', 18),
  (2, 'Jane', 'Doe', '456 Park Ave.', '0987654321', 19),
  (3, 'Kate', 'Jones', '789 Elm St.', '1234987654', 20),
  (4, 'Peter', 'Parker', '321 Oak St.', '5678901234', 21),
  (5, 'Sara', 'Smith', '654 Maple Ave.', '9876543210', 22),
  (6, 'Mia', 'Hilton', '454 5th Ave.', '0606074566', 16);

INSERT INTO email (id, email_address) VALUES
  (1, 'john.doe@example.com'),
  (2, 'jane.doe@example.com'),
  (3, 'jim.smith@example.com');

INSERT INTO student_email (student_id, email_id) VALUES
  (1, 1),
  (1, 2),
  (2, 2),
  (2, 3),
  (3, 1);

INSERT INTO phone (id, phone_number) VALUES
  (101, '555-555-5555');

INSERT INTO student_phone (student_id, phone_id) VALUES
  (1, 101);

INSERT INTO application (student_id, genre_of_music, skill_level) VALUES
  (1, 'Jazz', 'Advanced'),
  (2, 'Rock', 'Intermediate'),
  (3, 'Classical', 'Beginner'),
  (4, 'Pop', 'Intermediate'),
  (5, 'Folk', 'Advanced');

INSERT INTO ensemble (id, scheduled_time_slot, target_genre, min_student_req, max_student_req, instructor_id, school_id, nr_of_students) VALUES
  (1, '2022-12-16 10:00:00', 'Classical', 5, 10, 1, 1, 7),
  (2, '2022-12-18 11:00:00', 'Jazz', 3, 6, 2, 1, 6),
  (3, '2022-12-20 12:00:00', 'Rock', 4, 8, 3, 2, 5),
  (4, '2023-02-15 13:00:00', 'Blues', 2, 4, 4, 2, 4),
  (5, '2023-02-16 14:00:00', 'Pop', 6, 12, 5, 3, 11);

INSERT INTO group_lesson (id, min_student_req, max_student_req, scheduled_time_slot, venue, instructor_id, skill_level, student_id) VALUES
  (1, 5, 15, '2022-12-08 13:00:00', 'Room A', 1, 'Beginner', 1),
  (2, 5, 15, '2022-12-09 13:00:00', 'Room B', 2, 'Intermediate', 2),
  (3, 5, 15, '2022-12-10 13:00:00', 'Room C', 3, 'Advanced', 3),
  (4, 5, 15, '2022-12-11 13:00:00', 'Room D', 4, 'Beginner', 4),
  (5, 5, 15, '2022-12-12 13:00:00', 'Room E', 5, 'Intermediate', 5);

INSERT INTO individual_lesson (id, available_time, instructor_id, skill_level, student_id) VALUES
  (1, '2022-12-08 10:00:00', 1, 'Beginner', 1),
  (2, '2022-12-08 11:00:00', 2, 'Intermediate', 2),
  (3, '2022-12-08 12:00:00', 3, 'Advanced', 3),
  (4, '2022-12-08 13:00:00', 4, 'Beginner', 4),
  (5, '2022-12-08 14:00:00', 5, 'Intermediate', 5);

INSERT INTO parent (student_id, first_name, last_name, age, home_address, person_number) VALUES
  (1, 'John', 'Doe', 32, '123 Main St', '123-456-7890'),
  (2, 'Jane', 'Doe', 28, '456 Park Ave', '098-765-4321'),
  (3, 'Chris', 'Smith', 45, '789 Elm St', '234-567-8901'),
  (4, 'Samantha', 'Johnson', 38, '159 Maple St', '345-678-9012'),
  (5, 'Jason', 'Williams', 54, '753 Oak St', '456-789-0123');

INSERT INTO rent_instrument (student_id, price_monthly, start_leasing, quantity_of_instrument, brand_type, instrument_type, return_leased_instrument, brand_price, instrument_type_price) VALUES
  (1, '100', '2022-12-08 10:00:00', '1', 'Fender', 'Guitar', '2022-12-09 10:00:00', '50', '25'),
  (2, '150', '2022-12-08 11:00:00', '2', 'Yamaha', 'Piano', '2022-12-09 11:00:00', '75', '50'),
  (3, '200', '2022-12-08 12:00:00', '3', 'Gibson', 'Drums', '2022-12-09 12:00:00', '100', '75'),
  (4, '250', '2022-12-08 13:00:00', '4', 'Roland', 'Keyboard', '2022-12-09 13:00:00', '125', '100'),
  (5, '300', '2022-12-08 14:00:00', '5', 'Martin', 'Ukulele', '2022-12-09 14:00:00', '150', '125');

INSERT INTO school (id, avalible_seats, address_of_school, student_id, instructor_id) VALUES
  (1, '100', '123 Main St.', 1, 1),
  (2, '50', '456 Maple Ave.', 2, 2),
  (3, '75', '789 Oak St.', 3, 3),
  (4, '25', '321 Cedar Blvd.', 4, 4),
  (5, '90', '654 Pine Rd.', 5, 5);

INSERT INTO siblings (student_id, student_siblings_id) VALUES
  (1,2),
  (2,1),
  (1,3),
  (3,1),
  (2,3),
  (3,2),
  (4,5),
  (5,4);


INSERT INTO booking (school_id, lesson_type, booking_time) VALUES
  (1, 'group', '2022-12-08 10:00:00'),
  (2, 'individual', '2022-12-09 14:00:00'),
  (3, 'group', '2022-12-10 16:00:00'),
  (4, 'individual', '2022-12-11 18:00:00'),
  (5, 'group', '2022-12-12 20:00:00');


INSERT INTO monthly_fee (student_id, discount, total_sum, group_advanced_price, individual_advanced_price, group_intermediate_price, individual_intermediate_price, group_beginner_price, individual_beginner_price) VALUES
  (1, 0.1, 100, 50, 60, 40, 45, 30, 35),
  (2, 0.1, 110, 55, 65, 45, 50, 35, 40),
  (3, 0.1, 120, 60, 70, 50, 55, 40, 45),
  (4, 0.1, 130, 65, 75, 55, 60, 45, 50),
  (5, 0.1, 140, 70, 80, 60, 65, 50, 55);

INSERT INTO number_of_lessons (instructor_id, student_id, count_advanced_group_lessons, count_advanced_individual_lessons, count_intermediate_group_lessons, count_intermediate_individual_lessons, count_beginner_group_lessons, count_beginner_individual_lessons) VALUES
  (1, 1, 10, 10, 5, 5, 3, 3),
  (2, 2, 8, 8, 4, 4, 2, 2),
  (3, 3, 6, 6, 3, 3, 1, 1),
  (4, 4, 4, 4, 2, 2, 0, 0),
  (5, 5, 2, 2, 1, 1, 0, 0);

INSERT INTO schedule (instructor_id, school_id, available_time) VALUES
  (1, 1, '2022-12-08 10:00:00'),
  (2, 1, '2022-12-09 10:00:00'),
  (3, 2, '2022-12-10 10:00:00'),
  (4, 2, '2022-12-11 10:00:00'),
  (5, 3, '2022-12-12 10:00:00');
