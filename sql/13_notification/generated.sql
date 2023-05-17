INSERT INTO "public"."notification" (created, id, read, recipient_id, type, document_id, help_request_id, followup_id) SELECT date_created, id, read, recipient, Cast(type_enum as "NotificationType"), document_id, help_request_id, followup_id FROM "directus"."notifications";