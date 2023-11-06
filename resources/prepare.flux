//declare variables

default fName = "EDM3.xml";

default file = FLUX_DIR + fName;
default fixFile = FLUX_DIR + "prepare.fix";
default fixFile1 = FLUX_DIR + "edm.fix";
default prepFile =  FLUX_DIR + "prepared.xml";
file
|open-file
|decode-xml
|handle-generic-xml(recordTagName="RDF")
//|fix(fixFile)
|encode-xml(recordTag="RDF", rootTag="record", valueTag="value")
|write(FLUX_DIR + "prepared.xml")
;
prepFile
|open-file
|decode-xml
|handle-generic-xml
|fix(fixFile)
|fix(fixFile1)
|encode-json(prettyPrinting="true")
|write("stdout")
;
