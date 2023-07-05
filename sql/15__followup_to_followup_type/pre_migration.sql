alter table "directus"."follow_ups_follow_up_types" add column if not exists B uuid;
update "directus"."follow_ups_follow_up_types" ff set B = (
    select ft.id
        FROM public.followup_type ft, public.followup fo
        where ft.legacy_id = ff.follow_up_types_id and ft.owned_by_structured_id = fo.structure_id and fo.id = ff.follow_ups_id
);

delete from "directus"."follow_ups_follow_up_types" where B is null;