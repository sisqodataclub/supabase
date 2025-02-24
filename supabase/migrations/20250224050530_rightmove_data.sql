-- SQL Migration Script


    -- Create Bronze, Silver, and Gold schemas
    CREATE SCHEMA IF NOT EXISTS bronze;
    CREATE SCHEMA IF NOT EXISTS silver;
    CREATE SCHEMA IF NOT EXISTS gold;
    
CREATE TABLE IF NOT EXISTS bronze.rightmove_data_brz (
    id SERIAL PRIMARY KEY,
    "Property Address" TEXT,
    "Agent Address" TEXT,
    "Agent Name" TEXT,
    "Available Date" TEXT,
    "Property Type" TEXT,
    "Bedrooms" INTEGER,
    "Bathrooms" INTEGER,
    "Post Date" TEXT,
    "Price" TEXT,
    "Latitude" FLOAT,
    "Longitude" FLOAT,
    "URL" TEXT
);
