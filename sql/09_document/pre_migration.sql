alter table directus.directus_files add column if not exists document_type_enum text null;
update directus.directus_files set document_type_enum = 'Cerfa' where document_type = 'cerfa';
update directus.directus_files set document_type_enum = 'HistoriqueCourrier' where document_type = 'mail_history';
update directus.directus_files set document_type_enum = 'Justificatifs' where document_type = 'proof';
update directus.directus_files set document_type_enum = 'Rapports' where document_type = 'report';


  
  
  