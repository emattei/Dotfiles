#!/bin/bash

# how_in bash get length of array
# how_in awk print last field
# how_in sed remove several lines
# https://twitter.com/igor_chubin/status/1038826690347261953?s=20

how_in()
{
  where="$1"; shift
  IFS=+ curl "https://cht\.sh/$where/$*"
}

