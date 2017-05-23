CREATE TABLE "bridgeObjClassProperty" 
("ObjectClassLabel" text,
 "dcdtr:domainOfCarriers" text,
 "PropertyLabel" text,
 "dcdtr:essentialProperty" text,
 "dcdtr:optionalProperty" text);

ALTER TABLE "bridgeObjClassProperty" OWNER TO grg_dba;

INSERT INTO "bridgeObjClassProperty" ("ObjectClassLabel", "dcdtr:domainOfCarriers", "PropertyLabel", "dcdtr:essentialProperty", "dcdtr:optionalProperty")

VALUES

('Power Plant Production Observation','def/object-class/power-plant-production-observation','Feature Identifier','def/property/feature-identifier',''),
('Power Plant Production Observation','def/object-class/power-plant-production-observation','Feature Name','def/property/feature-name',''),
('Power Plant Production Observation','def/object-class/power-plant-production-observation','Feature Type','def/property/feature-type',''),
('Power Plant Production Observation','def/object-class/power-plant-production-observation','Location','def/property/location',''),
('Geothermal Power Plant Facility','def/object-class/geothermal-power-plant-facility','Feature Identifier','def/property/feature-identifier',''),
('Geothermal Power Plant Facility','def/object-class/geothermal-power-plant-facility','Feature Name','def/property/feature-name',''),
('Geothermal Power Plant Facility','def/object-class/geothermal-power-plant-facility','Feature Type','def/property/feature-type',''),
('Geothermal Power Plant Facility','def/object-class/geothermal-power-plant-facility','Location','def/property/location',''),
('Well Test Observation','def/object-class/well-test-observation','Feature Identifier','def/property/feature-identifier',''),
('Well Test Observation','def/object-class/well-test-observation','Feature Name','def/property/feature-name',''),
('Well Test Observation','def/object-class/well-test-observation','Feature Type','def/property/feature-type',''),
('Well Test Observation','def/object-class/well-test-observation','Location','def/property/location',''),
('Well Log Observation','def/object-class/well-log-observation','Feature Identifier','def/property/feature-identifier',''),
('Well Log Observation','def/object-class/well-log-observation','Feature Name','def/property/feature-name',''),
('Well Log Observation','def/object-class/well-log-observation','Feature Type','def/property/feature-type',''),
('Well Log Observation','def/object-class/well-log-observation','Location','def/property/location',''),
('Well Header Feature','def/object-class/well-header-feature','Feature Identifier','def/property/feature-identifier',''),
('Well Header Feature','def/object-class/well-header-feature','Feature Name','def/property/feature-name',''),
('Well Header Feature','def/object-class/well-header-feature','Feature Type','def/property/feature-type',''),
('Well Header Feature','def/object-class/well-header-feature','Location','def/property/location',''),
('Well Fluid Production Observation','def/object-class/well-fluid-production-observation','Feature Identifier','def/property/feature-identifier',''),
('Well Fluid Production Observation','def/object-class/well-fluid-production-observation','Feature Name','def/property/feature-name',''),
('Well Fluid Production Observation','def/object-class/well-fluid-production-observation','Feature Type','def/property/feature-type',''),
('Well Fluid Production Observation','def/object-class/well-fluid-production-observation','Location','def/property/location',''),
('Volcanic Vent Feature','def/object-class/volcanic-vent-feature','Feature Identifier','def/property/feature-identifier',''),
('Volcanic Vent Feature','def/object-class/volcanic-vent-feature','Feature Name','def/property/feature-name',''),
('Volcanic Vent Feature','def/object-class/volcanic-vent-feature','Feature Type','def/property/feature-type',''),
('Volcanic Vent Feature','def/object-class/volcanic-vent-feature','Location','def/property/location',''),
('Thermal Spring','def/object-class/thermal-spring','Feature Identifier','def/property/feature-identifier',''),
('Thermal Spring','def/object-class/thermal-spring','Feature Name','def/property/feature-name',''),
('Thermal Spring','def/object-class/thermal-spring','Feature Type','def/property/feature-type',''),
('Thermal Spring','def/object-class/thermal-spring','Location','def/property/location','');
