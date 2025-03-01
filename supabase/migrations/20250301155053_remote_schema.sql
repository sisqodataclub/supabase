

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;


CREATE SCHEMA IF NOT EXISTS "bronze";


ALTER SCHEMA "bronze" OWNER TO "postgres";


CREATE SCHEMA IF NOT EXISTS "gold";


ALTER SCHEMA "gold" OWNER TO "postgres";


CREATE EXTENSION IF NOT EXISTS "pgsodium" WITH SCHEMA "pgsodium";






COMMENT ON SCHEMA "public" IS 'standard public schema';



CREATE SCHEMA IF NOT EXISTS "silver";


ALTER SCHEMA "silver" OWNER TO "postgres";


CREATE EXTENSION IF NOT EXISTS "pg_stat_statements" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "pgcrypto" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "pgjwt" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "supabase_vault" WITH SCHEMA "vault";






CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA "extensions";






CREATE OR REPLACE FUNCTION "public"."log_queries"() RETURNS "event_trigger"
    LANGUAGE "plpgsql"
    AS $$
BEGIN
    INSERT INTO query_logs (query, executed_at)
    VALUES (current_query(), NOW());
END;
$$;


ALTER FUNCTION "public"."log_queries"() OWNER TO "postgres";

SET default_tablespace = '';

SET default_table_access_method = "heap";


CREATE TABLE IF NOT EXISTS "bronze"."rightmove_data_brz" (
    "id" integer NOT NULL,
    "Property Address" "text",
    "Agent Address" "text",
    "Agent Name" "text",
    "Available Date" "text",
    "Property Type" "text",
    "Bedrooms" numeric,
    "Bathrooms" numeric,
    "Post Date" "text",
    "Price" "text",
    "Latitude" double precision,
    "Longitude" double precision,
    "URL" "text"
);


ALTER TABLE "bronze"."rightmove_data_brz" OWNER TO "postgres";


CREATE SEQUENCE IF NOT EXISTS "bronze"."rightmove_data_brz_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "bronze"."rightmove_data_brz_id_seq" OWNER TO "postgres";


ALTER SEQUENCE "bronze"."rightmove_data_brz_id_seq" OWNED BY "bronze"."rightmove_data_brz"."id";



CREATE TABLE IF NOT EXISTS "public"."query_logs" (
    "id" integer NOT NULL,
    "query" "text" NOT NULL,
    "executed_at" timestamp without time zone DEFAULT "now"()
);


ALTER TABLE "public"."query_logs" OWNER TO "postgres";


CREATE SEQUENCE IF NOT EXISTS "public"."query_logs_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "public"."query_logs_id_seq" OWNER TO "postgres";


ALTER SEQUENCE "public"."query_logs_id_seq" OWNED BY "public"."query_logs"."id";



ALTER TABLE ONLY "bronze"."rightmove_data_brz" ALTER COLUMN "id" SET DEFAULT "nextval"('"bronze"."rightmove_data_brz_id_seq"'::"regclass");



ALTER TABLE ONLY "public"."query_logs" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."query_logs_id_seq"'::"regclass");



ALTER TABLE ONLY "bronze"."rightmove_data_brz"
    ADD CONSTRAINT "rightmove_data_brz_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."query_logs"
    ADD CONSTRAINT "query_logs_pkey" PRIMARY KEY ("id");





ALTER PUBLICATION "supabase_realtime" OWNER TO "postgres";


GRANT USAGE ON SCHEMA "bronze" TO "anon";
GRANT USAGE ON SCHEMA "bronze" TO "authenticated";
GRANT USAGE ON SCHEMA "bronze" TO "service_role";



GRANT USAGE ON SCHEMA "public" TO "postgres";
GRANT USAGE ON SCHEMA "public" TO "anon";
GRANT USAGE ON SCHEMA "public" TO "authenticated";
GRANT USAGE ON SCHEMA "public" TO "service_role";

















































































































































































GRANT ALL ON FUNCTION "public"."log_queries"() TO "anon";
GRANT ALL ON FUNCTION "public"."log_queries"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."log_queries"() TO "service_role";



GRANT ALL ON TABLE "bronze"."rightmove_data_brz" TO "anon";
GRANT ALL ON TABLE "bronze"."rightmove_data_brz" TO "authenticated";
GRANT ALL ON TABLE "bronze"."rightmove_data_brz" TO "service_role";



GRANT ALL ON SEQUENCE "bronze"."rightmove_data_brz_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "bronze"."rightmove_data_brz_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "bronze"."rightmove_data_brz_id_seq" TO "service_role";


















GRANT ALL ON TABLE "public"."query_logs" TO "anon";
GRANT ALL ON TABLE "public"."query_logs" TO "authenticated";
GRANT ALL ON TABLE "public"."query_logs" TO "service_role";



GRANT ALL ON SEQUENCE "public"."query_logs_id_seq" TO "anon";
GRANT ALL ON SEQUENCE "public"."query_logs_id_seq" TO "authenticated";
GRANT ALL ON SEQUENCE "public"."query_logs_id_seq" TO "service_role";



ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "bronze" GRANT ALL ON SEQUENCES  TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "bronze" GRANT ALL ON SEQUENCES  TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "bronze" GRANT ALL ON SEQUENCES  TO "service_role";



ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "bronze" GRANT ALL ON FUNCTIONS  TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "bronze" GRANT ALL ON FUNCTIONS  TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "bronze" GRANT ALL ON FUNCTIONS  TO "service_role";



ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "bronze" GRANT ALL ON TABLES  TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "bronze" GRANT ALL ON TABLES  TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "bronze" GRANT ALL ON TABLES  TO "service_role";



ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES  TO "service_role";






ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS  TO "service_role";






ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES  TO "service_role";






























RESET ALL;
