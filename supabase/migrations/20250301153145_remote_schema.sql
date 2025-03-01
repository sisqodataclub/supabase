alter table "bronze"."rightmove_data_brz" alter column "Bathrooms" set data type numeric using "Bathrooms"::numeric;

alter table "bronze"."rightmove_data_brz" alter column "Bedrooms" set data type numeric using "Bedrooms"::numeric;


alter table "silver"."listings_df_sil" drop constraint "fk_properties_df_sil_id";

alter table "silver"."properties_df_sil" drop constraint "fk_agents_df_sil_id";

alter table "silver"."properties_df_sil" drop constraint "fk_locations_df_sil_id";

alter table "silver"."agents_df_sil" drop constraint "agents_df_sil_pkey";

alter table "silver"."listings_df_sil" drop constraint "listings_df_sil_pkey";

alter table "silver"."locations_df_sil" drop constraint "locations_df_sil_pkey";

alter table "silver"."properties_df_sil" drop constraint "properties_df_sil_pkey";

drop index if exists "silver"."agents_df_sil_pkey";

drop index if exists "silver"."listings_df_sil_pkey";

drop index if exists "silver"."locations_df_sil_pkey";

drop index if exists "silver"."properties_df_sil_pkey";

drop table "silver"."agents_df_sil";

drop table "silver"."listings_df_sil";

drop table "silver"."locations_df_sil";

drop table "silver"."properties_df_sil";

drop sequence if exists "silver"."agents_df_sil_id_seq";

drop sequence if exists "silver"."listings_df_sil_id_seq";

drop sequence if exists "silver"."locations_df_sil_id_seq";

drop sequence if exists "silver"."properties_df_sil_id_seq";


revoke delete on table "supabase_functions"."hooks" from "anon";

revoke insert on table "supabase_functions"."hooks" from "anon";

revoke references on table "supabase_functions"."hooks" from "anon";

revoke select on table "supabase_functions"."hooks" from "anon";

revoke trigger on table "supabase_functions"."hooks" from "anon";

revoke truncate on table "supabase_functions"."hooks" from "anon";

revoke update on table "supabase_functions"."hooks" from "anon";

revoke delete on table "supabase_functions"."hooks" from "authenticated";

revoke insert on table "supabase_functions"."hooks" from "authenticated";

revoke references on table "supabase_functions"."hooks" from "authenticated";

revoke select on table "supabase_functions"."hooks" from "authenticated";

revoke trigger on table "supabase_functions"."hooks" from "authenticated";

revoke truncate on table "supabase_functions"."hooks" from "authenticated";

revoke update on table "supabase_functions"."hooks" from "authenticated";

revoke delete on table "supabase_functions"."hooks" from "postgres";

revoke insert on table "supabase_functions"."hooks" from "postgres";

revoke references on table "supabase_functions"."hooks" from "postgres";

revoke select on table "supabase_functions"."hooks" from "postgres";

revoke trigger on table "supabase_functions"."hooks" from "postgres";

revoke truncate on table "supabase_functions"."hooks" from "postgres";

revoke update on table "supabase_functions"."hooks" from "postgres";

revoke delete on table "supabase_functions"."hooks" from "service_role";

revoke insert on table "supabase_functions"."hooks" from "service_role";

revoke references on table "supabase_functions"."hooks" from "service_role";

revoke select on table "supabase_functions"."hooks" from "service_role";

revoke trigger on table "supabase_functions"."hooks" from "service_role";

revoke truncate on table "supabase_functions"."hooks" from "service_role";

revoke update on table "supabase_functions"."hooks" from "service_role";

revoke delete on table "supabase_functions"."migrations" from "anon";

revoke insert on table "supabase_functions"."migrations" from "anon";

revoke references on table "supabase_functions"."migrations" from "anon";

revoke select on table "supabase_functions"."migrations" from "anon";

revoke trigger on table "supabase_functions"."migrations" from "anon";

revoke truncate on table "supabase_functions"."migrations" from "anon";

revoke update on table "supabase_functions"."migrations" from "anon";

revoke delete on table "supabase_functions"."migrations" from "authenticated";

revoke insert on table "supabase_functions"."migrations" from "authenticated";

revoke references on table "supabase_functions"."migrations" from "authenticated";

revoke select on table "supabase_functions"."migrations" from "authenticated";

revoke trigger on table "supabase_functions"."migrations" from "authenticated";

revoke truncate on table "supabase_functions"."migrations" from "authenticated";

revoke update on table "supabase_functions"."migrations" from "authenticated";

revoke delete on table "supabase_functions"."migrations" from "postgres";

revoke insert on table "supabase_functions"."migrations" from "postgres";

revoke references on table "supabase_functions"."migrations" from "postgres";

revoke select on table "supabase_functions"."migrations" from "postgres";

revoke trigger on table "supabase_functions"."migrations" from "postgres";

revoke truncate on table "supabase_functions"."migrations" from "postgres";

revoke update on table "supabase_functions"."migrations" from "postgres";

revoke delete on table "supabase_functions"."migrations" from "service_role";

revoke insert on table "supabase_functions"."migrations" from "service_role";

revoke references on table "supabase_functions"."migrations" from "service_role";

revoke select on table "supabase_functions"."migrations" from "service_role";

revoke trigger on table "supabase_functions"."migrations" from "service_role";

revoke truncate on table "supabase_functions"."migrations" from "service_role";

revoke update on table "supabase_functions"."migrations" from "service_role";

drop function if exists "supabase_functions"."http_request"();

alter table "supabase_functions"."hooks" drop constraint "hooks_pkey";

alter table "supabase_functions"."migrations" drop constraint "migrations_pkey";

drop index if exists "supabase_functions"."hooks_pkey";

drop index if exists "supabase_functions"."migrations_pkey";

drop index if exists "supabase_functions"."supabase_functions_hooks_h_table_id_h_name_idx";

drop index if exists "supabase_functions"."supabase_functions_hooks_request_id_idx";

drop table "supabase_functions"."hooks";

drop table "supabase_functions"."migrations";

drop sequence if exists "supabase_functions"."hooks_id_seq";


