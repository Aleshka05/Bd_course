CREATE OR REPLACE FUNCTION insert_100000_cars()
RETURNS VOID AS $$
DECLARE
  i INT := 1;
BEGIN
  WHILE i <= 100000 LOOP
    INSERT INTO Cars (equipment_id, brand, color, cost, sale_availability, model_id)
    VALUES (1, 'Brand ' || i, 'Color ' || i, 1000.00 * i, TRUE, i);
    i := i + 1;
  END LOOP;
END;
$$ LANGUAGE plpgsql;


SELECT insert_100000_cars();
EXPLAIN ANALYZE SELECT brand FROM cars WHERE brand = 'brand 1024';
drop index idx_cars_brand
CREATE INDEX idx_brand ON Cars (brand);
EXPLAIN ANALYZE SELECT brand FROM Cars WHERE brand = 'brand 1024';
select * from cars
select * from reviews