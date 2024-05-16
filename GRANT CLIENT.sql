GRANT SELECT, INSERT, UPDATE ON users TO Client;
GRANT SELECT, INSERT, UPDATE ON reviews TO Client;
GRANT SELECT ON orders TO Client;
GRANT SELECT ON equipment TO Client;
GRANT SELECT ON cars TO Client;

GRANT EXECUTE ON FUNCTION TABLE_USERS() TO Client;
GRANT EXECUTE ON FUNCTION table_cars()TO Client;
GRANT EXECUTE ON FUNCTION get_cars(cars_id INT)TO Client;
GRANT EXECUTE ON FUNCTION get_equipment(equipment_id INT)TO Client;
GRANT EXECUTE ON FUNCTION table_equipments()TO Client;
GRANT EXECUTE ON FUNCTION get_orders(order_id INT)TO Client;
GRANT EXECUTE ON FUNCTION table_orders()TO Client;
GRANT EXECUTE ON FUNCTION get_reviews(review_id INT)TO Client;
GRANT EXECUTE ON FUNCTION table_reviews()TO Client;

