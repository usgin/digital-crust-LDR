DROP TABLE "Concept";

CREATE TABLE "Concept" 
("URI" text,
"skos:prefLabel" text, 
"dct:description" text, 
"dc:source" text, 
"dcdtr:ParentURI" text, 
"skos:inScheme" text,
  CONSTRAINT "Concept_pkey" PRIMARY KEY ("URI")
  )
WITH (
  OIDS=TRUE
);

ALTER TABLE "Concept" OWNER TO grg_dba;
GRANT ALL ON Table "Concept" TO public;

INSERT INTO "Concept" ("URI", "skos:prefLabel", "dct:description", "dc:source", "dcdtr:ParentURI", "skos:inScheme")

VALUES
('def/aggregation-type/common-value', 'common value', 'no formal statistics, an emprical assertion of a typical or expected value', 'This model', '', 'aggregation-type'),
('def/aggregation-type/geometric-mean', 'geometric mean', '', 'This model', '', 'aggregation-type'),
('def/aggregation-type/mean', 'mean', '', 'This model', '', 'aggregation-type'),
('def/aggregation-type/median', 'median', '', 'This model', '', 'aggregation-type'),
('def/aggregation-type/mode', 'mode', '', 'This model', '', 'aggregation-type'),
('def/aggregation-type/primitive', 'primitive', 'single atomic value', 'This model', '', 'aggregation-type'),
('def/logic-type/data-object', 'data object', 'representation as a set of key-value pairs where the values might have any data type', 'This model', '', 'logic-type'),
('def/logic-type/table', 'table', 'a data object that is a relation, a tuple consisting of a list of primitive values, with a record type defining the data type and semantics for each -column- (position) in the tuple. ', 'This model', '', 'logic-type'),
('def/primitive-type/blob', 'blob', 'primitive type represented as a bitstream', '', '', 'primitive-type'),
('def/primitive-type/boolean', 'boolean', 'a type that takes one of two values, typically associated with -true- and -false-', '', '', 'primitive-type'),
('def/primitive-type/integer', 'integer', 'a number that can be written without a fractional component.', 'https://en.wikipedia.org/wiki/Integer', '', 'primitive-type'),
('def/primitive-type/long-integer', 'long integer', 'Computer representation of an integer whose range is greater than or equal to that of a standard integer in the same computation environment.', '', '', 'primitive-type'),
('def/quantity-type/point-location', 'point location', 'a location with no spatial extent specified in some spatial reference system. ', '', '', 'quantity-type'),
('def/primitive-type/real-number', 'real number', 'Real numbers can be thought of as points on an infinitely long line; a superset of the rational numbers, which include integers, which include natural numbers. Not countable--between any two real numbers there are other real numbers. Any real number can be determined by a possibly infinite decimal representation.', 'Based on https://en.wikipedia.org/wiki/Real_number', '', 'primitive-type'),
('def/primitive-type/string', 'string', 'A sequence of characters. ', 'https://en.wikipedia.org/wiki/String_(computer_science)', '', 'primitive-type'),
('def/primitive-type/term', 'term', 'A member of a controlled vocabulary; may be identified by a label or an indentifier string', 'This model', '', 'primitive-type'),
('def/primitive-type/uri', 'URI', 'an indentifier string conforming to syntax defined by RFC-3986', 'IETF RFC-3986', '', 'primitive-type'),
('def/quantity-kind/clock-time', 'clock time', 'A time position within a 24 hour day', '', '', 'quantity kind'),
('def/quantity-kind/continuous-field', 'continuous field', 'a quantifier that associates a location within some mathematical reference system with a quantity value', '', '', 'quantity kind'),
('def/quantity-kind/coordinate-measurement', 'coordinate measurement', 'an interval measurement along a coordinate axis in a coordinate reference system', '', '', 'quantity kind'),
('def/quantity-kind/count', 'count', 'a quantity that specifies a positive integer number of instances ', '', '', 'quantity kind'),
('def/quantity-kind/date', 'date', 'A time position specified using date from the modern Gregorian Calendar', '', '', 'quantity kind'),
('def/quantity-kind/time-range', 'time range', 'A time interval specified with bounding time coordinates', 'This model', '', 'quantity kind'),
('def/quantity-kind/date-time', 'date time', 'A time position specified using date and time from the modern Gregorian Calendar; specialization of a -date- quantity kind.', '', '', 'quantity kind'),
('def/quantity-kind/identifier', 'identifier', 'A string token that represents some other thing; depending on the identifier scheme,  might be dereferenceable, in which case it is a kind of reference.', '', '', 'quantity kind'),
('def/quantity-kind/interval-measurement', 'interval measurement', 'A value for which the difference between values is meaningful, but not the ratio. Example --temperature celsius.', '', '', 'quantity kind'),
('def/quantity-kind/name', 'name', 'a string token intended to identify some thing for human usage; a kind of identifier', '', '', 'quantity kind'),
('def/quantity-kind/narrative-text', 'narrative text', 'text that conveys some information', '', '', 'quantity kind'),
('def/quantity-kind/nominal', 'nominal', 'a nominal quantity, specified by a term or identifier', '', '', 'quantity kind'),
('def/quantity-kind/rate', 'rate', 'a quantity that represents the change in the value of some quantity relative to the change in another, e.g. velocity', '', '', 'quantity kind'),
('def/quantity-kind/ratio-measurement', 'ratio measurement', 'a measurement for which a value of 0 means -none-,  like interval measure, differences are meaningful, but ratios are also meaningful, example: mass.', '', '', 'quantity kind'),
('def/quantity-kind/reference', 'reference', 'a quantity whose value can be interpreted by some standard procedure to access another resource.', '', '', 'quantity kind'),
('def/quantity-kind/duration', 'duration', 'an interval of time', '', '', 'quantity kind'),
('def/quantity-kind/truth-value', 'truth value', 'true or false', '', '', 'quantity kind'),
('def/quantity-kind/vector', 'vector', 'a quantity that specifies a direction within some spatial reference system, and a magnitude.', '', '', 'quantity kind'),
('def/quantity-type/linear-location', 'linear location', 'a location that is defined by a connected sequence of points in a spatial reference system. ', '', '', 'quantity-type'),
('def/quantity-type/patch-location', 'patch location', 'a location that is bounded by a closed, connected collection of line locations.', '', '', 'quantity-type')
;
