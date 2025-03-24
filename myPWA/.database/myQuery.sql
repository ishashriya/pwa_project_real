CREATE TABLE cars (
    carID INTEGER PRIMARY KEY AUTOINCREMENT,
    make TEXT NOT NULL,
    model TEXT NOT NULL,
    year INTEGER NOT NULL,
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

INSERT INTO cars (make, model, year, horsepower, torque, acceleration, top_speed, fuel_efficiency, transmission, drivetrain, price, image) 
VALUES 
    ('Tesla', 'Model S', 2023, 1020, 1050, 2.1, 322, 3.2, 'Automatic', 'AWD', 89990, 'tesla-model-s.jpg'),
    ('Porsche', '911 Turbo S', 2022, 640, 590, 2.6, 330, 2.9, 'Automatic', 'AWD', 203500, 'porsche-911.jpg'),
    ('BMW', 'M3 Competition', 2023, 503, 479, 3.8, 290, 3.5, 'Automatic', 'RWD', 76100, 'bmw-m3.jpg');

SELECT * FROM cars WHERE make = 'Tesla';  -- Get all Tesla cars
