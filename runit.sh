#!/bin/ash
# This is the script that gets run when the Docker container is invoked.
# It copies all files that end in "queries.json" to the TasksRunner's
# queryfile directory. Then TasksRunner will see them and execute them.
set -v
for f in *queries.json
do
    cp $f ${queryFileLocation}/${QUERYFILE}.$f
    chmod a+rw $queryFileLocation/${QUERYFILE}.*
done

