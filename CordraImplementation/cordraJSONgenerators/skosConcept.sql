--SQL query to generate a JSON SKOS concept for Data Type REgistry
-- Stephen M. Richard
--  2017-04-25

select cpt."URI" as suffix, 
(select row_to_json(aaa) from (
    select 
  cpt."skos:prefLabel" as "prefLabel",
  cpt."dct:description" as "definition",
  cpt."dc:source" as "source",
  cpt."dcdtr:ParentURI" as "broader",
  -- Need to make this an array
  cpt."skos:inScheme" as "memberOf"   
   ) as aaa
) as "conceptJSON"
FROM
"Concept" cpt ;