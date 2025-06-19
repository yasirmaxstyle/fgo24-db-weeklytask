CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    email VARCHAR(100),
    password VARCHAR(100),
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    phone_number VARCHAR(15)
);

CREATE TABLE registration_request (
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users (id)
);

CREATE TABLE session (
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users (id)
);

CREATE TABLE movies (
    id SERIAL PRIMARY KEY,
    poster_path VARCHAR(255),
    backdrop_path VARCHAR(255),
    title VARCHAR(100),
    synopsis TEXT,
    duration INT,
    release_date DATE,
);

CREATE TABLE movies_genres (
    id SERIAL PRIMARY KEY,
    movie_id INT REFERENCES movies (id),
    string genre
);

CREATE TABLE actors (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100)
);

CREATE TABLE movies_cast (
    id SERIAL PRIMARY KEY,
    movie_id INT REFERENCES movies (id),
    actors_id INT REFERENCES actors (id)
);

CREATE TABLE director (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100)
);

CREATE TABLE showtimes (
    id SERIAL PRIMARY KEY,
    cinema_name VARCHAR(50),
    time TIME,
    date DATE,
    location VARCHAR(50),
    seat_number VARCHAR(10),
    movie_id INT REFERENCES movies (id)
);

CREATE TABLE payment_method (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
);

CREATE TABLE transactions (
    id SERIAL PRIMARY KEY,
    email VARCHAR(100),
    full_name VARCHAR(100),
    phone_number VARCHAR(15),
    total_seats INT,
    amount DECIMAL(10, 2),
    is_paid BOOLEAN,
    created_at TIMESTAMP now(),
    due_time TIMESTAMP,
    created_by INT REFERENCES users (id),
    showtimes_id INT REFERENCES showtimes (id),
    payment_id INT REFERENCES payment_method (id)
);