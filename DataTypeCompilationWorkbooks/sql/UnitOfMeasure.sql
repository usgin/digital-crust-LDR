CREATE TABLE "UnitOfMeasure" 
("URI" text,
 "skos:prefLabel" text,
 "dct:description" text,
 "dc:source" text,
 "dcdtr:unitsType" text);

ALTER TABLE "UnitOfMeasure" OWNER TO grg_dba;

INSERT INTO "UnitOfMeasure" ("URI", "skos:prefLabel", "dct:description", "dc:source", "dcdtr:unitsType")

VALUES

('def/uom/darcy', 'darcy', '', '', ''),
('def/uom/degree', 'degree', 'angular part of a circle', '', 'http://vocabulary.odm2.org/unitstype/angle'),
('def/uom/degree-celsius', 'degree Celsius', '', '', 'http://vocabulary.odm2.org/unitstype/temperature'),
('def/uom/feet', 'feet', '', '', 'http://vocabulary.odm2.org/unitstype/length'),
('def/uom/feet-per-day', 'feet per day', '', '', 'http://vocabulary.odm2.org/unitstype/linearvelocity'),
('def/uom/gallons-per-minute', 'gallons per minute', '', '', 'http://vocabulary.odm2.org/unitstype/volumetricflowrate'),
('def/uom/kilogram', 'kilogram', '', '', 'http://vocabulary.odm2.org/unitstype/mass'),
('def/uom/kilogram-per-cubic-meter', 'Kilogram per cubic meter', '', '', 'http://vocabulary.odm2.org/unitstype/concentrationordensitymasspervolume'),
('def/uom/kilometer', 'kilometer', '', '', 'http://vocabulary.odm2.org/unitstype/length'),
('def/uom/megawatt', 'megaWatt', '', '', 'http://vocabulary.odm2.org/unitstype/power'),
('def/uom/meter', 'meter', '', '', 'http://vocabulary.odm2.org/unitstype/length'),
('def/uom/meters-per-sec', 'meters per sec', '', '', 'http://vocabulary.odm2.org/unitstype/linearvelocity'),
('def/uom/millidarcy', 'millidarcy', 'millidarcy (md) (1 darcy is 10^?12m^2); unit of measure for permeability. Dimension type is length^2', '', ''),
('def/uom/percent', 'percent', '', '', '');
