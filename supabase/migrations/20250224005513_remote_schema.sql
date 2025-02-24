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


