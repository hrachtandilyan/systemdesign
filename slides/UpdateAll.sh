#!/bin/bash

function update_lesson 
{
    LESSON_SECTION=$1
    LESSON_TITLE=$2
    cd $LESSON_TITLE
    pwd
    #sed -i "" "s/Main Title/${LESSON_TITLE}/g" tex/$LESSON_TITLE.tex
    make clean
    make slides
    cp $LESSON_TITLE.pdf ../../../pdf/$LESSON_SECTION
    make clean
    #ls -l
    cd ..
}

cd src

cd Introduction
update_lesson Introduction ScaleFromZeroToMillionsOfUsers
cd ..

cd Systems
update_lesson Systems SearchAutocomplete
cd ..

cd Topics
update_lesson Topics Caching
cd ..

