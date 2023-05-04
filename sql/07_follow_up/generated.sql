INSERT INTO "public"."followup" (beneficiary_id, classified, date, created, updated, due_date, first_followup, forwarded_to_justice, help_requested, id, interventions, ministre, numero_pegase, place, redirected, signalements, status, synthesis, third_person_name, medium, created_by_id, private_synthesis, prescribing_organization_id, structure_name, structure_id) SELECT beneficiary, classified, date, date_created, date_updated, due_date, first_follow_up, forwarded_to_justice, help_request, id, ARRAY(SELECT CAST(json_array_elements_text(interventions_enum) AS "FollowupIntervention")), CAST(ministre_enum as "Minister"), numero_pegase, place, redirected, ARRAY(SELECT CAST(json_array_elements_text(signalements_enum) AS "FollowupSignalement")), CAST(status_enum AS "FollowupStatus"), synthesis, third_person_name, CAST(medium_enum AS "FollowupMedium"), user_created, private_synthesis, prescribing_organization_id, organisation_name, structure_id FROM "directus"."follow_ups";