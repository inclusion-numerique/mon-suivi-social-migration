delete from directus.directus_activity where "action" = 'run';
delete from directus.directus_activity where "user" is null;
delete from directus.directus_activity where "user" not in (select id from directus.directus_users);

UPDATE directus.directus_activity set "action" = 'LOGIN' where "action" = 'login';
UPDATE directus.directus_activity set "action" = 'DELETE' where "action" = 'delete';
UPDATE directus.directus_activity set "action" = 'UPDATE' where "action" = 'update';
UPDATE directus.directus_activity set "action" = 'CREATE' where "action" = 'create';

UPDATE directus.directus_activity set "collection" = 'Followup' where "collection" = 'follow_ups';
UPDATE directus.directus_activity set "collection" = 'User' where "collection" = 'directus_users';
UPDATE directus.directus_activity set "collection" = 'HelpRequest' where "collection" = 'help_requests';
UPDATE directus.directus_activity set "collection" = 'Beneficiary' where "collection" = 'beneficiary';
UPDATE directus.directus_activity set "collection" = 'Structure' where "collection" = 'organisation';
UPDATE directus.directus_activity set "collection" = 'Comment' where "collection" = 'comments';
UPDATE directus.directus_activity set "collection" = 'Notification' where "collection" = 'notifications';
UPDATE directus.directus_activity set "collection" = 'Document' where "collection" = 'directus_files';

truncate directus.directus_revisions;

delete from directus.directus_activity where "collection" = 'directus_operations';
delete from directus.directus_activity where "collection" = 'organisation_follow_up_types';
delete from directus.directus_activity where "collection" = 'directus_fields';
delete from directus.directus_activity where "collection" = 'private_help_request_synthesis';
delete from directus.directus_activity where "collection" = 'follow_ups_follow_up_types';
delete from directus.directus_activity where "collection" = 'follow_up_types';
delete from directus.directus_activity where "collection" = 'beneficiary_referents';
delete from directus.directus_activity where "collection" = 'private_follow_up_synthesis';
delete from directus.directus_activity where "collection" = 'directus_collections';
delete from directus.directus_activity where "collection" = 'directus_settings';
delete from directus.directus_activity where "collection" = 'help_requests_directus_files';
delete from directus.directus_activity where "collection" = 'follow_ups_directus_files';
delete from directus.directus_activity where "collection" = 'notification_items';
delete from directus.directus_activity where "collection" = 'directus_dashboards';
delete from directus.directus_activity where "collection" = 'organismes_instructeurs';
delete from directus.directus_activity where "collection" = 'directus_flows';
delete from directus.directus_activity where "collection" = 'relatives';
delete from directus.directus_activity where "collection" = 'organismes_prescripteurs';
 