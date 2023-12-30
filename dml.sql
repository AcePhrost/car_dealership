INSERT INTO customer(
    customer_id,
    customer_name,
    customer_addy
) VALUES(
    '1',
    'Count Drac',
    '666 Transylvania'
),(
    '2',
    'Sasuke Uchiha',
    'Hidden Leaf'
)

INSERT INTO saleperson(
    saleperson_id,
    saleperson_name,
    car_id
) VALUES(
    '1',
    'Mike Vick',
    001
),(
    '2',
    'Cooper Kupp',
    002
)

 INSERT INTO car(
    car_id,
    make,
    model_yr,
    customer_id
 ) VALUES(
    '001',
    'Infinti Q60',
    '2019',
    '1'
 ),(
    '002',
    'Infinti Q50',
    '2019',
    '2'
 )

 INSERT INTO invoice(
    invoice_id,
    saleperson_id,
    car_id,
    price
 ) VALUES(
    '0001',
    '1',
    '001',
    25,000
 ),(
    '0002',
    '2',
    '002',
    22,399
 )

 INSERT INTO service_invoice(
    ticket_id,
    car_id,
    service_date
 ) VALUES(
    '1',
    '0',
    2023-08-16
 )

 INSERT INTO mechanic(
    mechanic_id,
    ticket_id
) VALUES(
    '001',
    '1'
)


