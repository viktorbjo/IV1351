
CREATE TABLE student (
 id SERIAL NOT NULL,
 fisrt_name VARCHAR(500) NOT NULL,
 last_name VARCHAR(500),
 home_address VARCHAR(500),
 person_number VARCHAR(500) NOT NULL UNIQUE,
 age VARCHAR(500),
 sibling_id VARCHAR(500) NOT NULL UNIQUE
);

ALTER TABLE student ADD CONSTRAINT PK_student PRIMARY KEY (id);


CREATE TABLE instructor (
 id SERIAL NOT NULL,
 fisrt_name VARCHAR(500) NOT NULL,
 last_name VARCHAR(500) NOT NULL,
 age VARCHAR(500),
 home_address VARCHAR(500),
 salary_per_hour VARCHAR(500) NOT NULL,
 person_number VARCHAR(500) NOT NULL UNIQUE,
 instrument_type VARCHAR(500) NOT NULL
);

ALTER TABLE instructor ADD CONSTRAINT PK_instructor PRIMARY KEY (id);


CREATE TABLE school (
 id SERIAL NOT NULL,
 avalible_seats VARCHAR(500) NOT NULL,
 address_of_school VARCHAR(500),
 student_id SERIAL NOT NULL,
 instructor_id SERIAL NOT NULL
);

ALTER TABLE school ADD CONSTRAINT PK_school PRIMARY KEY (id);


CREATE TABLE group_lesson (
 id SERIAL NOT NULL,
 min_student_req VARCHAR(500) NOT NULL,
 max_student_req VARCHAR(500) NOT NULL,
 scheduled_time_slot TIMESTAMP(50) NOT NULL,
 venue VARCHAR(500) NOT NULL,
 instructor_id SERIAL NOT NULL
);

ALTER TABLE group_lesson ADD CONSTRAINT PK_group_lesson PRIMARY KEY (id);


CREATE TABLE phone (
 id SERIAL NOT NULL,
 phone_number VARCHAR(500) NOT NULL UNIQUE
);

ALTER TABLE phone ADD CONSTRAINT PK_phone PRIMARY KEY (id);


CREATE TABLE student_phone (
 student_id SERIAL NOT NULL,
 phone_id SERIAL NOT NULL
);

ALTER TABLE student_phone ADD CONSTRAINT PK_student_phone PRIMARY KEY (student_id,phone_id);


CREATE TABLE email (
 id SERIAL NOT NULL,
 email_address VARCHAR(500) NOT NULL UNIQUE
);

ALTER TABLE email ADD CONSTRAINT PK_email PRIMARY KEY (id);


CREATE TABLE student_email (
 student_id SERIAL NOT NULL,
 email_id SERIAL NOT NULL
);

ALTER TABLE student_email ADD CONSTRAINT PK_student_email PRIMARY KEY (student_id,email_id);


CREATE TABLE parent (
 student_id SERIAL NOT NULL,
 fisrt_name VARCHAR(500) NOT NULL,
 last_name VARCHAR(500),
 age VARCHAR(500),
 home_address VARCHAR(500),
 person_number VARCHAR(500) NOT NULL UNIQUE
);

ALTER TABLE parent ADD CONSTRAINT PK_parent PRIMARY KEY (student_id);


CREATE TABLE rent_instrument (
 student_id SERIAL NOT NULL,
 price_monthly VARCHAR(500) NOT NULL,
 time_leased VARCHAR(500) NOT NULL,
 quantity_of_instrument VARCHAR(500) NOT NULL,
 brand_type VARCHAR(500) NOT NULL,
 instrument_type VARCHAR(500) NOT NULL
);

ALTER TABLE rent_instrument ADD CONSTRAINT PK_rent_instrument PRIMARY KEY (student_id);


CREATE TABLE application (
 student_id SERIAL NOT NULL,
 genre_of_music VARCHAR(500),
 skill_level VARCHAR(50) NOT NULL
);

ALTER TABLE application ADD CONSTRAINT PK_application PRIMARY KEY (student_id);


CREATE TABLE discount (
 student_id SERIAL NOT NULL,
 discount_rate VARCHAR(500) NOT NULL
);

ALTER TABLE discount ADD CONSTRAINT PK_discount PRIMARY KEY (student_id);


CREATE TABLE ensemble (
 group_lesson_id SERIAL NOT NULL,
 scheduled_time_slot TIMESTAMP (50) NOT NULL,
 target_genre VARCHAR(500) NOT NULL,
 min_student_req VARCHAR(500) NOT NULL,
 max_student_req VARCHAR(500) NOT NULL
);

ALTER TABLE ensemble ADD CONSTRAINT PK_ensemble PRIMARY KEY (group_lesson_id);


CREATE TABLE booking (
 school_id SERIAL NOT NULL,
 lesson_type VARCHAR(500),
 booking_time TIMESTAMP (50)
);

ALTER TABLE booking ADD CONSTRAINT PK_booking PRIMARY KEY (school_id);


CREATE TABLE individual_lesson (
 instructor_id SERIAL NOT NULL,
 available_time TIMESTAMP (50) NOT NULL
);

ALTER TABLE individual_lesson ADD CONSTRAINT PK_individual_lesson PRIMARY KEY (instructor_id);


CREATE TABLE schedule (
 instructor_id SERIAL NOT NULL,
 school_id SERIAL NOT NULL,
 available_time TIMESTAMP (50) NOT NULL
);

ALTER TABLE schedule ADD CONSTRAINT PK_schedule PRIMARY KEY (instructor_id,school_id);


CREATE TABLE monthly_salary (
 instructor_id SERIAL NOT NULL,
 date_of_payment TIMESTAMP (50),
 amount_to_pay VARCHAR(500)
);

ALTER TABLE monthly_salary ADD CONSTRAINT PK_monthly_salary PRIMARY KEY (instructor_id);


CREATE TABLE monthly_fee (
 student_id SERIAL NOT NULL,
 total_sum VARCHAR (500),
 group_advanced_price VARCHAR (500) NOT NULL,
 individual_advanced_price VARCHAR (500) NOT NULL,
 group_intermediate_price VARCHAR (500) NOT NULL,
 individual_intermediate_price VARCHAR (500) NOT NULL,
 group_beginner_price VARCHAR (500) NOT NULL,
 individual_beginner_price VARCHAR (500) NOT NULL
);

ALTER TABLE monthly_fee ADD CONSTRAINT PK_monthly_fee PRIMARY KEY (student_id);


CREATE TABLE number_of_lessons (
 instructor_id SERIAL NOT NULL,
 student_id SERIAL NOT NULL,
 count_advanced_group_lessons VARCHAR (500),
 count_advanced_individual_lessons VARCHAR (500),
 count_intermediate_group_lessons VARCHAR (500),
 count_intermediate_individual_lessons VARCHAR (500),
 count_beginner_group_lessons VARCHAR (500),
 count_beginner_individual_lessons VARCHAR (500)
);

ALTER TABLE number_of_lessons ADD CONSTRAINT PK_number_of_lessons PRIMARY KEY (instructor_id,student_id);


ALTER TABLE school ADD CONSTRAINT FK_school_0 FOREIGN KEY (student_id) REFERENCES student (student_id) ON DELETE CASCADE;
ALTER TABLE school ADD CONSTRAINT FK_school_1 FOREIGN KEY (instructor_id) REFERENCES instructor (instructor_id) ON DELETE CASCADE;

ALTER TABLE group_lesson ADD CONSTRAINT FK_group_lesson_0 FOREIGN KEY (instructor_id) REFERENCES instructor (instructor_id) ON DELETE CASCADE;

ALTER TABLE student_phone ADD CONSTRAINT FK_student_phone_0 FOREIGN KEY (student_id) REFERENCES student (student_id) ON DELETE CASCADE;
ALTER TABLE student_phone ADD CONSTRAINT FK_student_phone_1 FOREIGN KEY (phone_id) REFERENCES phone (phone_id) ON DELETE CASCADE;

ALTER TABLE student_email ADD CONSTRAINT FK_student_email_0 FOREIGN KEY (student_id) REFERENCES student (student_id) ON DELETE CASCADE;
ALTER TABLE student_email ADD CONSTRAINT FK_student_email_1 FOREIGN KEY (email_id) REFERENCES email (email_id) ON DELETE CASCADE;

ALTER TABLE parent ADD CONSTRAINT FK_parent_0 FOREIGN KEY (student_id) REFERENCES student (student_id) ON DELETE CASCADE;

ALTER TABLE rent_instrument ADD CONSTRAINT FK_rent_instrument_0 FOREIGN KEY (student_id) REFERENCES student (student_id) ON DELETE CASCADE;

ALTER TABLE application ADD CONSTRAINT FK_application_0 FOREIGN KEY (student_id) REFERENCES student (student_id) ON DELETE CASCADE;

ALTER TABLE discount ADD CONSTRAINT FK_discount_0 FOREIGN KEY (student_id) REFERENCES student (student_id) ON DELETE CASCADE;

ALTER TABLE ensemble ADD CONSTRAINT FK_ensemble_0 FOREIGN KEY (group_lesson_id) REFERENCES group_lesson (group_lesson_id) ON DELETE CASCADE;

ALTER TABLE booking ADD CONSTRAINT FK_booking_0 FOREIGN KEY (student_id) REFERENCES student (student_id) ON DELETE CASCADE;

ALTER TABLE individual_lesson ADD CONSTRAINT FK_individual_lesson_0 FOREIGN KEY (instructor_id) REFERENCES instructor (instructor_id) ON DELETE CASCADE;

ALTER TABLE schedule ADD CONSTRAINT FK_schedule_0 FOREIGN KEY (instructor_id) REFERENCES instructor (instructor_id) ON DELETE CASCADE;
ALTER TABLE schedule ADD CONSTRAINT FK_schedule_1 FOREIGN KEY (school_id) REFERENCES school (school_id) ON DELETE CASCADE;

ALTER TABLE monthly_salary ADD CONSTRAINT FK_monthly_salary_0 FOREIGN KEY (instructor_id) REFERENCES instructor (instructor_id) ON DELETE CASCADE;

ALTER TABLE monthly_fee ADD CONSTRAINT FK_monthly_fee_0 FOREIGN KEY (student_id) REFERENCES student (student_id) ON DELETE CASCADE;

ALTER TABLE number_of_lessons ADD CONSTRAINT FK_number_of_lessons_0 FOREIGN KEY (student_id) REFERENCES student (student_id) ON DELETE SET NULL;
ALTER TABLE number_of_lessons ADD CONSTRAINT FK_number_of_lessons_1 FOREIGN KEY (instructor_id) REFERENCES instructor (instructor_id) ON DELETE SET NULL;
