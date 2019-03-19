#!/bin/bash

FILE=../md/villa.md
HTML=../html/villa.html

TAGS=()

function lego {
  echo -e "## md-VIM Book\n\n* Date: $(date '+%F')\n* Tags: ${TAGS[*]}\n\n\n---\n" > $FILE

} 

function html {
	echo -e "<!doctype html>\n<meta charset="utf-8">\n<html>\n<head><link rel="stylesheet" type="text/css" href="style.css"></head>\n<img src="https://tchnmf.github.io/images/md-vim.png" style="float:right" height="56" width="224" alt="Image" />\n$(cat $HTML)\n" > $HTML
}

function footer {
	echo -e "\n"											>> $HTML
	echo -e "<br>" 											>> $HTML
	echo -e "<p><small><a href=https://tchnmf.github.io/>tchnmf.github.io copyleft</a><small></p>" 	>> $HTML
	echo -e "</html>" 										>> $HTML
}


if [ -e $FILE ];then
  echo -e "Notice: File exist"
  sleep 1
  vim + $FILE
    markdown $FILE -o $HTML
  html
  footer
else
  lego
  vim + $FILE
    markdown $FILE -o $HTML
  html
  footer
fi


## html config
# v funkciq html, predi tova prosto nakraq
#  echo -e "## md-VIM Book\n$(date '+%F')\n======\n" > $FILE

