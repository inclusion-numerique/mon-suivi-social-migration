INSERT INTO "public"."notification" (created, id, read, recipient_id, type) SELECT date_created, id, read, recipient, Cast(type_enum as "NotificationType") FROM "directus"."notifications";