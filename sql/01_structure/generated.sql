INSERT INTO "public"."structure" (address, city, created, updated, email, id, name, phone, type, zipcode, inhabitants_number, insee_code, siret) SELECT address, city, date_created, date_updated, email, id, name, phone, CAST(type_enum AS "StructureType"), zip_code, inhabitants_number, insee_code, siret FROM "directus"."organisation";