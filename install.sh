#!/usr/bin/env bash

cd datacapture
npm install
cd ../rdfgeneration/
npm install
cd node_modules/tessel2rdf
./scripts/download_mapper.sh