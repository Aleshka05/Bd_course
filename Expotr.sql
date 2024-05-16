SELECT json_agg(row_to_json(t)) AS json_data
FROM (SELECT * FROM Cars) t;

SELECT json_agg(row_to_json(t)) AS json_data
FROM (SELECT * FROM Consultants) t;

SELECT json_agg(row_to_json(t)) AS json_data
FROM (SELECT * FROM Equipment) t;
 
 SELECT json_agg(row_to_json(t)) AS json_data
FROM (SELECT * FROM Orders) t;

SELECT json_agg(row_to_json(t)) AS json_data
FROM (SELECT * FROM Reviews) t;

SELECT json_agg(row_to_json(t)) AS json_data
FROM (SELECT * FROM Role) t;

SELECT json_agg(row_to_json(t)) AS json_data
FROM (SELECT * FROM Users) t;


select * from Users