create schema if not exists "bronze";

create sequence "bronze"."rightmove_data_brz_id_seq";

create table "bronze"."rightmove_data_brz" (
    "id" integer not null default nextval('bronze.rightmove_data_brz_id_seq'::regclass),
    "Property Address" text,
    "Agent Address" text,
    "Agent Name" text,
    "Available Date" text,
    "Property Type" text,
    "Bedrooms" integer,
    "Bathrooms" integer,
    "Post Date" text,
    "Price" text,
    "Latitude" double precision,
    "Longitude" double precision,
    "URL" text
);


alter sequence "bronze"."rightmove_data_brz_id_seq" owned by "bronze"."rightmove_data_brz"."id";

CREATE UNIQUE INDEX rightmove_data_brz_pkey ON bronze.rightmove_data_brz USING btree (id);

alter table "bronze"."rightmove_data_brz" add constraint "rightmove_data_brz_pkey" PRIMARY KEY using index "rightmove_data_brz_pkey";

grant delete on table "bronze"."rightmove_data_brz" to "anon";

grant insert on table "bronze"."rightmove_data_brz" to "anon";

grant references on table "bronze"."rightmove_data_brz" to "anon";

grant select on table "bronze"."rightmove_data_brz" to "anon";

grant trigger on table "bronze"."rightmove_data_brz" to "anon";

grant truncate on table "bronze"."rightmove_data_brz" to "anon";

grant update on table "bronze"."rightmove_data_brz" to "anon";

grant delete on table "bronze"."rightmove_data_brz" to "authenticated";

grant insert on table "bronze"."rightmove_data_brz" to "authenticated";

grant references on table "bronze"."rightmove_data_brz" to "authenticated";

grant select on table "bronze"."rightmove_data_brz" to "authenticated";

grant trigger on table "bronze"."rightmove_data_brz" to "authenticated";

grant truncate on table "bronze"."rightmove_data_brz" to "authenticated";

grant update on table "bronze"."rightmove_data_brz" to "authenticated";

grant delete on table "bronze"."rightmove_data_brz" to "service_role";

grant insert on table "bronze"."rightmove_data_brz" to "service_role";

grant references on table "bronze"."rightmove_data_brz" to "service_role";

grant select on table "bronze"."rightmove_data_brz" to "service_role";

grant trigger on table "bronze"."rightmove_data_brz" to "service_role";

grant truncate on table "bronze"."rightmove_data_brz" to "service_role";

grant update on table "bronze"."rightmove_data_brz" to "service_role";


create schema if not exists "gold";


create sequence "public"."query_logs_id_seq";

create table "public"."query_logs" (
    "id" integer not null default nextval('query_logs_id_seq'::regclass),
    "query" text not null,
    "executed_at" timestamp without time zone default now()
);


alter sequence "public"."query_logs_id_seq" owned by "public"."query_logs"."id";

CREATE UNIQUE INDEX query_logs_pkey ON public.query_logs USING btree (id);

alter table "public"."query_logs" add constraint "query_logs_pkey" PRIMARY KEY using index "query_logs_pkey";

set check_function_bodies = off;

CREATE OR REPLACE FUNCTION public.log_queries()
 RETURNS event_trigger
 LANGUAGE plpgsql
AS $function$
BEGIN
    INSERT INTO query_logs (query, executed_at)
    VALUES (current_query(), NOW());
END;
$function$
;

grant delete on table "public"."query_logs" to "anon";

grant insert on table "public"."query_logs" to "anon";

grant references on table "public"."query_logs" to "anon";

grant select on table "public"."query_logs" to "anon";

grant trigger on table "public"."query_logs" to "anon";

grant truncate on table "public"."query_logs" to "anon";

grant update on table "public"."query_logs" to "anon";

grant delete on table "public"."query_logs" to "authenticated";

grant insert on table "public"."query_logs" to "authenticated";

grant references on table "public"."query_logs" to "authenticated";

grant select on table "public"."query_logs" to "authenticated";

grant trigger on table "public"."query_logs" to "authenticated";

grant truncate on table "public"."query_logs" to "authenticated";

grant update on table "public"."query_logs" to "authenticated";

grant delete on table "public"."query_logs" to "service_role";

grant insert on table "public"."query_logs" to "service_role";

grant references on table "public"."query_logs" to "service_role";

grant select on table "public"."query_logs" to "service_role";

grant trigger on table "public"."query_logs" to "service_role";

grant truncate on table "public"."query_logs" to "service_role";

grant update on table "public"."query_logs" to "service_role";


create schema if not exists "silver";

create sequence "silver"."agents_df_sil_id_seq";

create sequence "silver"."listings_df_sil_id_seq";

create sequence "silver"."locations_df_sil_id_seq";

create sequence "silver"."properties_df_sil_id_seq";

create table "silver"."agents_df_sil" (
    "id" integer not null default nextval('silver.agents_df_sil_id_seq'::regclass),
    "agent_name" text,
    "agent_address" text
);


create table "silver"."listings_df_sil" (
    "id" integer not null default nextval('silver.listings_df_sil_id_seq'::regclass),
    "parsed_post_date" text,
    "parsed_available_date" text,
    "monthly_price" text,
    "listing_id" text,
    "url" text,
    "properties_df_sil_id" integer
);


create table "silver"."locations_df_sil" (
    "id" integer not null default nextval('silver.locations_df_sil_id_seq'::regclass),
    "full_address" text,
    "latitude" double precision,
    "longitude" double precision,
    "property_address" text
);


create table "silver"."properties_df_sil" (
    "id" integer not null default nextval('silver.properties_df_sil_id_seq'::regclass),
    "property_type" text,
    "bedrooms" text,
    "bathrooms" text,
    "locations_df_sil_id" integer,
    "agents_df_sil_id" integer
);


alter sequence "silver"."agents_df_sil_id_seq" owned by "silver"."agents_df_sil"."id";

alter sequence "silver"."listings_df_sil_id_seq" owned by "silver"."listings_df_sil"."id";

alter sequence "silver"."locations_df_sil_id_seq" owned by "silver"."locations_df_sil"."id";

alter sequence "silver"."properties_df_sil_id_seq" owned by "silver"."properties_df_sil"."id";

CREATE UNIQUE INDEX agents_df_sil_pkey ON silver.agents_df_sil USING btree (id);

CREATE UNIQUE INDEX listings_df_sil_pkey ON silver.listings_df_sil USING btree (id);

CREATE UNIQUE INDEX locations_df_sil_pkey ON silver.locations_df_sil USING btree (id);

CREATE UNIQUE INDEX properties_df_sil_pkey ON silver.properties_df_sil USING btree (id);

alter table "silver"."agents_df_sil" add constraint "agents_df_sil_pkey" PRIMARY KEY using index "agents_df_sil_pkey";

alter table "silver"."listings_df_sil" add constraint "listings_df_sil_pkey" PRIMARY KEY using index "listings_df_sil_pkey";

alter table "silver"."locations_df_sil" add constraint "locations_df_sil_pkey" PRIMARY KEY using index "locations_df_sil_pkey";

alter table "silver"."properties_df_sil" add constraint "properties_df_sil_pkey" PRIMARY KEY using index "properties_df_sil_pkey";

alter table "silver"."listings_df_sil" add constraint "fk_properties_df_sil_id" FOREIGN KEY (properties_df_sil_id) REFERENCES silver.properties_df_sil(id) ON DELETE CASCADE not valid;

alter table "silver"."listings_df_sil" validate constraint "fk_properties_df_sil_id";

alter table "silver"."properties_df_sil" add constraint "fk_agents_df_sil_id" FOREIGN KEY (agents_df_sil_id) REFERENCES silver.agents_df_sil(id) ON DELETE CASCADE not valid;

alter table "silver"."properties_df_sil" validate constraint "fk_agents_df_sil_id";

alter table "silver"."properties_df_sil" add constraint "fk_locations_df_sil_id" FOREIGN KEY (locations_df_sil_id) REFERENCES silver.locations_df_sil(id) ON DELETE CASCADE not valid;

alter table "silver"."properties_df_sil" validate constraint "fk_locations_df_sil_id";


