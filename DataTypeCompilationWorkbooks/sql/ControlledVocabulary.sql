﻿CREATE TABLE "ControlledVocabulary" 
("URI" text,
"skos:prefLabel" text,
"dct:description" text,
"dc:source" text);

ALTER TABLE "ControlledVocabulary" OWNER TO grg_dba;

INSERT INTO "ControlledVocabulary" ("URI", "skos:prefLabel", "dct:description", "dc:source")

VALUES

('class/vocabulary/logic-type-categories', 'Logic Type Categories', '', ''),
('class/vocabulary/domain-type-categories', 'Domain Type Categories', '', ''),
('class/vocabulary/geothermal-power-plant-status-category', 'Geothermal Power Plant Status Category', 'terms to categorize the status of a geothermal power plant facility', ''),
('class/vocabulary/units-of-measure', 'Units of measure', '', ''),
('class/vocabulary/geothermal-power-plant-types', 'Geothermal Power Plant Types', '', ''),
('class/vocabulary/us-state-name', 'US state name', '', ''),
('class/vocabulary/us-county-names', 'US county names', '', ''),
('class/vocabulary/statistical-summary-procedures', 'Statistical summary procedures', '', '');
