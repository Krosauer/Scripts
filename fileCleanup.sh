#!/bin/sh

cd /Users/kylerosauer/Downloads
for ext in `find *  -maxdepth 1 -type f | rev | cut -d '.' -f1 | rev | sort -u`
do

  mkdir -p $ext
  mv *.$ext $ext

done