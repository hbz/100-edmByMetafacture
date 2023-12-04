# About #

## About edmByMetafacture ##

edmByMetafacture is a collection of flux and fix files provided for usage within the metafacture framework. These files are thought to build a basic ETL (extract transform load) tool for convert EDM.xml into an elastic search index. 

Mappings differ from elastic search version due to constrains given by the operating framework.Additional example files for testing are provided

## License ##

GenericSipLoader is licensed under [Apache License 2.0](LICENSE)


## Prerequisites ##

-	[Metafacture](https://metafacture.org)

## Installation ##

No installation beyond Metafacture required. Can be used as part of metafacture from command line. 

## Usage ##

Go to metafucture script location, e.g.:

`cd ~/metafacture/bin`

Run:

`./metafix-runner path_to_git_repo/EDM-Mappings_ELI[Version]/[Method]/eli[Version].flux`

with **Version** is version number of elasticsearch and **Method** is **manual** or **oai-pmh** either.

