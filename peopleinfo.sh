#!/bin/bash

awk 'BEGIN{FS="\t" ;}
    {
        if(NF == 7 && $1 != " " && $1 != "name")
            { print $0 ;}
    }' example_people_data.tsv 
