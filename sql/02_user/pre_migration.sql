-- "directus"."directus_users"


ALTER TABLE "directus"."directus_users" ADD status_enum text NULL;
update "directus"."directus_users" set "status_enum" = 'Active' where "status" = 'active';
update "directus"."directus_users" set "status_enum" = 'Disabled' where "status" = 'suspended';

ALTER TABLE "directus"."directus_users" ADD role_enum text NULL;
update "directus"."directus_users" set "role_enum" = 'Administrator' where "role" in (select "id" from "directus"."directus_roles" where "name" = 'Administrator');
update "directus"."directus_users" set "role_enum" = 'StructureManager' where "role" in (select "id" from "directus"."directus_roles" where "name" = 'Responsable de structure');
update "directus"."directus_users" set "role_enum" = 'SocialWorker' where "role" in (select "id" from "directus"."directus_roles" where "name" = 'Travailleur social');
update "directus"."directus_users" set "role_enum" = 'Instructor' where "role"in (select "id" from "directus"."directus_roles" where "name" = 'Instructeur');
update "directus"."directus_users" set "role_enum" = 'Referent' where "role" in (select "id" from "directus"."directus_roles" where "name" = 'Référent');
update "directus"."directus_users" set "role_enum" = 'ReceptionAgent' where "role"in (select "id" from "directus"."directus_roles" where "slug" = 'agent-d-accueil');
