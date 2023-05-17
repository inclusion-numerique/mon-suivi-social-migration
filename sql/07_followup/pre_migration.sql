alter table directus.follow_ups add column if not exists status_enum text null;
update directus.follow_ups set status_enum = 'Done' where status = 'done';
update directus.follow_ups set status_enum = 'InProgress' where status = 'ongoing';
update directus.follow_ups set status_enum = 'Todo' where status = 'to_address';

alter table directus.follow_ups add column if not exists medium_enum text null;
 update directus.follow_ups set medium_enum = 'ThirdParty' where "type" = 'interview_with_third_person';
 update directus.follow_ups set medium_enum = 'UnplannedInPerson' where "type" = 'physical_spontaneous';
 update directus.follow_ups set medium_enum = 'PlannedInPerson' where "type" = 'physical_meeting';
 update directus.follow_ups set medium_enum = 'Email' where "type" = 'email';
 update directus.follow_ups set medium_enum = 'PostalMail' where "type" = 'mail';
 update directus.follow_ups set medium_enum = 'PhoneCall' where "type" = 'phone';
 update directus.follow_ups set medium_enum = 'Videoconference' where "type" = 'videoconference';
 update directus.follow_ups set medium_enum = 'ExternalAppointment' where "type" = 'outside';
 update directus.follow_ups set medium_enum = 'BeneficiaryHouseAppointment' where "type" = 'home';

alter table directus.follow_ups add column if not exists interventions_enum json null;
update directus.follow_ups set interventions_enum = interventions;
update "directus"."follow_ups" set interventions_enum = json(replace(interventions_enum::text, 'deets_siao', 'DeetsSiao'));
update "directus"."follow_ups" set interventions_enum = json(replace(interventions_enum::text, 'prefecture', 'Prefecture'));
update "directus"."follow_ups" set interventions_enum = json(replace(interventions_enum::text, 'baileurs', 'Bailleur'));
update "directus"."follow_ups" set interventions_enum = json(replace(interventions_enum::text, 'action_logement', 'ActionLogement'));
update "directus"."follow_ups" set interventions_enum = json(replace(interventions_enum::text, 'secours_medecin_traitant', 'SecoursMedecinTraitant'));

alter table directus.follow_ups add column if not exists signalements_enum json null;
update directus.follow_ups set signalements_enum = signalements;
update "directus"."follow_ups" set signalements_enum = json(replace(signalements_enum::text, 'chef_de_cabinet', 'ChefCabinet'));
update "directus"."follow_ups" set signalements_enum = json(replace(signalements_enum::text, 'prefet', 'Prefet'));
update "directus"."follow_ups" set signalements_enum = json(replace(signalements_enum::text, 'organisme_menace', 'OrganismeMenace'));

alter table "directus"."follow_ups" add column if not exists private_synthesis text null;
update "directus"."follow_ups" fu set private_synthesis = (
    select private_synthesis
        FROM directus.private_follow_up_synthesis s
        where fu.id = s.follow_up
);

alter table "directus"."follow_ups" add column if not exists prescribing_organization_id uuid null;
update "directus"."follow_ups" fu set prescribing_organization_id = (
    select po.id
        FROM public.prescribing_organization po
        where po.legacy_id = fu.organisme_prescripteur
);

alter table "directus"."follow_ups" add column if not exists structure_id uuid null;
update "directus"."follow_ups" fu set structure_id = (
    select u.organisation
        FROM directus.beneficiary b, directus.beneficiary_referents br, directus.directus_users u
        where fu.beneficiary = b.id AND b.id = br.beneficiary AND br.referent = u.id
        LIMIT 1
);

ALTER TABLE "directus"."follow_ups" ADD column if not exists ministre_enum text NULL;
update "directus"."follow_ups" set "ministre_enum" = 'FrancoisBraun' where "ministre" = 'braun';
update "directus"."follow_ups" set "ministre_enum" = 'AgnesFirminLeBodo' where "ministre" = 'firmin_le_bodo';
update "directus"."follow_ups" set "ministre_enum" = 'JeanChristopheCombe' where "ministre" = 'combe';
update "directus"."follow_ups" set "ministre_enum" = 'GenevieveDarrieussecq' where "ministre" = 'darrieussecq';
update "directus"."follow_ups" set "ministre_enum" = 'OlivierDussopt' where "ministre" = 'dussopt';
update "directus"."follow_ups" set "ministre_enum" = 'CaroleGrandjean' where "ministre" = 'grandjean';


