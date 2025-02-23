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


