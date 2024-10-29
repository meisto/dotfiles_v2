#!/bin/bash

declare -a list
list=(
   # Triangles
   "\uE0B0"
   "\uE0B1"
   "\uE0B2"
   "\uE0B3"
   "\uE0BA"
   "\uE0B8"
   "\uE0BC"
   "\uE0BE"
   # Squares
   "\u2591"
   "\u2592"
   "\u2593"
   "\u2594"
)


for i in "${list[@]}"; do
   echo -n "$i"
   echo -e "\t => \t$i"
done;
