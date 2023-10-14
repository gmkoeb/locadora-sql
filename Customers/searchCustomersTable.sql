-- SQLite
SELECT NAME, LASTNAME, EMAIL FROM CUSTOMERS WHERE STATE = 'SP'

SELECT * FROM CUSTOMERS
JOIN (
    SELECT CUSTOMER_ID, COUNT(*) as number_of_locations
    FROM LOCATIONS
    GROUP BY CUSTOMER_ID
    HAVING number_of_locations >= 2
) AS CustomersWithMoreThanTwoLocations
ON CUSTOMERS.id = CustomersWithMoreThanTwoLocations.CUSTOMER_ID