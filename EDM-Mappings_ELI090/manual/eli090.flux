//declare variables

default fName = "resources/EDM-05.xml";

default file = FLUX_DIR + fName;
default fixFile = FLUX_DIR + "conf/ela090.fix";

file
|open-file
|decode-xml
|handle-generic-xml(emitNamespace="true")
|fix(fixFile)
|encode-json(prettyPrinting="false")
// |json-to-elasticsearch-bulk
| write(FLUX_DIR + fName +".json")
;
