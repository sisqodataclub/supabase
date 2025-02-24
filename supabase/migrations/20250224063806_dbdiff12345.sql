create sequence "bronze"."rightmove_data_brz_id_seq";

revoke delete on table "bronze"."try" from "anon";

revoke insert on table "bronze"."try" from "anon";

revoke references on table "bronze"."try" from "anon";

revoke select on table "bronze"."try" from "anon";

revoke trigger on table "bronze"."try" from "anon";

revoke truncate on table "bronze"."try" from "anon";

revoke update on table "bronze"."try" from "anon";

revoke delete on table "bronze"."try" from "authenticated";

revoke insert on table "bronze"."try" from "authenticated";

revoke references on table "bronze"."try" from "authenticated";

revoke select on table "bronze"."try" from "authenticated";

revoke trigger on table "bronze"."try" from "authenticated";

revoke truncate on table "bronze"."try" from "authenticated";

revoke update on table "bronze"."try" from "authenticated";

revoke delete on table "bronze"."try" from "service_role";

revoke insert on table "bronze"."try" from "service_role";

revoke references on table "bronze"."try" from "service_role";

revoke select on table "bronze"."try" from "service_role";

revoke trigger on table "bronze"."try" from "service_role";

revoke truncate on table "bronze"."try" from "service_role";

revoke update on table "bronze"."try" from "service_role";

drop function if exists "bronze"."insert_rightmove_properties"(_data jsonb);

alter table "bronze"."try" drop constraint "try_pkey";

drop index if exists "bronze"."try_pkey";

drop table "bronze"."try";

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


revoke delete on table "public"."rightmove_data2345" from "anon";

revoke insert on table "public"."rightmove_data2345" from "anon";

revoke references on table "public"."rightmove_data2345" from "anon";

revoke select on table "public"."rightmove_data2345" from "anon";

revoke trigger on table "public"."rightmove_data2345" from "anon";

revoke truncate on table "public"."rightmove_data2345" from "anon";

revoke update on table "public"."rightmove_data2345" from "anon";

revoke delete on table "public"."rightmove_data2345" from "authenticated";

revoke insert on table "public"."rightmove_data2345" from "authenticated";

revoke references on table "public"."rightmove_data2345" from "authenticated";

revoke select on table "public"."rightmove_data2345" from "authenticated";

revoke trigger on table "public"."rightmove_data2345" from "authenticated";

revoke truncate on table "public"."rightmove_data2345" from "authenticated";

revoke update on table "public"."rightmove_data2345" from "authenticated";

revoke delete on table "public"."rightmove_data2345" from "service_role";

revoke insert on table "public"."rightmove_data2345" from "service_role";

revoke references on table "public"."rightmove_data2345" from "service_role";

revoke select on table "public"."rightmove_data2345" from "service_role";

revoke trigger on table "public"."rightmove_data2345" from "service_role";

revoke truncate on table "public"."rightmove_data2345" from "service_role";

revoke update on table "public"."rightmove_data2345" from "service_role";

alter table "public"."rightmove_data2345" drop constraint "rightmove_data2345_pkey";

drop index if exists "public"."rightmove_data2345_pkey";

drop table "public"."rightmove_data2345";

drop sequence if exists "public"."rightmove_data2345_id_seq";


