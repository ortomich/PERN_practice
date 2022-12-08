-- CREATE TABLE pern_practice;
-- \c pern_practice

CREATE TABLE restaurants (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    location VARCHAR(50) NOT NULL,
    price_range INT NOT NULL CHECK (price_range > 0 AND price_range < 6)
);

CREATE TABLE reviews (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    restaurant_id BIGINT NOT NULL REFERENCES restaurants(id),
    name VARCHAR(50) NOT NULL,
    review TEXT NOT NULL,
    rating INT NOT NULL check(
        rating >= 1
        and rating <= 5
    )
);

INSERT INTO restaurants (name, location, price_range) VALUES ('McDonalds', 'New York', 3);
INSERT INTO restaurants (name, location, price_range) VALUES ('Burger King', 'New York', 2);

INSERT INTO reviews (restaurant_id, name, review, rating) VALUES (2, 'tom', 'Very good', 5);