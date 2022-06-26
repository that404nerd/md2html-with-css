#!/bin/bash

usage() {
  echo usage: $0 [--dest dir] file1.md file2.md ...
  exit 1
}

md2html() {
  TITLE=`basename $1 .md` # Markdown filename without the extension
  HTML=${DEST}/${TITLE}.html # HTML filename
  CSS=./styles.css # CSS filename (Located in the root dir of the repo)
  
  # Github Markdown to HTML
  pandoc --standalone -o ${HTML} -f gfm -t html $1 --self-contained --css=${CSS}

  # Plain Markdown to HTML (Uncomment this if you want to use this command)
  # pandoc --standalone -o ${HTML} -f markdown -t html $1 --self-contained --css=${CSS}
}

while [ "$#" -ne "0"  ]; do
  if [ "$1" = "--help" ]; then
      usage;
  elif [ "$1" = "--dest" ]; then
      shift
      DEST=$1
  else
      md2html $1;
  fi
  shift
done
