
-- Alter Table to Add Foreign Keys

ALTER TABLE silver.listings_df_sil
        ADD COLUMN IF NOT EXISTS "properties_df_sil_id" INTEGER;
ALTER TABLE silver.listings_df_sil
        ADD CONSTRAINT fk_properties_df_sil_id
        FOREIGN KEY ("properties_df_sil_id") REFERENCES silver.properties_df_sil("id")
        ON DELETE CASCADE;