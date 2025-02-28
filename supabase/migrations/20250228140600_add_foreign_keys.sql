
-- Alter Table to Add Foreign Keys

ALTER TABLE silver.properties_df_sil
        ADD COLUMN IF NOT EXISTS "locations_df_sil_id" INTEGER;
ALTER TABLE silver.properties_df_sil
        ADD CONSTRAINT fk_locations_df_sil_id
        FOREIGN KEY ("locations_df_sil_id") REFERENCES silver.locations_df_sil("id")
        ON DELETE CASCADE;
ALTER TABLE silver.properties_df_sil
        ADD COLUMN IF NOT EXISTS "agents_df_sil_id" INTEGER;
ALTER TABLE silver.properties_df_sil
        ADD CONSTRAINT fk_agents_df_sil_id
        FOREIGN KEY ("agents_df_sil_id") REFERENCES silver.agents_df_sil("id")
        ON DELETE CASCADE;