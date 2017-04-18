#!/usr/bin/env bash

if  [ ! -f shasum.txt ] || grep -v -q $(shasum Main.java | awk '{print $1}') shasum.txt; then
    javac Main.java
    shasum Main.java > shasum.txt
    echo "new sha created: $(cat shasum.txt ) compiling..."
else
    echo 'same file found no need to compile'
fi

java Main





