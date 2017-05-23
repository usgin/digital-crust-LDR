Drop table "ValueDomain";

CREATE TABLE "ValueDomain" 
("URI" text,
 "dcdtr:domainName" text,
 "dct:description" text,
 "dcdtr:logicType" text,
 "dcdtr:domainDataTypeIdentifier" text,
 "dcdtr:codelist" text,
 "dcdtr:meaning" text,
 "dcdtr:constraintStatement" text,
 "dcdtr:minValue" text,
 "dcdtr:maxValue" text,
 "dcdtr:valueFormat" text);

ALTER TABLE "ValueDomain" OWNER TO grg_dba;

INSERT INTO "ValueDomain" ("URI", "dcdtr:domainName", "dct:description", "dcdtr:logicType", "dcdtr:domainDataTypeIdentifier", "dcdtr:codelist", "dcdtr:meaning", "dcdtr:constraintStatement", "dcdtr:minValue", "dcdtr:maxValue", "dcdtr:valueFormat")

VALUES

('class/value-domain/agent-identifiers', 'Agent Identifiers', 'the domain of known agents represented by identifiers from a registry', 'def/concept/primitive', 'class/data-type/uri', '', '', '', '', '', ''),
('class/value-domain/cementation-factors', 'Cementation factors', 'This is an exponent on porosity in Archies Law; value is &ge; 1; max observed reported to be 4.1  (https://en.wikipedia.org/wiki/Archie%27s_law)', 'def/concept/primitive', 'class/data-type/real-number', '', '', '', '1', '4.1', ''),
('class/value-domain/controlled-vocabulary', 'Controlled vocabulary', 'generic domain indicating that an unspecified controlled vocabulary is used', 'def/concept/controlled-vocabulary', 'class/data-type/term', '', '', '', '', '', ''),
('class/value-domain/degrees-of-latitude', 'Degrees of Latitude', 'angle from Earth equator to north (positive) or south (negative) pole', 'def/concept/primitive', 'class/data-type/real-number', '', 'class/conceptual-domain/degrees-of-latitude', '', '-90', '90', ''),
('class/value-domain/degrees-of-longitude', 'Degrees of Longitude', 'allow for 0-360 West (negative) or east (positive) longitude', 'def/concept/primitive', 'class/data-type/real-number', '', 'class/conceptual-domain/degrees-of-longitude', '', '-360', '360', ''),
('class/value-domain/era-of-geothermal-drilling', 'Era of geothermal drilling', 'Calendar defined time interval starting when the first geothermal well was drilled (gues 1/1/1800 to start)', 'def/concept/date-range', 'class/data-type/date', '', '', 'Use ISO8601 format', '1/1/1800', '', ''),
('class/value-domain/geothermal-fluid-temperature-range-c', 'Geothermal fluid temperature range C', 'the range of valid fluid temperatures in degree C for ', 'def/concept/primitive', 'class/data-type/real-number', '', '', '', '0', '400', ''),
('class/value-domain/geothermal-power-plant-status-terms-draft', 'Geothermal Power Plant Status Terms draft', 'A draft vocabulary of geothermal power plant status categorization terms', 'def/concept/controlled-vocabulary', 'class/data-type/term', 'class/vocabularygeothermal-power-plant-status-category', '', '', '', '', ''),
('class/value-domain/geothermal-power-plant-types', 'Geothermal power plant types', 'domain of all geothermal power plant tyes', 'def/concept/controlled-vocabulary', 'class/data-type/term', 'class/vocabularygeothermal-power-plant-types', '', '', '', '', ''),
('class/value-domain/http-uri', 'http URI', 'the domain of syntactically valid HTTP URI strings', 'def/concept/primitive', 'class/data-type/string', '', '', '', '', '', 'regex for http URI'),
('class/value-domain/megawatts-of-power', 'Megawatts of power', 'real number greater than 0', 'def/concept/primitive', 'class/data-type/real-number', '', '', '', '0', '', ''),
('class/value-domain/name-string', 'Name string', 'text strings used to designate some resource for use by humans.', 'def/concept/primitive', 'class/data-type/string', '', '', '', '', '', ''),
('class/value-domain/narrative-text', 'Narrative text', 'free text narrative text. ', 'def/concept/primitive', 'class/data-type/string', '', '', '', '', '', ''),
('class/value-domain/positive-real-number', 'Positive real number', 'real number greater than or equal to 0.', 'def/concept/primitive', 'class/data-type/real-number', '', '', '', '0', '', ''),
('class/value-domain/percent-of-whole', 'Percent of whole', 'fraction between 0 and 1 multiplied by 100', 'def/concept/primitive', 'class/data-type/real-number', '', '', '', '0', '100', ''),
('class/value-domain/positive-integer', 'Positive integer', 'integers greater than zero', 'def/concept/primitive', 'class/data-type/integer', '', '', '', '0', '', ''),
('class/value-domain/software-environment-terms', 'Software Environment Terms', 'terms to specify a software environment in which a data type implementation is intended to be used', 'def/concept/controlled-vocabulary', 'class/data-type/term', '', '', '', '', '', ''),
('class/value-domain/string-255', 'String 255', 'a string restricted to length of 255 characters', 'def/concept/primitive', 'class/data-type/string', '', '', '', '', '', ''),
('class/value-domain/unique-bitstream', 'Unique bitstream', 'the domain of unique bitstream for use in identifying digital objects', 'def/concept/primitive', 'class/data-type/blob', '', '', '', '', '', ''),
('class/value-domain/units-of-measurement-terms', 'Units of Measurement Terms', 'terms to specify the measurement units associated with a value domain', 'def/concept/controlled-vocabulary', 'class/data-type/term', 'class/vocabularyunits-of-measure', '', '', '', '', ''),
('class/value-domain/us-county-name', 'US County Name', 'valid full names of US counties', 'def/concept/controlled-vocabulary', 'class/data-type/term', 'class/vocabularyus-county-names', '', '', '', '', ''),
('class/value-domain/us-state-name', 'US State Name', 'valid full names of US states', 'def/concept/controlled-vocabulary', 'class/data-type/term', 'class/vocabularyus-state-name', '', '', '', '', ''),
('class/value-domain/utm-zones', 'UTM zones', 'Valid numbers for UTM zones', 'def/concept/primitive', 'class/data-type/integer', '', '', '', '1', '60', ''),
('class/value-domain/valid-plss-section-number', 'Valid PLSS section number', 'Integer  or half-integer between 1 and 36 (are there any section 36.5 numbers)', 'def/concept/controlled-vocabulary', 'class/data-type/term', '', '', '', '1', '36.5', ''),
('class/value-domain/statistical-summary-procedures', 'Statistical summary procedures', 'terms for procedures used to summarize a group of related measurements e.g. median; mean; geometric mean; mode', 'def/concept/controlled-vocabulary', 'class/data-type/term', 'class/vocabularystatistical-summary-procedures', '', '', '', '', ''),
('class/value-domain/real-number', 'Real number', 'Real number between -infinity and infinity', 'def/concept/primitive', 'class/data-type/real-number', '', '', '', '', '', '');
