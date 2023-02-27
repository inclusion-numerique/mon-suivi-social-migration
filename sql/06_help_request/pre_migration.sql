alter table "directus"."help_requests" add private_synthesis text null;
update "directus"."help_requests" hr set private_synthesis = (
    select private_synthesis
        FROM directus.private_help_request_synthesis s
        where hr.id = s.help_request
);

alter table "directus"."help_requests" add structure_id uuid null;
update "directus"."help_requests" hr set structure_id = (
    select u.organisation
        FROM directus.beneficiary b, directus.beneficiary_referents br, directus.directus_users u
        where hr.beneficiary = b.id AND b.id = br.beneficiary AND br.referent = u.id 
        LIMIT 1
);

alter table "directus"."help_requests" add prescribing_organization_id uuid null;
update "directus"."help_requests" hr set prescribing_organization_id = (
    select po.id
        FROM public.prescribing_organization po
        where po.legacy_id = organisme_prescripteur 
);

alter table "directus"."help_requests" add type_id uuid null;
update "directus"."help_requests" hr set type_id = (
    select ft.id
        FROM public.followup_type ft
        where ft.legacy_id = follow_up_type
);

ALTER TABLE "directus"."help_requests" ADD status_enum text NULL;
update "directus"."help_requests" set "status_enum" = 'WaitingAdditionalInformation' where "status" = 'waiting_additional_information';
update "directus"."help_requests" set "status_enum" = 'InvestigationOngoing' where "status" = 'investigation_ongoing';
update "directus"."help_requests" set "status_enum" = 'Accepted' where "status" = 'accepted';
update "directus"."help_requests" set "status_enum" = 'Refused' where "status" = 'refused';
update "directus"."help_requests" set "status_enum" = 'Adjourned' where "status" = 'ajourne';
update "directus"."help_requests" set "status_enum" = 'ClosedByBeneficiary' where "status" = 'closed_by_beneficiary';
update "directus"."help_requests" set "status_enum" = 'Dismissed' where "status" = 'dismissed';

ALTER TABLE "directus"."help_requests" ADD payment_method_enum text NULL;
update "directus"."help_requests" set "payment_method_enum" = 'WireTransfer' where "payment_method" = 'bank_transfer';
update "directus"."help_requests" set "payment_method_enum" = 'CreditCard' where "payment_method" = 'credit_card';
update "directus"."help_requests" set "payment_method_enum" = 'Cash' where "payment_method" = 'cash';
update "directus"."help_requests" set "payment_method_enum" = 'Check' where "payment_method" = 'cheque';
update "directus"."help_requests" set "payment_method_enum" = 'FoodStamps' where "payment_method" = 'food_coupon';

ALTER TABLE "directus"."help_requests" ADD reason_enum text NULL;
update "directus"."help_requests" set "reason_enum" = 'Energy' where "reason" = 'energy';
update "directus"."help_requests" set "reason_enum" = 'Food' where "reason" = 'food';
update "directus"."help_requests" set "reason_enum" = 'Housing' where "reason" ='housing'; 
update "directus"."help_requests" set "reason_enum" = 'Other' where "reason" ='other'; 

