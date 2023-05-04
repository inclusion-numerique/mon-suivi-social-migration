-- "directus"."beneficiary"

ALTER TABLE "directus"."beneficiary" ADD COLUMN IF NOT EXISTS status_enum text NULL;
update "directus"."beneficiary" set "status_enum" = 'Inactive' where "status" = 'inactive';
update "directus"."beneficiary" set "status_enum" = 'Archived' where "status" = 'archived';
update "directus"."beneficiary" set "status_enum" = 'Active' where "status" = 'active';
update "directus"."beneficiary" set "status_enum" = 'Deceased' where "status" = 'deceased';

ALTER TABLE "directus"."beneficiary" ADD COLUMN IF NOT EXISTS title_enum text NULL;
update "directus"."beneficiary" set "title_enum" = 'Mister' where "title" = 'man';
update "directus"."beneficiary" set "title_enum" = 'Miss' where "title" = 'lady';

ALTER TABLE "directus"."beneficiary" ADD COLUMN IF NOT EXISTS gender_enum text NULL;
update "directus"."beneficiary" set "gender_enum" = 'Male' where "gender" = 'man';
update "directus"."beneficiary" set "gender_enum" = 'Female' where "gender" = 'lady';
update "directus"."beneficiary" set "gender_enum" = 'Other' where "gender" = 'other';

ALTER TABLE "directus"."beneficiary" ADD COLUMN IF NOT EXISTS accommodation_mode_enum text NULL;
update "directus"."beneficiary" set "accommodation_mode_enum" = 'Owner' where "accommodation_mode" = 'landlord';
update "directus"."beneficiary" set "accommodation_mode_enum" = 'None' where "accommodation_mode" = 'no_accommodation';
update "directus"."beneficiary" set "accommodation_mode_enum" = 'Fortune' where "accommodation_mode" = 'makshift_accommodation';
update "directus"."beneficiary" set "accommodation_mode_enum" = 'Other' where "accommodation_mode" = 'other_accommodation';
update "directus"."beneficiary" set "accommodation_mode_enum" = 'SocialRenting' where "accommodation_mode" = 'social_tenant';
update "directus"."beneficiary" set "accommodation_mode_enum" = 'ThirdPerson' where "accommodation_mode" = 'third_party_hosting';
update "directus"."beneficiary" set "accommodation_mode_enum" = 'NursingHome' where "accommodation_mode" = 'retirement_home';
update "directus"."beneficiary" set "accommodation_mode_enum" = 'Parents' where "accommodation_mode" = 'parental_hosting';
update "directus"."beneficiary" set "accommodation_mode_enum" = 'EmergencyHousing' where "accommodation_mode" = 'collective_accommodation';
update "directus"."beneficiary" set "accommodation_mode_enum" = 'PrivateRenting' where "accommodation_mode" = 'private_tenant';

ALTER TABLE "directus"."beneficiary" ADD COLUMN IF NOT EXISTS mobility_enum text NULL;
update "directus"."beneficiary" set "mobility_enum" = 'OtherPermit' where "mobility" = 'other_licences';
update "directus"."beneficiary" set "mobility_enum" = 'BikeOrEquivalent' where "mobility" = 'bike';
update "directus"."beneficiary" set "mobility_enum" = 'PermitWithVehicle' where "mobility" = 'licence_vehicle';
update "directus"."beneficiary" set "mobility_enum" = 'VehicleWithoutPermit' where "mobility" = 'no_licence_vehicle';
update "directus"."beneficiary" set "mobility_enum" = 'PublicTransport' where "mobility" = 'public_transport';
update "directus"."beneficiary" set "mobility_enum" = 'PermitPending' where "mobility" = 'licence_in_progress';
update "directus"."beneficiary" set "mobility_enum" = 'InvalidPermit' where "mobility" = 'invalid_licence';
update "directus"."beneficiary" set "mobility_enum" = 'None' where "mobility" = 'no_mobility';
update "directus"."beneficiary" set "mobility_enum" = 'PermitWithoutVehicle' where "mobility" = 'licence_only';

ALTER TABLE "directus"."beneficiary" ADD COLUMN IF NOT EXISTS family_situation_enum text NULL;
update "directus"."beneficiary" set "family_situation_enum" = 'Married' where "family_situation" = 'married';
update "directus"."beneficiary" set "family_situation_enum" = 'Other' where "family_situation" = 'other';
update "directus"."beneficiary" set "family_situation_enum" = 'Widow' where "family_situation" = 'widower';
update "directus"."beneficiary" set "family_situation_enum" = 'Single' where "family_situation" = 'single';
update "directus"."beneficiary" set "family_situation_enum" = 'Divorced' where "family_situation" = 'divorced';
update "directus"."beneficiary" set "family_situation_enum" = 'Separated' where "family_situation" = 'separated';
update "directus"."beneficiary" set "family_situation_enum" = 'CivilUnion' where "family_situation" = 'pacs';
update "directus"."beneficiary" set "family_situation_enum" = 'SingleParentWithChildren' where "family_situation" = 'single_parent';
update "directus"."beneficiary" set "family_situation_enum" = 'Cohabitation' where "family_situation" = 'concubinage';
update "directus"."beneficiary" set "family_situation_enum" = 'CoupleWithChildren' where "family_situation" = 'couple_children';

ALTER TABLE "directus"."beneficiary" ADD COLUMN IF NOT EXISTS gir_enum text NULL;
update "directus"."beneficiary" set "gir_enum" = 'Level1' where "gir" = 'gir_1';
update "directus"."beneficiary" set "gir_enum" = 'Level2' where "gir" = 'gir_2';
update "directus"."beneficiary" set "gir_enum" = 'Level3' where "gir" = 'gir_3';
update "directus"."beneficiary" set "gir_enum" = 'Level4' where "gir" = 'gir_4';
update "directus"."beneficiary" set "gir_enum" = 'Level5' where "gir" = 'gir_5';
update "directus"."beneficiary" set "gir_enum" = 'Level6' where "gir" = 'gir_6';

ALTER TABLE "directus"."beneficiary" ADD COLUMN IF NOT EXISTS socio_professional_category_enum text NULL;
update "directus"."beneficiary" set "socio_professional_category_enum" = 'Employed' where "socio_professional_category" = 'employed';
update "directus"."beneficiary" set "socio_professional_category_enum" = 'Retired' where "socio_professional_category" = 'retired';
update "directus"."beneficiary" set "socio_professional_category_enum" = 'JobSeeker' where "socio_professional_category" = 'job_seeker';
update "directus"."beneficiary" set "socio_professional_category_enum" = 'Disability' where "socio_professional_category" = 'disability';
update "directus"."beneficiary" set "socio_professional_category_enum" = 'SickLeave' where "socio_professional_category" = 'sick_leave';
update "directus"."beneficiary" set "socio_professional_category_enum" = 'Housewife' where "socio_professional_category" = 'housewife';
update "directus"."beneficiary" set "socio_professional_category_enum" = 'NoActivity' where "socio_professional_category" = 'no_activity';
update "directus"."beneficiary" set "socio_professional_category_enum" = 'Other' where "socio_professional_category" = 'other';

ALTER TABLE "directus"."beneficiary" ADD COLUMN IF NOT EXISTS protection_measure_enum text NULL;
update "directus"."beneficiary" set "protection_measure_enum" = 'Tutelle' where "protection_measure" = 'care';
update "directus"."beneficiary" set "protection_measure_enum" = 'CuratelleSimple' where "protection_measure" = 'simple_protection';
update "directus"."beneficiary" set "protection_measure_enum" = 'CuratelleRenforcee' where "protection_measure" = 'protection_intensified';
update "directus"."beneficiary" set "protection_measure_enum" = 'SauvegardeDeJustice' where "protection_measure" = 'justice_safeguard';
update "directus"."beneficiary" set "protection_measure_enum" = 'HabilitationFamiliale' where "protection_measure" = 'family_authorisation';
update "directus"."beneficiary" set "protection_measure_enum" = 'MesureAccompagnement' where "protection_measure" = 'support_measure';
update "directus"."beneficiary" set "protection_measure_enum" = 'MandatDeProtectionFuture' where "protection_measure" = 'future_protection_mandate';
update "directus"."beneficiary" set "protection_measure_enum" = 'HabilitationDuConjoint' where "protection_measure" = 'spouse_authorisation';

ALTER TABLE "directus"."beneficiary" ADD COLUMN IF NOT EXISTS orientation_type_enum text NULL;
update "directus"."beneficiary" set "orientation_type_enum" = 'Spontanee' where "orientation_type" = 'spontaneous';
update "directus"."beneficiary" set "orientation_type_enum" = 'Elu' where "orientation_type" = 'representative';
update "directus"."beneficiary" set "orientation_type_enum" = 'Departement' where "orientation_type" = 'department';
update "directus"."beneficiary" set "orientation_type_enum" = 'Association' where "orientation_type" = 'non_profit';
update "directus"."beneficiary" set "orientation_type_enum" = 'Tiers' where "orientation_type" = 'third_party_report';
update "directus"."beneficiary" set "orientation_type_enum" = 'SuiviCabinet' where "orientation_type" = 'staff_care';
update "directus"."beneficiary" set "orientation_type_enum" = 'Autre' where "orientation_type" = 'other';

ALTER TABLE "directus"."beneficiary" ADD COLUMN IF NOT EXISTS "main_income_type_enum" json NULL;
update "directus"."beneficiary" set main_income_type_enum = main_income_type;

update "directus"."beneficiary" set "main_income_type_enum" = json(replace("main_income_type_enum"::text, 'unemployment_benefit', 'IndemnitesPoleEmploi'));
update "directus"."beneficiary" set "main_income_type_enum" = json(replace("main_income_type_enum"::text, 'rsa', 'Rsa'));
update "directus"."beneficiary" set "main_income_type_enum" = json(replace("main_income_type_enum"::text, 'bonus', 'PrimeActivite'));
update "directus"."beneficiary" set "main_income_type_enum" = json(replace("main_income_type_enum"::text, 'family_benefits', 'PrestationsFamiliales'));
update "directus"."beneficiary" set "main_income_type_enum" = json(replace("main_income_type_enum"::text, 'income', 'Salaire'));
update "directus"."beneficiary" set "main_income_type_enum" = json(replace("main_income_type_enum"::text, 'pension', 'Retraite'));
update "directus"."beneficiary" set "main_income_type_enum" = json(replace("main_income_type_enum"::text, 'aspa', 'Aspa'));
update "directus"."beneficiary" set "main_income_type_enum" = json(replace("main_income_type_enum"::text, 'disability_allowance', 'PensionInvalidite'));
update "directus"."beneficiary" set "main_income_type_enum" = json(replace("main_income_type_enum"::text, 'daily_payments', 'IndemnitesJournalieres'));
update "directus"."beneficiary" set "main_income_type_enum" = json(replace("main_income_type_enum"::text, 'aah', 'Aah'));
update "directus"."beneficiary" set "main_income_type_enum" = json(replace("main_income_type_enum"::text, 'apl', 'Apl'));
update "directus"."beneficiary" set "main_income_type_enum" = json(replace("main_income_type_enum"::text, 'other', 'Autre'));

ALTER TABLE "directus"."beneficiary" ADD COLUMN IF NOT EXISTS major_children_main_income_type_enum json NULL;
update "directus"."beneficiary" set major_children_main_income_type_enum = major_children_main_income_type;

update "directus"."beneficiary" set major_children_main_income_type_enum = json(replace(major_children_main_income_type_enum::text, 'unemployment_benefit', 'IndemnitesPoleEmploi'));
update "directus"."beneficiary" set major_children_main_income_type_enum = json(replace(major_children_main_income_type_enum::text, 'rsa', 'Rsa'));
update "directus"."beneficiary" set major_children_main_income_type_enum = json(replace(major_children_main_income_type_enum::text, 'bonus', 'PrimeActivite'));
update "directus"."beneficiary" set major_children_main_income_type_enum = json(replace(major_children_main_income_type_enum::text, 'family_benefits', 'PrestationsFamiliales'));
update "directus"."beneficiary" set major_children_main_income_type_enum = json(replace(major_children_main_income_type_enum::text, 'income', 'Salaire'));
update "directus"."beneficiary" set major_children_main_income_type_enum = json(replace(major_children_main_income_type_enum::text, 'pension', 'Retraite'));
update "directus"."beneficiary" set major_children_main_income_type_enum = json(replace(major_children_main_income_type_enum::text, 'aspa', 'Aspa'));
update "directus"."beneficiary" set major_children_main_income_type_enum = json(replace(major_children_main_income_type_enum::text, 'disability_allowance', 'PensionInvalidite'));
update "directus"."beneficiary" set major_children_main_income_type_enum = json(replace(major_children_main_income_type_enum::text, 'daily_payments', 'IndemnitesJournalieres'));
update "directus"."beneficiary" set major_children_main_income_type_enum = json(replace(major_children_main_income_type_enum::text, 'aah', 'Aah'));
update "directus"."beneficiary" set major_children_main_income_type_enum = json(replace(major_children_main_income_type_enum::text, 'apl', 'Apl'));
update "directus"."beneficiary" set major_children_main_income_type_enum = json(replace(major_children_main_income_type_enum::text, 'other', 'Autre'));

ALTER TABLE "directus"."beneficiary" ADD COLUMN IF NOT EXISTS partner_main_income_type_enum json NULL;
update "directus"."beneficiary" set partner_main_income_type_enum = partner_main_income_type;

update "directus"."beneficiary" set partner_main_income_type_enum = json(replace(partner_main_income_type_enum::text, 'unemployment_benefit', 'IndemnitesPoleEmploi'));
update "directus"."beneficiary" set partner_main_income_type_enum = json(replace(partner_main_income_type_enum::text, 'rsa', 'Rsa'));
update "directus"."beneficiary" set partner_main_income_type_enum = json(replace(partner_main_income_type_enum::text, 'bonus', 'PrimeActivite'));
update "directus"."beneficiary" set partner_main_income_type_enum = json(replace(partner_main_income_type_enum::text, 'family_benefits', 'PrestationsFamiliales'));
update "directus"."beneficiary" set partner_main_income_type_enum = json(replace(partner_main_income_type_enum::text, 'income', 'Salaire'));
update "directus"."beneficiary" set partner_main_income_type_enum = json(replace(partner_main_income_type_enum::text, 'pension', 'Retraite'));
update "directus"."beneficiary" set partner_main_income_type_enum = json(replace(partner_main_income_type_enum::text, 'aspa', 'Aspa'));
update "directus"."beneficiary" set partner_main_income_type_enum = json(replace(partner_main_income_type_enum::text, 'disability_allowance', 'PensionInvalidite'));
update "directus"."beneficiary" set partner_main_income_type_enum = json(replace(partner_main_income_type_enum::text, 'daily_payments', 'IndemnitesJournalieres'));
update "directus"."beneficiary" set partner_main_income_type_enum = json(replace(partner_main_income_type_enum::text, 'aah', 'Aah'));
update "directus"."beneficiary" set partner_main_income_type_enum = json(replace(partner_main_income_type_enum::text, 'apl', 'Apl'));
update "directus"."beneficiary" set partner_main_income_type_enum = json(replace(partner_main_income_type_enum::text, 'other', 'Autre'));

ALTER TABLE "directus"."beneficiary" ADD COLUMN IF NOT EXISTS "structure_id" uuid NULL;
update "directus"."beneficiary" b set "structure_id" = (
       SELECT r.organisation
        FROM "directus"."beneficiary_referents" br, "directus"."directus_users" r
        WHERE br.beneficiary = b.id
          AND br.referent = r.id
        LIMIT 1
    );


ALTER TABLE "directus"."beneficiary" ADD COLUMN IF NOT EXISTS accommodation_zone_enum json NULL;
update "directus"."beneficiary" set accommodation_zone_enum = accommodation_zone;

update "directus"."beneficiary" set accommodation_zone_enum = 'France' where accommodation_zone_enum = 'france';
update "directus"."beneficiary" set accommodation_zone_enum = 'Europe' where accommodation_zone_enum = 'eu';
update "directus"."beneficiary" set accommodation_zone_enum = 'OutsideEurope' where accommodation_zone_enum = 'outside_eu';
