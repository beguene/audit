#!/bin/bash

# arg1 folder or file name
echo 'Auditing CSS in ' . $1

echo 'Number of lines of code in css'
#cat "$1/*.css" | sed '/^\s*$/d' | wc -l

echo 'float'
ack 'float' $1 | wc -l
echo 'h1-6'
ack 'h[1-6]' $1 | wc -l
echo 'Font size number:'
ack 'font\-size' $1 | wc -l
echo 'padding: 0'
ack 'padding\:(\s)*0' $1 | wc -l
echo 'margin: 0'
ack 'margin\:(\s)*0' $1 | wc -l
echo '!important'
ack '\!important' $1 | wc -l
