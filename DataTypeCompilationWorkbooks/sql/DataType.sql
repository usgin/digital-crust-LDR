﻿DROP TABLE "DataType";

CREATE TABLE "DataType" 
 ("URI" text NOT NULL,
 "skos:prefLabel" text NOT NULL,
 "dct:description" text,
 "dcdtr:type" text,
 "skos:narrower" text[], 
 "skos:broader" text, 
 "dcdtr:encoding" text, 
 "dcdtr:byteLength" text, 
 "dcdtr:itemType" text, 
 "dcdtr:delimiter" text, 
 "dcdtr:valueType" text, 
 "dcdtr:keyDataType" text);

ALTER TABLE "DataType" OWNER TO grg_dba;

INSERT INTO "DataType"("URI", "skos:prefLabel", "dct:description", "dcdtr:type", "skos:narrower", "skos:broader", "dcdtr:encoding", "dcdtr:byteLength", "dcdtr:itemType", "dcdtr:delimiter", "dcdtr:valueType", "dcdtr:keyDataType")

Values

('class/data-type/array', 'array', 'Base concrete subclass of abstract data type; data value represented as  a list of values associated with an index; arrays have a dimension, and each dimension might map into some conceptual or physical space (the dimension type)', 'data type', Array[]::text[], 'class/data-type', '', '', '', '', '', ''),
('class/data-type/blob', 'blob', 'an opaque binary object. This is the lowest level kind of data object, essentially a bit stream that is meaningless without some context to interpret it. Physical types might specify number of bytes.', 'primitive type', ARRAY['class/data-type/geometry'], 'class/data-type/primitive-type', '', '', '', '', '', ''),
('class/data-type/boolean', 'boolean', 'logical type, physical type might be single bit, -true- -false- string, -0- or -1- etc.', 'primitive type', Array[]::text[], 'class/data-type/primitive-type', '', '', '', '', '', ''),
('class/data-type/data-object', 'data object', 'Base concrete subclass of abstract data type; value consists of a structured collection of attributes each with an associated dataType, Domain, and units of measure.', 'data type', Array[]::text[], 'class/data-type', '', '', '', '', '', ''),
('class/data-type/date', 'date', '', 'primitive type', Array[]::text[], 'class/data-type/primitive-type', '', '', '', '', '', ''),
('class/data-type/datetime', 'dateTime', 'calendar date and time', 'primitive type', Array[]::text[], 'class/data-type/primitive-type', '', '', '', '', '', ''),
('class/data-type/dictionary', 'dictionary', 'Base concrete subclass of abstract data type; a list of key-value pairs;', 'data type', Array[]::text[], 'class/data-type', '', '', '', '', '', ''),
('class/data-type/double', 'double', '', 'real number', Array[]::text[], 'class/data-type/real-number', '', '', '', '', '', ''),
('class/data-type/float', 'float', '', 'real number', Array[]::text[], 'class/data-type/real-number', '', '', '', '', '', ''),
('class/data-type/geometry', 'geometry', 'a blob that encodes a geospatial location', 'blob', ARRAY['class/data-type/point-object','class/data-type/point-3-d-object'], 'class/data-type/blob', '', '', '', '', '', ''),
('class/data-type/class/data-type/integer', 'class/data-type/integer', 'logical type; physical types might specify number of bytes, and value range', 'primitive type', ARRAY['class/data-type/long'], 'class/data-type/primitive-type', '', '', '', '', '', ''),
('class/data-type/list', 'list', 'Base concrete subclass of abstract data type; value consists of a list of items each with its own dataType, and a specified delimiter that separates items.', 'data type', Array[]::text[], 'class/data-type', '', '', '', '', '', ''),
('class/data-type/list-string-pipe', 'list string pipe', 'a list of string values delimited with pipe (|) characters', 'list', Array[]::text[], 'class/data-type/list', '', '', 'string', '|', '', ''),
('class/data-type/long', 'long', '', 'integer', Array[]::text[], 'class/data-type/integer', '', '', '', '', '', ''),
('class/data-type/point-3-d-object', 'point 3-D object', 'a geometry that encodes a point in X-Y-Z', 'geometry', Array[]::text[], 'class/data-type/geometry', '', '', '', '', '', ''),
('class/data-type/point-object', 'point object', 'a geometry that encodes an X-Y point location', 'geometry', Array[]::text[], 'class/data-type/geometry', '', '', '', '', '', ''),
('class/data-type/primitive-type', 'primitive type', 'Base concrete subclass of abstract data type; includes basic computer programming data types e.g. xml data types.', 'data type', ARRAY['class/data-type/class/data-type/integer','class/data-type/boolean', 'class/data-type/real-number', 'class/data-type/string', 'class/data-type/datetime', 'class/data-type/date'], 'class/data-type', '', '', '', '', '', ''),
('class/data-type/real-number', 'real number', 'logical type, might be decimal, float, double, lots of possible low-level encoding schemes (big endian, small endian)', 'primitive type', Array['class/data-type/float','class/data-type/double'], 'class/data-type/primitive-type', '', '', '', '', '', ''),
('class/data-type/string', 'string', 'logical type for string; physical types might specify character encoding, number of bytes, etc.', 'primitive type', array['class/data-type/term','class/data-type/string-255'], 'class/data-type/primitive-type', '', '', '', '', '', ''),
('class/data-type/string-255', 'string 255', 'string limited to 255 characters', 'string', Array[]::text[], 'class/data-type/string', '', '', '', '', '', ''),
('class/data-type/term', 'term', 'a string that is restricted to be a member of labels from a controlled vocabulary', 'string', Array[]::text[], 'class/data-type/string', '', '', '', '', '', ''),
('class/data-type/uri', 'uri', '', 'string', Array[]::text[], 'class/data-type/string', '', '', '', '', '', ''),
('class/data-type/url', 'url', '', 'string', Array[]::text[], 'class/data-type/string', '', '', '', '', '', '');