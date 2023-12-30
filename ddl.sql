CREATE TABLE invoice(
    invoice_id SERIAL PRIMARY KEY,
    saleperson_id INTEGER,
    car_id INTEGER NOT NULL,
    price NUMERIC,
    FOREIGN KEY(saleperson_id) REFERENCES saleperson(saleperson_id)
)

CREATE TABLE saleperson(
    saleperson_id SERIAL PRIMARY KEY,
    saleperson_name VARCHAR(50),
    car_id INTEGER NOT NULL,
    FOREIGN KEY(car_id) REFERENCES car(car_id)
)

CREATE TABLE car(
    car_id SERIAL PRIMARY KEY,
    make VARCHAR(50),
    model_yr INTEGER NOT NULL,
    customer_id INTEGER,
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
)

CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(50),
    customer_addy VARCHAR(50)
)

CREATE TABLE service_invoice(
    ticket_id SERIAl PRIMARY KEY,
    car_id INTEGER NOT NULL,
    service_date TIMESTAMP,
    FOREIGN KEY(car_id) REFERENCES car(car_id)
)

CREATE TABLE mechanic(
    mechanic_id SERIAL,
    ticket_id INTEGER NOT NULL,
    FOREIGN KEY(ticket_id) REFERENCES service_invoice(ticket_id)
)
