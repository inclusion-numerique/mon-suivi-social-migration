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
update "directus"."beneficiary" set "main_income_type_enum" = json(replace("main_income_type_enum"::text, 'child_support', 'PensionAlimentaire'));

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
update "directus"."beneficiary" set major_children_main_income_type_enum = json(replace(major_children_main_income_type_enum::text, 'child_support', 'PensionAlimentaire'));

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
update "directus"."beneficiary" set partner_main_income_type_enum = json(replace(partner_main_income_type_enum::text, 'child_support', 'PensionAlimentaire'));

ALTER TABLE "directus"."beneficiary" ADD COLUMN IF NOT EXISTS "structure_id" uuid NULL;
update "directus"."beneficiary" b set "structure_id" = (
       SELECT r.organisation
        FROM "directus"."beneficiary_referents" br, "directus"."directus_users" r
        WHERE br.beneficiary = b.id
          AND br.referent = r.id
        LIMIT 1
    );


ALTER TABLE "directus"."beneficiary" ADD COLUMN IF NOT EXISTS accommodation_zone_enum text NULL;
update "directus"."beneficiary" set accommodation_zone_enum = accommodation_zone;

update "directus"."beneficiary" set accommodation_zone_enum = 'France' where accommodation_zone_enum = 'france';
update "directus"."beneficiary" set accommodation_zone_enum = 'Europe' where accommodation_zone_enum = 'eu';
update "directus"."beneficiary" set accommodation_zone_enum = 'OutsideEurope' where accommodation_zone_enum = 'outside_eu';

update "directus"."beneficiary" set aidant_connect_authorisation = false where aidant_connect_authorisation is NULL;
update "directus"."beneficiary" set no_phone = false where no_phone is NULL;
update "directus"."beneficiary" set caregiver = false where caregiver is NULL;

ALTER TABLE "directus"."beneficiary" ADD COLUMN IF NOT EXISTS pension_organisations_enum text[] NULL;
ALTER TABLE "directus"."beneficiary" ADD COLUMN IF NOT EXISTS other_pension_organisations text NULL;

CREATE TABLE temp as SELECT id, pension_organisation, pension_organisation as other_pension_organisation FROM
  (SELECT id, JSON_ARRAY_ELEMENTS_TEXT(pension_organisations) as pension_organisation FROM directus.beneficiary) AS foo;

update temp set other_pension_organisation = null where other_pension_organisation in ('agirc-arrco','ag2r','cnav-carsat','cipav','cnracl','edf','ircantec','klesia','sre','ssi','malakoff_humanis','msa','pro_btp','retraite_des_mines','other');
update temp set pension_organisation = null where other_pension_organisation is not null;
update temp set pension_organisation = 'AgircArrco' where pension_organisation = 'agirc-arrco';
update temp set pension_organisation = 'Agr' where pension_organisation = 'ag2r';
update temp set pension_organisation = 'CnavCarsat' where pension_organisation = 'cnav-carsat';
update temp set pension_organisation = 'Cipav' where pension_organisation = 'cipav';
update temp set pension_organisation = 'Cnracl' where pension_organisation = 'cnracl';
update temp set pension_organisation = 'Edf' where pension_organisation = 'edf';
update temp set pension_organisation = 'Ircantec' where pension_organisation = 'ircantec';
update temp set pension_organisation = 'Klesia' where pension_organisation = 'klesia';
update temp set pension_organisation = 'Sre' where pension_organisation = 'sre';
update temp set pension_organisation = 'Ssi' where pension_organisation = 'ssi';
update temp set pension_organisation = 'MalakoffHumanis' where pension_organisation = 'malakoff_humanis';
update temp set pension_organisation = 'Msa' where pension_organisation = 'msa';
update temp set pension_organisation = 'ProBtp' where pension_organisation = 'pro_btp';
update temp set pension_organisation = 'RetraiteDesMines' where pension_organisation = 'retraite_des_mines';
update temp set pension_organisation = 'Other' where pension_organisation = 'other';

CREATE TABLE temp2 as SELECT id, CAST (CONCAT('{', string_agg(pension_organisation, ', '), '}') AS text[]) pension_organisations, string_agg(other_pension_organisation, ', ') other_pension_organisations FROM temp GROUP BY id;
update temp2 set pension_organisations = null where pension_organisations = '{}';

update directus.beneficiary b set pension_organisations_enum = (select pension_organisations from temp2 t where t.id = b.id);
update directus.beneficiary b set other_pension_organisations = (select other_pension_organisations from temp2 t where t.id = b.id);

ALTER TABLE "directus"."beneficiary" ADD COLUMN IF NOT EXISTS ministere_structure_enum text NULL;
update "directus"."beneficiary" set "ministere_structure_enum" = 'AdministrationCentrale' where "ministere_structure" = 'administration_centrale';
update "directus"."beneficiary" set "ministere_structure_enum" = 'Ars' where "ministere_structure" = 'ars';
update "directus"."beneficiary" set "ministere_structure_enum" = 'DreetsDeetsOutreMer' where "ministere_structure" = 'dreets_deets_outre_mer';
update "directus"."beneficiary" set "ministere_structure_enum" = 'Ddets' where "ministere_structure" = 'ddets';
update "directus"."beneficiary" set "ministere_structure_enum" = 'Ddetspp' where "ministere_structure" = 'ddetspp';
update "directus"."beneficiary" set "ministere_structure_enum" = 'Ddpp' where "ministere_structure" = 'ddpp';
update "directus"."beneficiary" set "ministere_structure_enum" = 'InjaInjs' where "ministere_structure" = 'inja_injs';
update "directus"."beneficiary" set "ministere_structure_enum" = 'Ehesp' where "ministere_structure" = 'ehesp';
update "directus"."beneficiary" set "ministere_structure_enum" = 'Intefp' where "ministere_structure" = 'intefp';
update "directus"."beneficiary" set "ministere_structure_enum" = 'Mnc' where "ministere_structure" = 'mnc';
update "directus"."beneficiary" set "ministere_structure_enum" = 'Retraites' where "ministere_structure" = 'retraites';
update "directus"."beneficiary" set "ministere_structure_enum" = 'Other' where "ministere_structure" = 'other';

ALTER TABLE "directus"."beneficiary" ADD COLUMN IF NOT EXISTS ministere_categorie_enum text NULL;
update "directus"."beneficiary" set "ministere_structure_enum" = 'CategorieA' where "ministere_structure" = 'categorie_a';
update "directus"."beneficiary" set "ministere_structure_enum" = 'CategorieB' where "ministere_structure" = 'categorie_b';
update "directus"."beneficiary" set "ministere_structure_enum" = 'CategorieC' where "ministere_structure" = 'categorie_c';
update "directus"."beneficiary" set "ministere_structure_enum" = 'CadreDroitPrive' where "ministere_structure" = 'cadre_droit_prive';
update "directus"."beneficiary" set "ministere_structure_enum" = 'NonCadreDroitPrive' where "ministere_structure" = 'non_cadre_droit_prive';

ALTER TABLE "directus"."beneficiary" ADD COLUMN IF NOT EXISTS ministere_departement_service_ac_enum text NULL;
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Ain01' where "ministere_departement_service_ac" = 'ain_01';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Aisne02' where "ministere_departement_service_ac" = 'aisne_02';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Allier03' where "ministere_departement_service_ac" = 'allier_03';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'AlpeDeHauteProvence04' where "ministere_departement_service_ac" = 'alpe_de_haute_provence_04';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'HautesAlpes05' where "ministere_departement_service_ac" = 'hautes_alpes_05';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'AlpesMaritimes06' where "ministere_departement_service_ac" = 'alpes_maritimes_06';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Ardeche07' where "ministere_departement_service_ac" = 'ardeche_07';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Ardennes08' where "ministere_departement_service_ac" = 'ardennes_08';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Ariege09' where "ministere_departement_service_ac" = 'ariege_09';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Aube10' where "ministere_departement_service_ac" = 'aube_10';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Aude11' where "ministere_departement_service_ac" = 'aude_11';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Aveyron12' where "ministere_departement_service_ac" = 'aveyron_12';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'BouchesDuRhone13' where "ministere_departement_service_ac" = 'bouches_du_rhone_13';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Calvados14' where "ministere_departement_service_ac" = 'calvados_14';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Cantal15' where "ministere_departement_service_ac" = 'cantal_15';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Charente16' where "ministere_departement_service_ac" = 'charente_16';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'CharenteMaritime17' where "ministere_departement_service_ac" = 'charente_maritime_17';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Cher18' where "ministere_departement_service_ac" = 'cher_18';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Correze19' where "ministere_departement_service_ac" = 'correze_19';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'CoteDOr21' where "ministere_departement_service_ac" = 'cote_d_or_21';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'CotesDArmor22' where "ministere_departement_service_ac" = 'cotes_d_armor_22';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Creuse23' where "ministere_departement_service_ac" = 'creuse_23';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Dordogne24' where "ministere_departement_service_ac" = 'dordogne_24';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Doubs25' where "ministere_departement_service_ac" = 'doubs_25';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Drome26' where "ministere_departement_service_ac" = 'drome_26';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Eure27' where "ministere_departement_service_ac" = 'eure_27';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'EureEtLoir28' where "ministere_departement_service_ac" = 'eure_et_loir_28';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Finistere29' where "ministere_departement_service_ac" = 'finistere_29';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'CorseDuSud2a' where "ministere_departement_service_ac" = 'corse_du_sud_2a';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'HauteCorse2b' where "ministere_departement_service_ac" = 'haute_corse_2b';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Gard30' where "ministere_departement_service_ac" = 'gard_30';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'HauteGaronne31' where "ministere_departement_service_ac" = 'haute_garonne_31';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Gers32' where "ministere_departement_service_ac" = 'gers_32';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Gironde33' where "ministere_departement_service_ac" = 'gironde_33';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Herault34' where "ministere_departement_service_ac" = 'herault_34';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'IlleEtVilaine35' where "ministere_departement_service_ac" = 'ille_et_vilaine_35';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Indre36' where "ministere_departement_service_ac" = 'indre_36';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'IndreEtLoire37' where "ministere_departement_service_ac" = 'indre_et_loire_37';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Isere38' where "ministere_departement_service_ac" = 'isere_38';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Jura39' where "ministere_departement_service_ac" = 'jura_39';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Landes40' where "ministere_departement_service_ac" = 'landes_40';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'LoirEtCher41' where "ministere_departement_service_ac" = 'loir_et_cher_41';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Loire42' where "ministere_departement_service_ac" = 'loire_42';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'HauteLoire43' where "ministere_departement_service_ac" = 'haute_loire_43';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'LoireAtlantique44' where "ministere_departement_service_ac" = 'loire_atlantique_44';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Loiret45' where "ministere_departement_service_ac" = 'loiret_45';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Lot46' where "ministere_departement_service_ac" = 'lot_46';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'LotEtGaronne47' where "ministere_departement_service_ac" = 'lot_et_garonne_47';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Lozere48' where "ministere_departement_service_ac" = 'lozere_48';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'MaineEtLoire49' where "ministere_departement_service_ac" = 'maine_et_loire_49';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Manche50' where "ministere_departement_service_ac" = 'manche_50';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Marne51' where "ministere_departement_service_ac" = 'marne_51';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'HauteMarne52' where "ministere_departement_service_ac" = 'haute_marne_52';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Mayenne53' where "ministere_departement_service_ac" = 'mayenne_53';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'MeurtheEtMoselle54' where "ministere_departement_service_ac" = 'meurthe_et_moselle_54';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Meuse55' where "ministere_departement_service_ac" = 'meuse_55';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Morbihan56' where "ministere_departement_service_ac" = 'morbihan_56';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Moselle57' where "ministere_departement_service_ac" = 'moselle_57';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Nievre58' where "ministere_departement_service_ac" = 'nievre_58';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Nord59' where "ministere_departement_service_ac" = 'nord_59';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Oise60' where "ministere_departement_service_ac" = 'oise_60';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Orne61' where "ministere_departement_service_ac" = 'orne_61';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'PasDeCalais62' where "ministere_departement_service_ac" = 'pas_de_calais_62';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'PuyDeDome63' where "ministere_departement_service_ac" = 'puy_de_dome_63';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'PyreneesAtlantiques64' where "ministere_departement_service_ac" = 'pyrenees_atlantiques_64';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'HautesPyrenees65' where "ministere_departement_service_ac" = 'hautes_pyrenees_65';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'PyreneesOrientales66' where "ministere_departement_service_ac" = 'pyrenees_orientales_66';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'BasRhin67' where "ministere_departement_service_ac" = 'bas_rhin_67';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'HautRhin68' where "ministere_departement_service_ac" = 'haut_rhin_68';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Rhone69' where "ministere_departement_service_ac" = 'rhone_69';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'HauteSaone70' where "ministere_departement_service_ac" = 'haute_saone_70';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'SaoneEtLoire71' where "ministere_departement_service_ac" = 'saone_et_loire_71';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Sarthe72' where "ministere_departement_service_ac" = 'sarthe_72';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Savoie73' where "ministere_departement_service_ac" = 'savoie_73';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'HauteSavoie74' where "ministere_departement_service_ac" = 'haute_savoie_74';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Paris75' where "ministere_departement_service_ac" = 'paris_75';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'SeineMaritime76' where "ministere_departement_service_ac" = 'seine_maritime_76';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'SeineEtMarne77' where "ministere_departement_service_ac" = 'seine_et_marne_77';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Yvelines78' where "ministere_departement_service_ac" = 'yvelines_78';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'DeuxSevres79' where "ministere_departement_service_ac" = 'deux_sevres_79';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Somme80' where "ministere_departement_service_ac" = 'somme_80';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Tarn81' where "ministere_departement_service_ac" = 'tarn_81';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'TarnEtGaronne82' where "ministere_departement_service_ac" = 'tarn_et_garonne_82';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Var83' where "ministere_departement_service_ac" = 'var_83';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Vaucluse84' where "ministere_departement_service_ac" = 'vaucluse_84';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Vendee85' where "ministere_departement_service_ac" = 'vendee_85';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Vienne86' where "ministere_departement_service_ac" = 'vienne_86';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'HauteVienne87' where "ministere_departement_service_ac" = 'haute_vienne_87';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Vosges88' where "ministere_departement_service_ac" = 'vosges_88';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Yonne89' where "ministere_departement_service_ac" = 'yonne_89';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'TerritoireDeBelfort90' where "ministere_departement_service_ac" = 'territoire_de_belfort_90';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Essonne91' where "ministere_departement_service_ac" = 'essonne_91';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'HautsDeSeine92' where "ministere_departement_service_ac" = 'hauts_de_seine_92';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'SeineSaintDenis93' where "ministere_departement_service_ac" = 'seine_saint_denis_93';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'ValDeMarne94' where "ministere_departement_service_ac" = 'val_de_marne_94';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'ValDOise95' where "ministere_departement_service_ac" = 'val_d_oise_95';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Guadeloupe971' where "ministere_departement_service_ac" = 'guadeloupe_971';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Martinique972' where "ministere_departement_service_ac" = 'martinique_972';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Guyane973' where "ministere_departement_service_ac" = 'guyane_973';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'LaReunion974' where "ministere_departement_service_ac" = 'la_reunion_974';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'SaintPierreEtMiquelon975' where "ministere_departement_service_ac" = 'saint_pierre_et_miquelon_975';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Mayotte976' where "ministere_departement_service_ac" = 'mayotte_976';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'TerresAustralesEtAntarctiques984' where "ministere_departement_service_ac" = 'terres_australes_et_antarctiques_984';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'WallisEtFutuna986' where "ministere_departement_service_ac" = 'wallis_et_futuna_986';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'PolynesieFrancaise987' where "ministere_departement_service_ac" = 'polynesie_française_987';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'NouvelleCaledonie988' where "ministere_departement_service_ac" = 'nouvelle_caledonie_988';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'AgentsEnInstanceDAffectation' where "ministere_departement_service_ac" = 'agents_en_instance_d_affectation';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Chatefp' where "ministere_departement_service_ac" = 'chatefp';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Cncp' where "ministere_departement_service_ac" = 'cncp';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Cnefop' where "ministere_departement_service_ac" = 'cnefop';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Cng' where "ministere_departement_service_ac" = 'cng';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Cnit' where "ministere_departement_service_ac" = 'cnit';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Cnml' where "ministere_departement_service_ac" = 'cnml';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Comjs' where "ministere_departement_service_ac" = 'comjs';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Daj' where "ministere_departement_service_ac" = 'daj';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Dares' where "ministere_departement_service_ac" = 'dares';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Dgefp' where "ministere_departement_service_ac" = 'dgefp';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Dgos' where "ministere_departement_service_ac" = 'dgos';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Dgp' where "ministere_departement_service_ac" = 'dgp';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Dgs' where "ministere_departement_service_ac" = 'dgs';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Dgt' where "ministere_departement_service_ac" = 'dgt';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Diges' where "ministere_departement_service_ac" = 'diges';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Djepva' where "ministere_departement_service_ac" = 'djepva';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Dnum' where "ministere_departement_service_ac" = 'dnum';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Drh' where "ministere_departement_service_ac" = 'drh';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Ds' where "ministere_departement_service_ac" = 'ds';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Igas' where "ministere_departement_service_ac" = 'igas';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Igjs' where "ministere_departement_service_ac" = 'igjs';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'SecretariatAuxPersonnesHandicapees' where "ministere_departement_service_ac" = 'secretariat_aux_personnes_handicapees';
update "directus"."beneficiary" set "ministere_departement_service_ac_enum" = 'Sgmcas' where "ministere_departement_service_ac" = 'sgmcas';

update "directus"."beneficiary" set "usual_name" = upper("usual_name");
update "directus"."beneficiary" set "birth_name" = upper("birth_name");
update "directus"."beneficiary" set "firstname" = concat(upper(substring("firstname" for 1)), substring("firstname" from 2));

DROP TABLE temp;
DROP TABLE temp2;

delete from directus.beneficiary where structure_id is null;
