//declare variables

default fName = "danrw_prod-001.xml";

default file = FLUX_DIR + fName;
default fixFile = FLUX_DIR + "edm.fix";

file
|open-file
|decode-xml
|handle-generic-xml(emitNamespace="true")
|fix(fixFile)
|encode-json(prettyPrinting="true")
// |json-to-elasticsearch-bulk
| write(FLUX_DIR + fName +".json")
;
