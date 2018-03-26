#!/bin/bash

SRC=main

function simple() {
	src=$1
	platex ${src}
	dvipdfmx -p a4 ${src}
}

function full() {
	src=$1
	platex ${src}
	pbibtex ${src}
	platex ${src}
	platex ${src}
	platex ${src}
	dvipdfmx -p a4 ${src}
}

function clean() {
	src=$1
	rm ${src}.aux ${src}.bbl ${src}.blg ${src}.dvi ${src}.log *~
}

if [ $1 == 'full' ]; then
	full $SRC
elif [ $1 == 'clean' ]; then
	clean $SRC
else
	simple $SRC
fi
