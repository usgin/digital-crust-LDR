--SQL query to generate a JSON  ValueDomain object for Data Type REgistry
-- Stephen M. Richard
--  2017-04-20

select vd."URI" as suffix, 
(select row_to_json(aaa) from (
    select 
  vd."dcdtr:domainName" as "dt:domainName",
  vd."dct:description" as "dt:domainDescription",
  'NGDS Content Models'::text as "dt:source",
  (select row_to_json(ddt) from
			(select vd."dcdtr:quantityKind" as "dt:domainTypeLabel") ddt)
	as "dt:domainType",
  (select row_to_json(dot) from
			(select vd."dcdtr:valueDataType" as "dt:domainDataTypeURI") dot)
	as "dt:valueDataType",
--constraints statement array
vd."dcdtr:valueFormat" as "dt:valueFormat",
vd."dcdtr:minValue" as "dt:numericDomainMinValue",
vd."dcdtr:maxValue" as "dt:numericDomainMaxValue",
(select row_to_json(te) from
			(select vd."dcdtr:codelist" as "dt:codelistLabel") te) 
	as "dt:codeList",
  (select row_to_json(te) from
			(select 'not specified'::text as "dt:targetEntityLabel") te)
	 as "dt:targetEntity"
	
   ) as aaa
) as "valueDomainJSON"
FROM
"ValueDomain" vd ;