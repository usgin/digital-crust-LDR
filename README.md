This repository includes development work for a linked data registry for the NSF EarthCube Digital Crust project. 
The prototype registry uses the UK Linked Open data registry (https://github.com/UKGovLD/registry-core), and we have benefited from advice and conversations with Simon Cox at CSIRO Australia. 

The information model for the registry is UML in an Enterprise Architect (EA) project file (DataTypeRegistryModel.eap), also dumped as a PDF generateding using EA reporting tools and some edit cleanup; the pdf is commonly out of sync with the EA model.

The First iteration of Digital Crust Linked Data Registry has been built using content compiled in tables in spreadsheets. Upload to the UK Linked open data registry is from csv files generated from excel--clumsy!

If the data in the LDR needs to be updated use the `upload.sh` bash script. For Windows, a good tool for running this script is [Cygwin](https://www.cygwin.com/). Before the script is run the user name and password need to be filled in. See KeePass in the Digital Crust Registry entry. The script deletes the class and def registers and sub-registers then uploads them again. Then run the script:

```
$ ./upload.sh
```

You may need to be logged into the registry to see the registers.

**Current update 2016-12-20**
This process involves too much hand crafting, and we are now (2016-11) experimenting with the Cordra Data Type registry developed by CNRI and in testing by EUDAT (https://github.com/EUDAT-DTR/DTR).  The data type iniformation model has been translated to a JSON Schema (v4) in DataTypeJSON.json, with a test instance document (JSONDataTypeTest.json).  
