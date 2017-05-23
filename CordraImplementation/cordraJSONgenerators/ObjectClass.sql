--SQL query to generate a JSON SKOS concept for Data Type REgistry
-- Stephen M. Richard
--  2017-04-25

select ocl."URI" as suffix, 
(select row_to_json(aaa) from (
    select 
  ocl."skos:prefLabel" as "prefLabel",
  concat(ocl."dct:description", ' Notes: '::text, ocl."dcdtr:notes") as "definition",
  ocl."dc:source" as "source",
  ocl."skos:broader" as "broader",
  -- Need to make this an array
  '/def/objectClass'::text as "inScheme"   
   ) as aaa
) as "conceptJSON"
FROM
"ObjectClass" ocl ;