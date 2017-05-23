--SQL query to generate a JSON archive job description to feed bulk archvie update process
--  for IEDA
-- Stephen M. Richard
--  2017-04-20

select 
  att."URI" as "suffix",
 (select row_to_json(aaa) from (
    select 

  att."dcdtr:elementName" as "dt:attributeName",
  att."dct:description" as "dt:attributeDescription",
  (select row_to_json(src) from
			(select att.source as "dt:citationTitle") src)
	as "dt:attributeSource",
  (SELECT row_to_json(mean) from
	(select bap."dcdtr:meaning" as "dt:meaningPropertyURI",
		bap."PropertyLabel" as "dt:meaningPropertyPrefLabel"  
		) mean 
	) as "dt:attributeMeaning",
   (select row_to_json(dt) from
			(select 'PrimitiveType'::text as "dt:baseDataType",
				att."dcdtr:datatype" as "dt:dataTypeURI") dt) 
	as "dt:attributeDataType",
    (select row_to_json(cm) from 
	 (select att."dcdtr:containerObject" as "dt:componentMeaning") cm ) as "dt:attributeComponentContainer",
    att."dcdtr:valueDomain" as "dt:attributeValueDomain",
   (select row_to_json(uom) from
			(select att."dcdtr:units" as "dt:attributeUOM-URI") uom)
	as "dt:attributeUOM" 
   ) as aaa
) as "attributeJSON"
FROM
"Attribute" att 
	left join "bridgeAttributeProperty" bap 
		on att."URI" = bap."dcdtr:representation"
	left join "ValueDomain" vd
		on att."dcdtr:valueDomain" = vd."URI" ;