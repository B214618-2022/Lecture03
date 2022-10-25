#!/bin/bash

grep -v "name" example_people_data.tsv | awk 'BEGIN{FS="\t" ;}
    {
        if(NF != 7)
            { print "Not 7 fields: ", $0 ;}
    }'
