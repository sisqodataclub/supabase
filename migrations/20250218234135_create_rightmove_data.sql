CREATE SCHEMA IF NOT EXISTS public;

CREATE TABLE IF NOT EXISTS public.rightmove_data (
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
