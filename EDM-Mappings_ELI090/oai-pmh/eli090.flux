// declare variables
default fixFile = FLUX_DIR + "conf/eli090.fix";
default dir = FLUX_DIR + "resources";

// read in all examples from resources dir
//dir
//|read-dir
//|open-file

// read from oai-pmh

"https://danrw-q-repo.hbz-nrw.de/oai-pmh/2.0"
|open-oaipmh(metadataPrefix="edm&from=2023-12-01")
|decode-xml
|handle-generic-xml(emitNamespace="true")
|fix(fixFile)
|encode-json(prettyPrinting="true")
//|json-to-elasticsearch-bulk(index="portal_test", type="ore:Aggregation")
|write(FLUX_DIR + "results/eli090.json")
;
