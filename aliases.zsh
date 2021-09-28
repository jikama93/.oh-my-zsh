alias buscar='find . -type f -print0 | xargs -0 -n10 -P4 grep -m 1 -H -l'
