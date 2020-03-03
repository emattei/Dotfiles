
# All the regular files in the current folder ordered by size
ls -lS | grep '^-'

# Recursively list regular files and sort them by size
ls -lR | grep '^-' | sort -k 5 -rn

# Same as above but with full path
find . -type f  -exec du -h {} + | sort -r -h


