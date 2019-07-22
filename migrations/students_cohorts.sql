CREATE TABLE students (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(30) NOT NULL,
  email VARCHAR (50),
  phone VARCHAR (10),
  github VARCHAR (50),
  start_date DATE,
  end_date DATE,
  cohort_id INTEGER REFERENCES cohorts(id) ON DELETE CASCADE
);

CREATE TABLE cohorts (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(30) NOT NULL,
  start_date DATE,
  end_date DATE
);

