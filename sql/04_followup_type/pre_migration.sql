alter table "directus"."follow_up_types" add COLUMN IF NOT EXISTS legally_required Boolean NULL;
update "directus"."follow_up_types" set legally_required = true where "type" = 'legal';
update "directus"."follow_up_types" set legally_required = false where "type" = 'optional';
update "directus"."follow_up_types" set date_created = now() where date_created is null;

alter table "directus"."follow_up_types" add COLUMN IF NOT EXISTS default_temp text NULL;
update "directus"."follow_up_types" set default_temp = 'AideMedicaleDEtat' where "default" is true and legally_required is true and name = 'Aide médicale d''État';
update "directus"."follow_up_types" set default_temp = 'AideSociale' where "default" is true and legally_required is true and name = 'Aide sociale';
update "directus"."follow_up_types" set default_temp = 'AllocationDeSolidariteAuxPersonnesAgees' where "default" is true and legally_required is true and name = 'Allocation de solidarité aux personnes âgées';
update "directus"."follow_up_types" set default_temp = 'AllocationPersonnaliseesDAutonomie' where "default" is true and legally_required is true and name = 'Allocation personnalisées d''autonomie';
update "directus"."follow_up_types" set default_temp = 'ComplementaireSanteSolidaire' where "default" is true and legally_required is true and name = 'Complémentaire santé solidaire';
update "directus"."follow_up_types" set default_temp = 'DemandeDAidesMenageres' where "default" is true and legally_required is true and name = 'Demande d''aides ménagères';
update "directus"."follow_up_types" set default_temp = 'Domiciliation' where "default" is true and legally_required is true and name = 'Domiciliation';
update "directus"."follow_up_types" set default_temp = 'EntreeEnEtablissementPourPersonnesHandicapees' where "default" is true and legally_required is true and name = 'Entrée en établissement pour personnes handicapées';
update "directus"."follow_up_types" set default_temp = 'EntreeEnFamilleDAccueil' where "default" is true and legally_required is true and name = 'Entrée en famille d''accueil';
update "directus"."follow_up_types" set default_temp = 'EntreeEnHebergementPourPersonnesAgees' where "default" is true and legally_required is true and name = 'Entrée en hébergement pour personnes âgées';
update "directus"."follow_up_types" set default_temp = 'ObligationAlimentaire' where "default" is true and legally_required is true and name = 'Obligation alimentaire';
update "directus"."follow_up_types" set default_temp = 'Puma' where "default" is true and legally_required is true and name = 'PUMA';
update "directus"."follow_up_types" set default_temp = 'RevenuDeSolidariteActive' where "default" is true and legally_required is true and name = 'Revenu de solidarité active';
update "directus"."follow_up_types" set default_temp = 'AccompagnementSocial' where "default" is true and legally_required is false and name = 'Accompagnement social';
update "directus"."follow_up_types" set default_temp = 'AideAlimentaire' where "default" is true and legally_required is false and name = 'Aide alimentaire';
update "directus"."follow_up_types" set default_temp = 'AideAuTransport' where "default" is true and legally_required is false and name = 'Aide au transport';
update "directus"."follow_up_types" set default_temp = 'AidesFinancieresNonRemboursables' where "default" is true and legally_required is false and name = 'Aides financières non remboursables';
update "directus"."follow_up_types" set default_temp = 'AidesFinancieresRemboursables' where "default" is true and legally_required is false and name = 'Aides financières remboursables';
update "directus"."follow_up_types" set default_temp = 'AnimationsFamilles' where "default" is true and legally_required is false and name = 'Animations familles';
update "directus"."follow_up_types" set default_temp = 'AnimationsSeniors' where "default" is true and legally_required is false and name = 'Animations seniors';
update "directus"."follow_up_types" set default_temp = 'InclusionNumerique' where "default" is true and legally_required is false and name = 'Inclusion numérique';
update "directus"."follow_up_types" set default_temp = 'Other' where "default" is true and legally_required is false and name = 'Autre';
update "directus"."follow_up_types" set default_temp = 'PlanAlerteEtUrgence' where "default" is true and legally_required is false and name = 'Plan alerte et urgence';
update "directus"."follow_up_types" set default_temp = 'SoutienAdministratif' where "default" is true and legally_required is false and name = 'Soutien administratif';

DROP TABLE IF EXISTS "directus"."follow_up_types_temp";
CREATE TABLE "directus"."follow_up_types_temp" AS (
    SELECT ft.date_created date_created
            , ft.id ft_id
            , ft.default_temp "default"
            , oft.id oft_id
            , ft.name "name"
            , ft.legally_required legally_required
            , ft.user_created user_created
            , oft.organisation_id organisation_id
        FROM "directus"."follow_up_types" ft, "directus"."organisation_follow_up_types" oft
        WHERE ft.id = oft.follow_up_types_id
);
