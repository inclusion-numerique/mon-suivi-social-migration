-- "directus"."directus_users"


ALTER TABLE "directus"."directus_users" ADD status_enum text NULL;
update "directus"."directus_users" set "status_enum" = 'Active' where "status" = 'active';
update "directus"."directus_users" set "status_enum" = 'Disabled' where "status" = 'suspended';

ALTER TABLE "directus"."directus_users" ADD role_enum text NULL;
update "directus"."directus_users" set "role_enum" = 'Administrator' where "role" = '64b185a7-ebac-4089-9073-2405561a6bc4'; 
update "directus"."directus_users" set "role_enum" = 'StructureManager' where "role" = '77c48d8b-a130-4a49-a00a-53a564bb9dbe'; 
update "directus"."directus_users" set "role_enum" = 'SocialWorker' where "role" = 'c622eb01-b206-4f50-8c8b-66b6b7c1bcee'; 
update "directus"."directus_users" set "role_enum" = 'Instructor' where "role" = 'bd87425f-5ebc-416b-906f-b367914dc4c2'; 
update "directus"."directus_users" set "role_enum" = 'Referent' where "role" = '810fa339-9f91-48f5-9278-dea2c0f0ff18'; 
update "directus"."directus_users" set "role_enum" = 'ReceptionAgent' where "role" = '4eee829e-d945-44fa-841d-34cc6e0d1d20'; 