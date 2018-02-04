#!/bin/bash

FILE=../md/blog.$(date "+%F").md
HTML=../html/blog.$(date "+%F").html

TAGS=()

function lego {
  echo -e "## md-VIM Book\n\n* Date: $(date '+%F')\n* Tags: ${TAGS[*]}\n\n\n---\n" > $FILE

} 

function html {
  echo -e "<meta charset="utf-8">\n<html>\n<head><link rel="stylesheet" type="text/css" href="style.css"></head>\n<img src="https://izvetrel.art/static/images/md-vim.png" style="float:right" height="56" width="224" alt="Image" />\n$(cat $HTML)" > $HTML
}



if [ -e $FILE ];then
  echo -e "Notice: File exist"
  sleep 1
  vim + $FILE
    markdown $FILE -o $HTML
  html
else
  lego
  vim + $FILE
    markdown $FILE -o $HTML
  html
fi


## html config
# v funkciq html, predi tova prosto nakraq
#  echo -e "## md-VIM Book\n$(date '+%F')\n======\n" > $FILE

