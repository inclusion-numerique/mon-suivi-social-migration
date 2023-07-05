alter table directus.notifications add column if not exists type_enum text null;

update directus.notifications set type_enum = 'NewDocument' where type = 'new_document';
update directus.notifications set type_enum = 'NewComment' where type = 'new_comment';
update directus.notifications set type_enum = 'DueDate' where type = 'due_date';
update directus.notifications set type_enum = 'EndOfSupport' where type = 'handling_date';

alter table directus.notifications add column if not exists document_id text null;
alter table directus.notifications add column if not exists help_request_id uuid null;
alter table directus.notifications add column if not exists followup_id uuid null;
alter table directus.notifications add column if not exists beneficiary_id uuid null;

delete from directus.notification_items where "collection" = 'directus_files'
    AND item not in (select "key" from document);

update directus.notifications n set document_id = (
    select item from directus.notification_items i where "collection" = 'directus_files' and i."notification" = n.id
    );

delete from directus.notification_items where "collection" = 'help_requests'
    AND item not in (select CAST(id AS TEXT) from help_request);

update directus.notifications n set help_request_id = (
    select CAST(item AS uuid) from directus.notification_items i where "collection" = 'help_requests' and i."notification" = n.id
    );

delete from directus.notification_items where "collection" = 'follow_ups'
    AND item not in (select CAST(id AS TEXT) from followup);

update directus.notifications n set followup_id = (
    select CAST(item AS uuid) from directus.notification_items i where "collection" = 'follow_ups' and i."notification" = n.id
    );

update directus.notifications n set "beneficiary_id" = (select "beneficiary_id" from help_request i where i.id = n.help_request_id) where help_request_id is not null;
update directus.notifications n set "beneficiary_id" = (select "beneficiary_id" from followup i where i.id = n.followup_id) where followup_id is not null;
update directus.notifications n set "beneficiary_id" = (select "beneficiary_id" from document i where i.key = n.document_id) where document_id is not null;

delete from directus.notifications where beneficiary_id is null;