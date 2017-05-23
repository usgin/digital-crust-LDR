CREATE TABLE "Concept" 
("URI" text,
"skos:prefLabel" text, 
"dct:description" text, 
"dc:source" text, 
"dcdtr:ParentURI" text,
"non1" text, 
"non2" text, 
"skos:inScheme" text);

ALTER TABLE "Concept" OWNER TO grg_dba;

INSERT INTO "Concept" ("URI", "skos:prefLabel", "dct:description", "dc:source", "dcdtr:ParentURI", "non1", "non2", "skos:inScheme")

VALUES

('def/concept/table', 'table', 'a data object that is a relation a tuple consisting of a list of primitive values with a record type defining the data type and semantics for each -column- (position) in the tuple. ', 'This model', '', '', '', 'logic-type-category'),
('def/concept/data-object', 'data object', 'representation as a set of key-value pairs where the values might have any data type', 'This model', '', '', '', 'logic-type-category'),
('def/concept/median', 'median', '', 'This model', '', '', '', 'logic-type-category'),
('def/concept/mean', 'mean', '', 'This model', '', '', '', 'logic-type-category'),
('def/concept/geometric-mean', 'geometric mean', '', 'This model', '', '', '', 'logic-type-category'),
('def/concept/mode', 'mode', '', 'This model', '', '', '', 'logic-type-category'),
('def/concept/common-value', 'common value', 'no formal statistics an emprical assertion of a typical or expected value', 'This model', '', '', '', 'logic-type-category'),
('def/concept/primitive', 'primitive', '', 'This model', '', '', '', 'logic-type-category'),
('def/concept/date-range', 'date range', '', 'This model', '', '', '', 'logic-type-category'),
('def/concept/controlled-vocabulary', 'controlled vocabulary', '', 'This model', '', '', '', 'logic-type-category');
