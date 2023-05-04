alter table "directus"."follow_up_types" add COLUMN IF NOT EXISTS legally_required Boolean NULL;
update "directus"."follow_up_types" set legally_required = true where "type" = 'legal';
update "directus"."follow_up_types" set legally_required = false where "type" = 'optional';
update "directus"."follow_up_types" set date_created = now() where date_created is null;

alter table "directus"."follow_up_types" add COLUMN IF NOT EXISTS default_legally_required_key text NULL;
update "directus"."follow_up_types" set default_legally_required_key = 'AideMedicaleDEtat' where "default" is true and legally_required is true and name = 'Aide médicale d''État';
update "directus"."follow_up_types" set default_legally_required_key = 'AideSociale' where "default" is true and legally_required is true and name = 'Aide sociale';
update "directus"."follow_up_types" set default_legally_required_key = 'AllocationDeSolidariteAuxPersonnesAgees' where "default" is true and legally_required is true and name = 'Allocation de solidarité aux personnes âgées';
update "directus"."follow_up_types" set default_legally_required_key = 'AllocationPersonnaliseesDAutonomie' where "default" is true and legally_required is true and name = 'Allocation personnalisées d''autonomie';
update "directus"."follow_up_types" set default_legally_required_key = 'ComplementaireSanteSolidaire' where "default" is true and legally_required is true and name = 'Complémentaire santé solidaire';
update "directus"."follow_up_types" set default_legally_required_key = 'DemandeDAidesMenageres' where "default" is true and legally_required is true and name = 'Demande d''aides ménagères';
update "directus"."follow_up_types" set default_legally_required_key = 'Domiciliation' where "default" is true and legally_required is true and name = 'Domiciliation';
update "directus"."follow_up_types" set default_legally_required_key = 'EntreeEnEtablissementPourPersonnesHandicapees' where "default" is true and legally_required is true and name = 'Entrée en établissement pour personnes handicapées';
update "directus"."follow_up_types" set default_legally_required_key = 'EntreeEnFamilleDAccueil' where "default" is true and legally_required is true and name = 'Entrée en famille d''accueil';
update "directus"."follow_up_types" set default_legally_required_key = 'EntreeEnHebergementPourPersonnesAgees' where "default" is true and legally_required is true and name = 'Entrée en hébergement pour personnes âgées';
update "directus"."follow_up_types" set default_legally_required_key = 'ObligationAlimentaire' where "default" is true and legally_required is true and name = 'Obligation alimentaire';
update "directus"."follow_up_types" set default_legally_required_key = 'Puma' where "default" is true and legally_required is true and name = 'PUMA';
update "directus"."follow_up_types" set default_legally_required_key = 'RevenuDeSolidariteActive' where "default" is true and legally_required is true and name = 'Revenu de solidarité active';

alter table "directus"."follow_up_types" add COLUMN IF NOT EXISTS default_legally_not_required_key text NULL;
update "directus"."follow_up_types" set default_legally_not_required_key = 'AccompagnementSocial' where "default" is true and legally_required is false and name = 'Accompagnement social';
update "directus"."follow_up_types" set default_legally_not_required_key = 'AideAlimentaire' where "default" is true and legally_required is false and name = 'Aide alimentaire';
update "directus"."follow_up_types" set default_legally_not_required_key = 'AideAuTransport' where "default" is true and legally_required is false and name = 'Aide au transport';
update "directus"."follow_up_types" set default_legally_not_required_key = 'AidesFinancieresNonRemboursables' where "default" is true and legally_required is false and name = 'Aides financières non remboursables';
update "directus"."follow_up_types" set default_legally_not_required_key = 'AidesFinancieresRemboursables' where "default" is true and legally_required is false and name = 'Aides financières remboursables';
update "directus"."follow_up_types" set default_legally_not_required_key = 'AnimationsFamilles' where "default" is true and legally_required is false and name = 'Animations familles';
update "directus"."follow_up_types" set default_legally_not_required_key = 'AnimationsSeniors' where "default" is true and legally_required is false and name = 'Animations seniors';
update "directus"."follow_up_types" set default_legally_not_required_key = 'InclusionNumerique' where "default" is true and legally_required is false and name = 'Inclusion numérique';
update "directus"."follow_up_types" set default_legally_not_required_key = 'Other' where "default" is true and legally_required is false and name = 'Autre';
update "directus"."follow_up_types" set default_legally_not_required_key = 'PlanAlerteEtUrgence' where "default" is true and legally_required is false and name = 'Plan alerte et urgence';
update "directus"."follow_up_types" set default_legally_not_required_key = 'SoutienAdministratif' where "default" is true and legally_required is false and name = 'Soutien administratif';

DROP TABLE IF EXISTS "directus"."follow_up_types_temp";
CREATE TABLE "directus"."follow_up_types_temp" AS (
    SELECT ft.date_created date_created
            , ft.id ft_id
            , ft.default "default"
            , oft.id oft_id
            , ft.name "name"
            , ft.legally_required legally_required
            , ft.user_created user_created
            , ft.default_legally_required_key default_legally_required_key
            , ft.default_legally_not_required_key default_legally_not_required_key
            , oft.organisation_id organisation_id
        FROM "directus"."follow_up_types" ft, "directus"."organisation_follow_up_types" oft
        WHERE ft.id = oft.follow_up_types_id
);
