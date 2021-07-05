-- for help \?

-- list databse \l

-- create database CREATE DATABASE database_name;

-- list all tables \d

--RESTAURANT TABLE
CREATE TABLE restaurants(
    id BIGSERIAL NOT NULL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    location VARCHAR(50) NOT NULL,
    price_range INT NOT NULL check(price_range >=1 and price_range <=5)
);

insert into restaurants(name, location, price_range) values('Ichiraku Ramen', 'Konoha', 3);

-- REVIW AND RATING TABLE
CREATE TABLE reviews(
    id BIGSERIAL NOT NULL PRIMARY KEY,
    restaurant_id  BIGINT NOT NULL REFERENCES restaurants(id),
    name VARCHAR(50) NOT NULL,
    review TEXT NOT NULL,
    rating INT NOT NULL check(rating >= 1 and rating <=5)
);