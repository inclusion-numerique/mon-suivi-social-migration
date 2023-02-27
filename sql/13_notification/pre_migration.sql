alter table directus.notifications add column if not exists type_enum text null;

update directus.notifications set type_enum = 'NewDocument' where type = 'new_document';
update directus.notifications set type_enum = 'NewComment' where type = 'new_comment';
update directus.notifications set type_enum = 'DueDate' where type = 'due_date';
update directus.notifications set type_enum = 'EndOfSupport' where type = 'handling_date';