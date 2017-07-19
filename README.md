This repository includes development work for a Data Type Registry for the NSF EarthCube Digital Crust and Data Discovery Hub projects. 
A prototype registry using the UK Linked Open data registry (https://github.com/UKGovLD/registry-core), was deployed for testing. 

**Update 2016-12-20**
We are now (2016-11) experimenting with the Cordra Data Type registry developed by CNRI and in testing by EUDAT (https://github.com/EUDAT-DTR/DTR).  The data type information model has been translated to a JSON Schema (v4) in DataTypeJSON.json.  CSV files for the content tables (from the spreadsheets in DataTypeCompilationWorkbooks folder here) were loaded into a PostGres database to use the JSON query functions to generate JSON for loading to Cordra.  Files for the Cordra implementation are in the CordraImplementation folder. 

The information model for the registry is UML in an Enterprise Architect (EA) project file (DataTypeRegistryModel.eap), also [available as a HTML version](http://usgin.github.io/usginspecs/DataTypeModel2016-06-18.htm), which might be slightly out of sync with the .eap UML model.  A free viewer for EA projects is [here](http://www.sparxsystems.com/products/ea/downloads.html) (goto the EALite.msi link). 

The registry tests have been implemented using content compiled in tables in spreadsheets for [data types defined by the USGIN Geothermal Data System](http://schemas.usgin.org/models/). 

 
