DROP TABLE "ObjectClass";

CREATE TABLE "ObjectClass" 
("URI" text,
 "skos:prefLabel" text,
 "dct:description" text,
 "dcdtr:notes" text,
 "skos:altLabel" text,
 "dc:source" text,
 "skos:broader" text,
CONSTRAINT "ObjectClass_pkey" PRIMARY KEY ("URI")
)
WITH (
  OIDS=True
);

ALTER TABLE "ObjectClass" OWNER TO grg_dba;
GRANT ALL ON TABLE public."ObjectClass" TO grg_dba;
GRANT ALL ON TABLE public."ObjectClass" TO public;

INSERT INTO "ObjectClass" ("URI", "skos:prefLabel", "dct:description", "dcdtr:notes", "skos:altLabel", "dc:source", "skos:broader")

VALUES
('def/object-class/abandoned-underground-mine-feature', 'Abandoned Underground Mine Feature', 'Entity representing an abandoned underground mine. Typically has extent associated with surface foot print of underground workings and some description of the dimensions and geometry of the workings as well as commodities produced.', '', 'Abandoned Mines', 'NGDS', 'def/object-class/feature'),
('def/object-class/agent', 'Agent', 'An entity that bears some form of responsibility for an activity taking place for the existence of an entity or for another agents activity.', '', '', 'https://www.w3.org/TR/prov-o/#Agent', 'def/object-class/feature'),
('def/object-class/attribute', 'Attribute', 'A information object that represents the quantification of a property value in the context of some data object instance', '', 'property', 'This repository', 'def/object-class/information-object'),
('def/object-class/borehole-casing', 'Borehole Casing', 'Characterization of casing pipe used for borehole engineering. ', '', 'Borehole Casing', 'SMR analysis', 'def/object-class/feature'),
('def/object-class/borehole-collar', 'Borehole Collar', 'The location at which a borehole trace originates. Might be within a well; along an existing borehole trace; or in the subsurface e.g. collared in a mine tunnel', '', '', 'SMR analysis', 'def/object-class/feature'),
('def/object-class/borehole-intercept', 'Borehole Intercept', 'A sampling feature  whose feature of interest is a site at a particular single depth in a borehole.', '', 'Borehole Lithology Intercept', 'NGDS', 'def/object-class/sampling-feature'),
('def/object-class/borehole-interval', 'Borehole Interval', 'A sampling feature  whose feature of interest is the interval of material penetrated by a borehole between two specified depths.', '', 'Borehole Lithology Interval', 'NGDS', 'def/object-class/sampling-feature'),
('def/object-class/borehole-temperature-observation', 'Borehole Temperature Observation', 'subsurface temperature measurement made in a borehole', '', 'Borehole Temperature Observation', 'NGDS', 'def/object-class/observation'),
('def/object-class/concept', 'Concept', 'an entity that represents an abstract idea, typically a human invention to represent something in the world or in the imagination', '', '', '', 'def/object-class/information-object'),
('def/object-class/contact-information', 'Contact information', 'an entity that repsents information used to contact an agent through some communication channel', '', '', '', 'def/object-class/information-object'),
('def/object-class/data-object', 'Data object', 'an entity that represent a information structure and implementation for represent a description of some type of thing.', '', '', '', 'def/object-class/information-object'),
('def/object-class/event', 'Event', 'A entity that has a temporal extent or position and an associated process or activity. ', '', '', 'SMR analysis', 'def/object-class/temporal-object'),
('def/object-class/facility', 'Facility', 'A human-constructed feature that has some functional purpose.', '', '', 'GEARS CD information model', 'def/object-class/feature'),
('def/object-class/feature', 'Feature', 'An entity of interest that has a spatial-temporal location.', '', '', 'SMR analysis', ''),
('def/object-class/geologic-contact-feature', 'Geologic Contact Feature', 'A mapped feature that represents the outcrop trace of a geologic boundary between two geologic units that is not a fault ', '', 'Geologic Contact Feature', 'NGDS', 'def/object-class/mapped-feature'),
('def/object-class/geologic-fault-feature', 'Geologic Fault Feature', 'A mapped feature that represents the outcrop trace of a geologic fault. ', '', 'Shear Displacement Structure', 'NGDS', 'def/object-class/mapped-feature'),
('def/object-class/geologic-feature', 'Geologic Feature', 'A feature that represents some entity in the earth based on geologic criteria', '', '', 'GeoSciML', 'def/object-class/feature'),
('def/object-class/geologic-reservoir-feature', 'Geologic Reservoir Feature', 'a subsurface body of material that contains fluids of interest that can be extracted.', '', 'Geologic Reservoir', 'NGDS', 'def/object-class/geologic-feature'),
('def/object-class/geologic-unit-feature', 'Geologic Unit Feature', 'A body of material in the Earth whose complete and precise extent is inferred to exist (NADM GeologicUnit; Stratigraphic unit in sense of NACSN or International Stratigraphic Code) or a classifier used to characterize parts of the Earth (e.g. lithologic map unit like -granitic rock- or -alluvial deposit-; surficial units like -till- or -old alluvium-).  Includes both formal units (i.e. formally adopted and named in the official lexicon) and informal units (i.e. named but not promoted to the lexicon) and unnamed units (i.e. recognisable and described and delineable in the field but not otherwise formalised).', '', 'Geologic Unit', 'http://www.geosciml.org/geosciml/4.0/documentation/html/', 'def/object-class/geologic-feature'),
('def/object-class/geologic-unit-outcrop', 'Geologic Unit Outcrop', 'A mapped feature that represents the outcrop of a GeologicUnit on some map horizon.', '', '', '', 'def/object-class/mapped-feature'),
('def/object-class/geospatial-position', 'Geospatial Position', 'A point location on the Earth', '', '', '', 'def/object-class/information-object'),
('def/object-class/geothermal-area-feature', 'Geothermal Area Feature', 'A region on the surface of the Earth characterized by the presence of features manifesting geothermal activity', '', 'Geothermal Area', 'NGDS', 'def/object-class/mapped-feature'),
('def/object-class/geothermal-direct-use-facility', 'Geothermal Direct Use Facility', 'basic description of facilities that utilize geothermal energy directly without transformation to electricity', '', 'Direct Use Facility', 'NGDS', 'def/object-class/facility'),
('def/object-class/geothermal-power-plant-facility', 'Geothermal Power Plant Facility', 'A facility that generates electricity using geothermal energy.', '', 'Geothermal Power Plant Facility', 'NGDS', 'def/object-class/facility'),
('def/object-class/gravity-observation', 'Gravity Observation', 'A site sampling feature specifically for a gravity observation', '', 'Gravity Station', 'NGDS', 'def/object-class/observation'),
('def/object-class/heat-flow-observation', 'Heat Flow Observation', 'description of heat flow measurements', '', 'Heat Flow Observation', 'NGDS', 'def/object-class/observation'),
('def/object-class/heat-pump-facility', 'Heat Pump Facility', 'description of heat pump facility locations', '', 'Heat Pump Facility', 'NGDS', 'def/object-class/facility'),
('def/object-class/history', 'History', 'An entity that represents an ordered sequence of events, typically unfied by a set of participants involved in all or most of the events.', '', '', '', ''),
('def/object-class/hydraulic-conductivity-observation', 'hydraulic conductivity observation', 'Object class representing measurement of hydraulic conductivity', '', 'Hydraulic Conductivity', 'Weigel 1987 USGS WRI 86-4170 Table 4 transcribed by SM Richard 2016-06-10', 'def/object-class/hydraulic-properties-observation'),
('def/object-class/hydraulic-properties-observation', 'Hydraulic Properties Observation', 'A specification of the hydraulic properties of some sampling feature.', '', 'Hydraulic Properties Observation', 'NGDS', 'def/object-class/observation'),
('def/object-class/hydrologic-feature', 'Hydrologic Feature', 'A feature defined by hydrologic criteria', '', '', 'SMR analysis', 'def/object-class/feature'),
('def/object-class/information-object', 'Information Object', 'An identifiable digital object that fulfills a requirement as it exists independently of any potential material carrier.', '', 'E-resource', 'base on http://purl.org/biotop/biotop.owl#InformationObject;  http://earthlexicon.sdsc.edu/wiki/E-resource', ''),
('def/object-class/isopleth-feature', 'Isopleth Feature', 'a connected sequence of points characterized by equal values for some observed property', '', 'Contour Line Feature', 'NGDS', 'def/object-class/feature'),
('def/object-class/mapped-feature', 'Mapped Feature', 'A feature that has an extent defined by some observation procedure', '', '', 'GeoSciML', 'def/object-class/feature'),
('def/object-class/measured-value', 'Measured Value', 'An object that represents the result of a measurement event. SWE common abstract data component.', '', '', 'SWE common', 'def/object-class/information-object'),
('def/object-class/mineral-recovery-brine-experimental-data', 'Mineral Recovery Brine Experimental Data', 'Record of experimental parameters related to experimental recovery of products from brines.  capturing the variables to describe/evaluate REE removal and capturing the variables influencing removal and describing removal media; Essentially metadata for experimental configuration. Use to record observations of REE extraction processes and can be used to compare the efficacy of those processes.', '', 'Brin Mineral Recovery Experimental Data', 'NGDS', 'def/object-class/observation'),
('def/object-class/mineral-recovery-brine-process-and-economics', 'Mineral Recovery Brine Process And Economics', 'Record of  parameters in the product removal (reactor) technique used to recover minerals from a brine; the ability of the media to be re-used; and the techno-economic and process economics. Use to record observations of REE extraction processes and can be used to compare the efficacy of those processes.', '', 'Brine Mineral Recovery Experimental Data', 'NGDS', 'def/object-class/observation'),
('def/object-class/null', 'Null', 'Null instance for populating other definitions before the data object is defined', '', 'nil:notDefined', 'Data type registry constuction', ''),
('def/object-class/observation', 'Observation', 'An event in which the value of one or more properties of some feature of interest is determined by an observer (agent) using some procedure', '', '', 'SMR analysis', 'def/object-class/event'),
('def/object-class/physical-sample', 'Physical Sample', 'An object extracted from a larger feature with the intention of representing one or more characteristics of that feature.', '', 'Physical Sample', 'NGDS', 'def/object-class/sampling-feature'),
('def/object-class/powell-and-cumming-geothermometry-observation', 'Powell And Cumming Geothermometry Observation', 'Observation results requires to run Powell and Cumming geothermometry calculations for geothermal fluids', '', 'Powell And Cumming Geothermometry', 'NGDS', 'def/object-class/observation'),
('def/object-class/power-plant-production-observation', 'Power Plant Production Observation', 'Observation with a result reporting the  electrical power production for a specific time interval from a power generating facility', '', 'Power Plant Production', 'NGDS', 'def/object-class/observation'),
('def/object-class/quantity-with-units', 'Quantity with Units', 'numeric quantity with associated units', '', '', '', ''),
('def/object-class/radiogenic-heat-production-observation', 'Radiogenic Heat Production Observation', 'Observation with a  result reporting the heat energy production rate from a sampling feature;  typically based on analysis of ore or more individual rock samples', '', 'Radiogenic Heat Production', 'NGDS', 'def/object-class/observation'),
('def/object-class/reference', 'Reference', 'an entity that specifies some related resource using a scheme that allows that resource to be accessed.', '', 'Link | citation', '', ''),
('def/object-class/resource-documentation', 'Resource Documentation', 'Collection of properties to describe an existing resource; including information for discovery; evaluation; and access.', '', 'Metadata', 'NGDS', 'def/object-class/information-object'),
('def/object-class/rock-chemical-composition-observation', 'Rock Chemical Composition Observation', 'observation whose result is the concentration of one or more analytes in a sampling feature whose material composition is a solid EarthMaterial.', '', 'Rock Chemistry', 'NGDS', 'def/object-class/observation'),
('def/object-class/sampling-feature', 'Sampling Feature', 'A feature that is defined based on the intention of acquiring information about some other feature of interest', '', '', 'SMR analysis', 'def/object-class/feature'),
('def/object-class/seismic-event-hypocenter-observation', 'Seismic Event Hypocenter Observation', 'Observation with a result that is the location of the hypocenter of a seismic event', '', 'Seismic Event Hypocenter', 'NGDS', 'def/object-class/observation'),
('def/object-class/temporal-object', 'Temporal Object', 'An entity that has a position in time', '', '', 'SMR analysis', ''),
('def/object-class/thermal-conductivity-observation', 'Thermal Conductivity Observation', 'Observation with a result that is the thermal conductivity of a sampling feature.', '', 'Thermal Conductivity Observation', 'NGDS', 'def/object-class/observation'),
('def/object-class/thermal-spring', 'Thermal Spring', 'characterizing a hot spring feature', '', 'Thermal Spring', 'NGDS', 'def/object-class/hydrologic-feature'),
('def/object-class/time-interval', 'Time interval', 'an entity that repsents some interval of time between a start and end time coordinate', '', 'date interval', 'ISO 19107', 'def/object-class/temporal-object'),
('def/object-class/value-domain', 'Value domain', 'an entity that specifies the values that may be used to quantify some thing.', '', '', '', ''),
('def/object-class/value', 'Value', 'an entity that represents a primitive value', '', '', 'SMR analysis', 'def/object-class/information-object'),
('def/object-class/volcanic-vent-feature', 'Volcanic Vent Feature', 'A feature in the Earths surface from which lava has been erupted.', '', 'Volcanic Vent', 'NGDS', 'def/object-class/geologic-feature'),
('def/object-class/well', 'Well', 'A facility intended to provide access to the subsurface of the Earth; might be used for extraction or injection of materials; has one or more borehole traces and a collar location', '', '', '', 'def/object-class/feature'),
('def/object-class/well-fluid-flux-observation', 'Well Fluid Flux Observation', 'Observation whose result is the fluid flux into or out of a well.', '', 'Fluid Flux Injection And Disposal Observation', 'NGDS', 'def/object-class/observation'),
('def/object-class/well-fluid-production-observation', 'Well Fluid Production Observation', 'Observation with a result that specifies the volume of fluid produced from a given well. A generic model is intended to allow for a variety of flows from a well including oil; gas; and water as well as steam production. ', '', 'Well Fluid Production', 'NGDS', 'def/object-class/observation'),
('def/object-class/well-header-feature', 'Well Header Feature', 'Feature that is the intersection of a well with a mapping horizon. In a simple well the well header is identical with the borehole collar for a single borehole trace that constitutes the well.', '', 'Well Header Observation', 'NGDS', 'def/object-class/feature'),
('def/object-class/well-log-observation', 'Well Log Observation', 'An observation with a result that is a coverage of property values at intervals along the trace of a borehole', '', 'Well Log Observation', 'NGDS', 'def/object-class/observation'),
('def/object-class/well-test-observation', 'Well Test Observation', 'Observation with a result that consists of fluid flux; pressure; and temperature data; includes information characterizing the experimental conditions', '', 'Well Test', 'NGDS', 'def/object-class/observation')
;
