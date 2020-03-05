#!/usr/bin/bash


while read -r line; do
    # do something with $line
done < file


# read removes trailing and leading whitespaces. To preserve them:
while IFS= read -r line; do
    # do something with $line
done < file

# To remove the redirection at the end of the script:
cat file | while IFS= read -r line; do
    # do something with $line
done

# To read just the first 3 fields. The last argument is to discard the rest.
# Separator is save in the IFS variable.
while read -r field1 field2 field3 _; do
    # do something with $field1, $field2, and $field3
done < file


# This two instructions:
packets=$(echo $info | awk '{ print $1 }')
time=$(echo $info | awk '{ print $4 }')
# Can be replaces by
read packets _ _ time _ <<< "$info"
