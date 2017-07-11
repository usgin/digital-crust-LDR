﻿Drop Table "ValueDomain";

CREATE TABLE "ValueDomain" 
("URI" text NOT NULL,
"dcdtr:domainName" text NOT NULL,
"dct:description" text,
"dcdtr:quantityKind" text,
"dcdtr:valueDataType" text,
"dcdtr:codelist" text,
"dcdtr:meaning" text,
"dcdtr:constraintStatement" text,
"dcdtr:minValue" text,
"dcdtr:maxValue" text, 
"dcdtr:valueFormat" text,
CONSTRAINT "ValueDomain_pkey" PRIMARY KEY ("URI")
)
WITH (
  OIDS=True
);

ALTER TABLE "ValueDomain" OWNER TO grg_dba;
GRANT ALL ON TABLE public."ValueDomain" TO grg_dba;
GRANT ALL ON TABLE public."ValueDomain" TO public;

INSERT INTO "ValueDomain" ("URI", "dcdtr:domainName", "dct:description", "dcdtr:quantityKind","dcdtr:valueDataType", "dcdtr:codelist", "dcdtr:meaning", "dcdtr:constraintStatement", "dcdtr:minValue", "dcdtr:maxValue", "dcdtr:valueFormat")

VALUES

('class/value-domain/agent-identifiers', 'Agent Identifiers', 'the domain of known agents represented by identifiers from a registry', 'def/quantity-kind/identifier', 'def/primitive-type/string', '', '', '', '', '', ''),
('class/value-domain/calendar-date', 'Calendar date', 'Range of time coordinates that can be specified using the modern Gregorian calendar', 'def/quantity-kind/date-time', 'def/primitive-type/string', '', '', '', '', '', ''),
('class/value-domain/cementation-factors', 'Cementation factors', 'This is an exponent on porosity in Archies Law; value is &ge; 1; max observed reported to be 4.1  (https://en.wikipedia.org/wiki/Archie%27s_law)', 'def/quantity-kind/interval-measurement', 'def/primitive-type/real-number', '', '', '', '1', '4.1', ''),
('class/value-domain/controlled-vocabulary', 'Controlled vocabulary', 'generic domain indicating that an unspecified controlled vocabulary is used', 'def/quantity-kind/nominal', 'def/primitive-type/term', '', '', '', '', '', ''),
('class/value-domain/decimal-number', 'Decimal number', 'generic domain indicating that a decimal number value is required', 'http://www.opengis.net/def/nil/OGC/0/unknown', 'def/primitive-type/real-number', '', '', '', '', '', ''),
('class/value-domain/degrees-of-latitude', 'Degrees of Latitude', 'angle from Earth equator to north (positive) or south (negative) pole, values between -90 and 90.', 'def/quantity-kind/interval-measurement', 'def/primitive-type/real-number', '', 'class/conceptual-domain/degrees-of-latitude', '', '-90', '90', ''),
('class/value-domain/degrees-of-longitude', 'Degrees of Longitude', 'allow for 0-360 West (negative) or east (positive) longitude', 'def/quantity-kind/interval-measurement', 'def/primitive-type/real-number', '', 'class/conceptual-domain/degrees-of-longitude', '', '-360', '360', ''),
('class/value-domain/era-of-borehole-drilling', 'Era of borehole drilling', 'Calendar defined time interval starting when the first drilled (as opposed to hand-dug) boreholes were constructed (gues 1/1/1800 to start)', 'def/quantity-kind/time-interval', 'def/primitive-type/date', '', '', 'Use ISO8601 format', '1/1/1800', '', ''),
('class/value-domain/geologic-age-ma', 'Geologic Age, Ma', 'Time duration in Million years, between 1950 and the inferred time coordinate of a geologic event.', 'def/quantity-kind/ratio-measurement', 'def/primitive-type/real-number', '', '', '', '', '', ''),
('class/value-domain/geothermal-fluid-temperature-range-c', 'Geothermal fluid temperature range C', 'the range of valid fluid temperatures in degree C for ', 'def/quantity-kind/interval-measurement', 'def/primitive-type/real-number', '', '', '', '0', '400', ''),
('class/value-domain/geothermal-power-plant-status-terms-draft', 'Geothermal Power Plant Status Terms draft', 'A draft vocabulary of geothermal power plant status categorization terms', 'def/quantity-kind/nominal', 'def/primitive-type/term', 'def/geothermal-power-plant-status-category', '', '', '', '', ''),
('class/value-domain/geothermal-power-plant-types', 'Geothermal power plant types', 'domain of all geothermal power plant tyes', 'def/quantity-kind/nominal', 'def/primitive-type/term', 'def/geothermal-power-plant-types', '', '', '', '', ''),
('class/value-domain/http-uri', 'http URI', 'the domain of syntactically valid HTTP URI strings', 'def/quantity-kind/reference', 'def/primitive-type/string', '', '', '', '', '', 'regex for http URI'),
('class/value-domain/integer-and-half-integer', 'Integer and half-integer', 'postive integers and half values, e.g. 1, 1.5, 2, 2.5; used for PLSS townships, ranges, and sections.', 'def/quantity-kind/count', '', '', '', '', '', '', ''),
('class/value-domain/length-feet', 'Length, feet', 'positive decimal numbers greater than 0, unit of measure is feet', 'def/quantity-kind/ratio-measurement', '', '', '', '', '', '', ''),
('class/value-domain/length-meters', 'Length, meters', 'positive decimal numbers greater than 0, unit of measure is meters', 'def/quantity-kind/ratio-measurement', '', '', '', '', '', '', ''),
('class/value-domain/megawatts-of-power', 'Megawatts of power', 'real number greater than 0, unit of measure is megawatt.', 'def/quantity-kind/ratio-measurement', 'def/primitive-type/real-number', '', '', '', '0', '', ''),
('class/value-domain/name-string', 'Name string', 'text strings used to designate some resource for use by humans.', 'def/quantity-kind/name', 'def/primitive-type/string', '', '', '', '', '', ''),
('class/value-domain/narrative-text', 'Narrative text', 'free text narrative text; an extended text explanation or description of some aspect of an entity, ', 'def/quantity-kind/narrative-text', 'def/primitive-type/string', '', '', '', '', '', ''),
('class/value-domain/percent-of-whole', 'Percent of whole', 'fraction between 0 and 1 multiplied by 100', 'def/quantity-kind/ratio-measurement', 'def/primitive-type/real-number', '', '', '', '0', '100', ''),
('class/value-domain/positive-integer', 'Positive integer', 'integers greater than zero', 'http://www.opengis.net/def/nil/OGC/0/unknown', 'def/primitive-type/integer', '', '', '', '0', '', ''),
('class/value-domain/positive-decimal-number', 'Positive decimal number', 'decimal number greater than or equal to 0.', 'http://www.opengis.net/def/nil/OGC/0/unknown', 'def/primitive-type/real-number', '', '', '', '0', '', ''),
('class/value-domain/real-number', 'Real number', 'Real number between -infinity and infinity', 'http://www.opengis.net/def/nil/OGC/0/unknown', 'def/primitive-type/real-number', '', '', '', '', '', ''),
('class/value-domain/software-environment-terms', 'Software Environment Terms', 'terms to specify a software environment in which a data type implementation is intended to be used', 'def/quantity-kind/nominal', 'def/primitive-type/term', 'def/software-environment', '', '', '', '', ''),
('class/value-domain/statistical-summary-procedures', 'Statistical summary procedures', 'terms for procedures used to summarize a group of related measurements e.g. median; mean; geometric mean; mode', 'def/quantity-kind/nominal', 'def/primitive-type/term', 'def/statistical-summary-procedures', '', '', '', '', ''),
('class/value-domain/string-255', 'String 255', 'a string restricted to length of 255 characters', 'http://www.opengis.net/def/nil/OGC/0/unknown', 'def/primitive-type/string', '', '', '', '', '', ''),
('class/value-domain/unique-bitstream', 'Unique bitstream', 'the domain of unique bitstream for use in identifying digital objects', 'http://www.opengis.net/def/nil/OGC/0/unknown', 'def/primitive-type/blob', '', '', '', '', '', ''),
('class/value-domain/units-of-measurement-terms', 'Units of Measurement Terms', 'terms to specify the measurement units associated with a value domain', 'def/quantity-kind/nominal', 'def/primitive-type/term', 'def/units-of-measure', '', '', '', '', ''),
('class/value-domain/us-county-name', 'US County Name', 'valid full names of US counties', 'def/quantity-kind/nominal', 'def/primitive-type/term', 'def/us-county-name', '', '', '', '', ''),
('class/value-domain/us-state-name', 'US State Name', 'valid full names of US states', 'def/quantity-kind/nominal', 'def/primitive-type/term', 'def/us-state-name', '', '', '', '', ''),
('class/value-domain/us-zip-code', 'US Zip Code', 'valid 5 or 9 digit postal codes used in the United States', 'def/quantity-kind/nominal', 'def/primitive-type/term', 'def/us-zipcode', '', '', '', '', ''),
('class/value-domain/utm-zones', 'UTM zones', 'Valid numbers for UTM zones', 'def/quantity-kind/nominal', 'def/primitive-type/integer', '', '', '', '1', '60', ''),
('class/value-domain/valid-plss-section-number', 'Valid PLSS section number', 'Integer  or half-integer between 1 and 36 (are there any section 36.5 numbers)', 'def/quantity-kind/nominal', 'def/primitive-type/term', 'def/plss-section-number', '', '', '1', '36.5', '')
;
