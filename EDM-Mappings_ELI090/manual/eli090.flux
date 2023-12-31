// declare variables
default fixFile = FLUX_DIR + "conf/eli090.fix";
default dir = FLUX_DIR + "resources";

// read in all examples from resources dir
dir
|read-dir
|open-file
|decode-xml
|handle-generic-xml(emitNamespace="true", recordTagName="RDF")
|fix(fixFile)
|encode-json(prettyPrinting="true")
|json-to-elasticsearch-bulk(index="portal_test", type="ore:Aggregation")
|write(FLUX_DIR + "results/eli090.json")
;

