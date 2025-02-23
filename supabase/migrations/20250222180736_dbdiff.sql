create schema if not exists "bronze";



alter table "bronze"."try" enable row level security;



set check_function_bodies = off;

CREATE OR REPLACE FUNCTION bronze.insert_rightmove_properties(_data jsonb)
 RETURNS void
 LANGUAGE plpgsql
 SECURITY DEFINER
AS $function$
BEGIN
    INSERT INTO bronze.rightmove_properties
    SELECT * FROM jsonb_to_recordset(_data) AS x(
        property_address TEXT,
        agent_address TEXT,
        agent_name TEXT,
        available_date TEXT,
        property_type TEXT,
        bedrooms TEXT,
        bathrooms TEXT,
        post_date TEXT,
        price TEXT,
        latitude TEXT,
        longitude TEXT,
        url TEXT
    );
END;
$function$
;

grant delete on table "bronze"."try" to "anon";

grant insert on table "bronze"."try" to "anon";

grant references on table "bronze"."try" to "anon";

grant select on table "bronze"."try" to "anon";

grant trigger on table "bronze"."try" to "anon";

grant truncate on table "bronze"."try" to "anon";

grant update on table "bronze"."try" to "anon";

grant delete on table "bronze"."try" to "authenticated";

grant insert on table "bronze"."try" to "authenticated";

grant references on table "bronze"."try" to "authenticated";

grant select on table "bronze"."try" to "authenticated";

grant trigger on table "bronze"."try" to "authenticated";

grant truncate on table "bronze"."try" to "authenticated";

grant update on table "bronze"."try" to "authenticated";

grant delete on table "bronze"."try" to "service_role";

grant insert on table "bronze"."try" to "service_role";

grant references on table "bronze"."try" to "service_role";

grant select on table "bronze"."try" to "service_role";

grant trigger on table "bronze"."try" to "service_role";

grant truncate on table "bronze"."try" to "service_role";

grant update on table "bronze"."try" to "service_role";


create schema if not exists "gold";


create sequence "public"."rightmove_data2345_id_seq";

create table "public"."rightmove_data2345" (
    "id" integer not null default nextval('rightmove_data2345_id_seq'::regclass),
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


alter sequence "public"."rightmove_data2345_id_seq" owned by "public"."rightmove_data2345"."id";

CREATE UNIQUE INDEX rightmove_data2345_pkey ON public.rightmove_data2345 USING btree (id);

alter table "public"."rightmove_data2345" add constraint "rightmove_data2345_pkey" PRIMARY KEY using index "rightmove_data2345_pkey";

grant delete on table "public"."rightmove_data2345" to "anon";

grant insert on table "public"."rightmove_data2345" to "anon";

grant references on table "public"."rightmove_data2345" to "anon";

grant select on table "public"."rightmove_data2345" to "anon";

grant trigger on table "public"."rightmove_data2345" to "anon";

grant truncate on table "public"."rightmove_data2345" to "anon";

grant update on table "public"."rightmove_data2345" to "anon";

grant delete on table "public"."rightmove_data2345" to "authenticated";

grant insert on table "public"."rightmove_data2345" to "authenticated";

grant references on table "public"."rightmove_data2345" to "authenticated";

grant select on table "public"."rightmove_data2345" to "authenticated";

grant trigger on table "public"."rightmove_data2345" to "authenticated";

grant truncate on table "public"."rightmove_data2345" to "authenticated";

grant update on table "public"."rightmove_data2345" to "authenticated";

grant delete on table "public"."rightmove_data2345" to "service_role";

grant insert on table "public"."rightmove_data2345" to "service_role";

grant references on table "public"."rightmove_data2345" to "service_role";

grant select on table "public"."rightmove_data2345" to "service_role";

grant trigger on table "public"."rightmove_data2345" to "service_role";

grant truncate on table "public"."rightmove_data2345" to "service_role";

grant update on table "public"."rightmove_data2345" to "service_role";


create schema if not exists "silver";


