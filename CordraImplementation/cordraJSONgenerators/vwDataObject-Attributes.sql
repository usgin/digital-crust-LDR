SELECT 
  "DataObject"."URI", 
  "DataObject"."skos:prefLabel", 
  "Attribute"."dcdtr:elementName", 
  "bridgeAttributeDataObject"."AttributeLabel"
FROM 
  public."Attribute", 
  public."bridgeAttributeDataObject", 
  public."DataObject"
WHERE 
  "bridgeAttributeDataObject"."dcdtr:element" = "Attribute"."URI" AND
  "DataObject"."URI" = "bridgeAttributeDataObject"."dcdtr:dataObject"
ORDER BY
  "DataObject"."skos:prefLabel" ASC, 
  "bridgeAttributeDataObject".sequence ASC, 
  "Attribute"."skos:prefLabel" ASC;
