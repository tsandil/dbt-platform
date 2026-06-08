CREATE SCHEMA IF NOT EXISTS raw;

CREATE TABLE IF NOT EXISTS raw.customers (
    id          SERIAL PRIMARY KEY,
    first_name  VARCHAR(50),
    last_name   VARCHAR(50),
    email       VARCHAR(100),
    created_at  TIMESTAMP DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS raw.products (
    id          SERIAL PRIMARY KEY,
    name        VARCHAR(100),
    category    VARCHAR(50),
    price       NUMERIC(10,2)
);

CREATE TABLE IF NOT EXISTS raw.orders (
    id            SERIAL PRIMARY KEY,
    customer_id   INTEGER REFERENCES raw.customers(id),
    product_id    INTEGER REFERENCES raw.products(id),
    status        VARCHAR(20),
    amount        NUMERIC(10,2),
    ordered_at    TIMESTAMP DEFAULT NOW()
);
