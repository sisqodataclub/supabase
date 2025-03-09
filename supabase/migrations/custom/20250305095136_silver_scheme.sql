-- SQL Migration Script


    -- Create Bronze, Silver, and Gold schemas
    CREATE SCHEMA IF NOT EXISTS bronze;
    CREATE SCHEMA IF NOT EXISTS silver;
    CREATE SCHEMA IF NOT EXISTS gold;
    
CREATE TABLE IF NOT EXISTS silver.agents_df (
    id SERIAL PRIMARY KEY,
    "agent_name" TEXT,
    "agent_address" TEXT,
    "rowid" TEXT
);
-- SQL Migration Script


    -- Create Bronze, Silver, and Gold schemas
    CREATE SCHEMA IF NOT EXISTS bronze;
    CREATE SCHEMA IF NOT EXISTS silver;
    CREATE SCHEMA IF NOT EXISTS gold;
    
CREATE TABLE IF NOT EXISTS silver.locations_df (
    id SERIAL PRIMARY KEY,
    "full_address" TEXT,
    "latitude" DOUBLE PRECISION,
    "longitude" DOUBLE PRECISION,
    "property_address" TEXT,
    "rowid" TEXT
);
-- SQL Migration Script


    -- Create Bronze, Silver, and Gold schemas
    CREATE SCHEMA IF NOT EXISTS bronze;
    CREATE SCHEMA IF NOT EXISTS silver;
    CREATE SCHEMA IF NOT EXISTS gold;
    
CREATE TABLE IF NOT EXISTS silver.properties_df (
    id SERIAL PRIMARY KEY,
    "property_type" TEXT,
    "bedrooms" TEXT,
    "bathrooms" TEXT,
    "rowid" TEXT
);
-- SQL Migration Script


    -- Create Bronze, Silver, and Gold schemas
    CREATE SCHEMA IF NOT EXISTS bronze;
    CREATE SCHEMA IF NOT EXISTS silver;
    CREATE SCHEMA IF NOT EXISTS gold;
    
CREATE TABLE IF NOT EXISTS silver.listings_df (
    id SERIAL PRIMARY KEY,
    "parsed_post_date" TEXT,
    "parsed_available_date" TIMESTAMP,
    "monthly_price" TEXT,
    "listing_id" TEXT,
    "url" TEXT,
    "rowid" TEXT
);
