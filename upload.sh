#!/bin/bash
# This script uploads the LDR registers to http://resources.usgin.org/uri-gin/dtr/
# Run this script with $ ./upload.sh
# Force bash to ignore carriage return (\r) characters used in Windows line separators
(set -o igncr) 2>/dev/null && set -o igncr; # this comment is needed

BASEURI="http://23.23.228.241:32781/" &&
echo Set BaseURI as $BASEURI
echo Loging In ...
curl -b cookie-jar -c cookie-jar -d "userid=xxxxxx&password=xxxxxx" $BASEURI"system/security/apilogin" &&


# Delete Current Registers

curl -b cookie-jar -c cookie-jar -X POST $BASEURI"def?real_delete"
curl -b cookie-jar -c cookie-jar -X POST $BASEURI"class?real_delete"


# Create New Root Registers

curl -b cookie-jar -c cookie-jar -X POST -H "Content-Type: text/turtle" -T "Definitions/Def.ttl" $BASEURI"?status=experimental"
curl -b cookie-jar -c cookie-jar -X POST -H "Content-Type: text/turtle" -T "classes/Class.ttl" $BASEURI"?status=experimental"


# Upload New Registers

DEFINITIONS=( Concept MeasureClass ObjectClass Property UnitOfMeasure )
for ITEM in "${DEFINITIONS[@]}"
do
  echo Uploading $ITEM ...
  curl -b cookie-jar -c cookie-jar -X POST -H "Content-Type: text/turtle" -T "Definitions/"$ITEM".ttl" $BASEURI"def?batch-managed&status=experimental"
done

CLASSES=( Attribute ConceptualDomain ControlledVocabulary DataObject DataType ValueDomain )
for ITEM in "${CLASSES[@]}"
do
  echo Uploading $ITEM ...
  curl -b cookie-jar -c cookie-jar -X POST -H "Content-Type: text/turtle" -T "Classes/"$ITEM".ttl" $BASEURI"class?batch-managed&status=experimental"
done


# Upload Links

echo Uploading Attribute-DataObject Links ...
curl -b cookie-jar -c cookie-jar -X POST -H "Content-Type: text/turtle" -T "Links/Attribute-DataObject/Attribute-dataObject.ttl" $BASEURI"class/attribute?edit"
curl -b cookie-jar -c cookie-jar -X POST -H "Content-Type: text/turtle" -T "Links/Attribute-DataObject/DataObject-element.ttl" $BASEURI"class/data-object?edit"

echo Uploading Attribute-Property Links ...
curl -b cookie-jar -c cookie-jar -X POST -H "Content-Type: text/turtle" -T "Links/Attribute-Property/Attribute-meaning.ttl" $BASEURI"class/attribute?edit"
curl -b cookie-jar -c cookie-jar -X POST -H "Content-Type: text/turtle" -T "Links/Attribute-Property/Property-representation.ttl" $BASEURI"def/property?edit"

echo Uploading DataObject-ObjectClass Links ...
curl -b cookie-jar -c cookie-jar -X POST -H "Content-Type: text/turtle" -T "Links/DataObject-ObjectClass/DataObject-meaning.ttl" $BASEURI"class/data-object?edit"
curl -b cookie-jar -c cookie-jar -X POST -H "Content-Type: text/turtle" -T "Links/DataObject-ObjectClass/ObjectClass-representation.ttl" $BASEURI"def/object-class?edit"

echo Uploading ObjectClass-Property Links ...
curl -b cookie-jar -c cookie-jar -X POST -H "Content-Type: text/turtle" -T "Links/ObjectClass-Property/ObjectClass-essentialProperty.ttl" $BASEURI"def/object-class?edit"
curl -b cookie-jar -c cookie-jar -X POST -H "Content-Type: text/turtle" -T "Links/ObjectClass-Property/Property-domainOfCarriers.ttl" $BASEURI"def/property?edit"

# Update the status of the items in the registers modified when adding links
curl -b cookie-jar -c cookie-jar -X POST $BASEURI"class/attribute?update&status=experimental"
curl -b cookie-jar -c cookie-jar -X POST $BASEURI"class/data-object?update&status=experimental"
curl -b cookie-jar -c cookie-jar -X POST $BASEURI"def/object-class?update&status=experimental"
curl -b cookie-jar -c cookie-jar -X POST $BASEURI"def/property?update&status=experimental"
