-- "directus"."organisation"
ALTER TABLE "directus"."organisation" ADD "type_enum" text NULL;
update "directus"."organisation" set "type_enum" = 'Commune' where "type" = 'city';
update "directus"."organisation" set "type_enum" = 'Ministere' where "type" = 'ministry';
update "directus"."organisation" set "type_enum" = 'Ccas' where "type" = 'ccas';
update "directus"."organisation" set "type_enum" = 'Cias' where "type" = 'cias';
update "directus"."organisation" set "type_enum" = 'Association' where "type" = 'association';