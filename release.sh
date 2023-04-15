#!/bin/bash
rm -rf release
mkdir -p release

cp -rf matrix *.{hpp,cpp,txt,json} LICENSE release/

mv release score-addon-matrix
7z a score-addon-matrix.zip score-addon-matrix
