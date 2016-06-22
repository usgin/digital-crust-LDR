These are files that on which the Digital Crust Linked Data Registry is built.

If the data in the LDR needs to be updated use the `upload.sh` bash script. For Windows, a good tool for running this script is [Cygwin](https://www.cygwin.com/)

Before the script is run the user name and password need to be filled in. See KeePass in the Digital Crust Registry entry. The script deletes the class and def registers and sub-registers then uploads them again.

Then run the script:

```
$ ./upload.sh
```

You may need to be logged into the registry to see the registers.
