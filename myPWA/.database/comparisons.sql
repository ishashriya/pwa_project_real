CREATE TABLE comparisons (
    compareID INTEGER PRIMARY KEY AUTOINCREMENT,
    userID INTEGER NOT NULL,
    car1ID INTEGER NOT NULL,
    car2ID INTEGER NOT NULL,
    FOREIGN KEY (car1ID) REFERENCES cars(carID),
    FOREIGN KEY (car2ID) REFERENCES cars(carID)
);

-- NEED TO FIGURE OUT THE QUERIES
INSERT INTO comparisons (userID, car1ID, car2ID) VALUES (?, ?, ?);

SELECT c1.make || ' ' || c1.model AS car1, 
       c2.make || ' ' || c2.model AS car2
FROM comparisons
JOIN cars c1 ON comparisons.car1ID = c1.carID
JOIN cars c2 ON comparisons.car2ID = c2.carID
WHERE compareID = ?;