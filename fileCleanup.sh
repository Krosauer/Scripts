#!/bin/sh

cd /Users/kylerosauer/Downloads
for ext in `find *  -maxdepth 1 -type f | rev | cut -d '.' -f1 | rev | sort -u`
do
  for file in `ls *.${ext}`
	do
      if ! [[ -d ${file} ]]; then
        mkdir -p ${ext}
        mv ${file} ${ext}
      fi
	done
done
