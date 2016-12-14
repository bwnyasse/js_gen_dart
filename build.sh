#!/bin/bash

# Delete previous Directory
rm -rf DefinitelyTyped

# Clone 
git clone https://github.com/DefinitelyTyped/DefinitelyTyped.git

rm -rf DefinitelyTyped/.git

#Docker build
docker build -t bwnyasse/js_gen_dart .
