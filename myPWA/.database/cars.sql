DROP TABLE IF EXISTS car;
DROP TABLE IF EXISTS cars;

CREATE TABLE cars (
    carID INTEGER PRIMARY KEY AUTOINCREMENT,
    make TEXT NOT NULL,
    model TEXT NOT NULL,
    year INTEGER NOT NULL,
    type TEXT NOT NULL,  -- Category for car type (SUV, Sedan, Hatchback, etc.)
    horsepower INTEGER NOT NULL,
    torque INTEGER NOT NULL,
    acceleration REAL NOT NULL,  -- 0-100 km/h in seconds
    top_speed INTEGER NOT NULL,  -- km/h
    fuel_efficiency REAL NOT NULL,  -- L/100km
    transmission TEXT NOT NULL,  -- e.g., "Automatic", "Manual"
    drivetrain TEXT NOT NULL,  -- e.g., "AWD", "RWD"
    price REAL NOT NULL,
    image TEXT NOT NULL  -- URL to car image
);

INSERT INTO cars (make, model, year, type, horsepower, torque, acceleration, top_speed, fuel_efficiency, transmission, drivetrain, price, image)  
VALUES  
    ('Tesla', 'Model S', 2023, 'Sedan', 1020, 1050, 2.1, 322, 3.1, 'Automatic', 'AWD', 89999, 'https://example.com/tesla_model_s.jpg'),  
    ('Porsche', '911 Turbo S', 2022, 'Coupe', 640, 590, 2.6, 330, 10.1, 'Automatic', 'AWD', 203500, 'https://example.com/porsche_911_turbo_s.jpg'),  
    ('BMW', 'M3 Competition', 2023, 'Sedan', 503, 479, 3.8, 290, 10.2, 'Automatic', 'RWD', 75000, 'https://example.com/bmw_m3_competition.jpg'),  
    ('Audi', 'Q7', 2023, 'SUV', 335, 369, 5.7, 250, 9.0, 'Automatic', 'AWD', 65000, 'https://example.com/audi_q7.jpg'),  
    ('Volkswagen', 'Golf GTI', 2023, 'Hatchback', 245, 273, 6.2, 250, 7.5, 'Manual', 'FWD', 40000, 'https://example.com/vw_golf_gti.jpg');  


SELECT * FROM cars;
SELECT * FROM cars WHERE type = 'Sedan';
