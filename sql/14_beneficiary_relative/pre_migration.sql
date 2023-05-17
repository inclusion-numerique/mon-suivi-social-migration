alter table directus.relatives add column if not exists type_enum varchar null;
update directus.relatives set type_enum = 'Conjoint' where "type" = 'spouse';
update directus.relatives set type_enum = 'EnfantMineur' where "type" = 'minor_child';
update directus.relatives set type_enum = 'EnfantMajeur' where "type" = 'major_child';
update directus.relatives set type_enum = 'Parent' where "type" = 'parent';
update directus.relatives set type_enum = 'Grandparent' where "type" = 'grand_parent';
update directus.relatives set type_enum = 'Neighbour' where "type" = 'neighbour';
update directus.relatives set type_enum = 'Sibling' where "type" = 'Sibling';
update directus.relatives set type_enum = 'Tiers' where "type" = 'third_party';
update directus.relatives set type_enum = 'AutreMemberDeLaFamille' where "type" = 'other_family_member';  

update directus.relatives set hosted = false where hosted is null;
update directus.relatives set caregiver = false where caregiver is null;
  
delete from directus.relatives where relative_beneficiary is null;
  
  