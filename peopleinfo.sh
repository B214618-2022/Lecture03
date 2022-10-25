#!/bin/bash

echo -e '\nnumber of people in the dataset:'
awk 'BEGIN{FS="\t" ;}
    {
        if(NF == 7 && $1 != " " && $1 != "name")
            { print $0 ;}
    }' example_people_data.tsv | wc -l

echo -e '\nnumber of people aged 30 or older:'
awk 'BEGIN{FS="\t" ;}
   { 
     if($6 <= 1992)
     { if(NF == 7)
          {print $0 ; }
    } 
   }' example_people_data.tsv | wc -l

echo -e '\nnumber of people called Jan:'
awk '($1 == "Jan")' example_people_data.tsv | wc -l


echo -e '\nmost common countries:'
cut -f7 example_people_data.tsv | \
  sort | \
  uniq -c | \
  sort -k1,1nr | \
  head -5


echo -e '\nnumber of people from the most common country (Mozambique) with an age of 50 or older:'
awk 'BEGIN{ FS="\t" ;} 
  { 
    if($6 <= 1972 && $7 == "Mozambique")
       { print $0 ; } 
  }' example_people_data.tsv | wc -l

echo -e '\n\n'
