# BetterQueryBuilderExistingQueryfile
Sample BETTER query builder, for use with TasksRunner. 
This one allows you to use already-created Galago batch query files.
These must be request-level query files.
It copies any ".queries.json" files you put in the work directory
to TasksRunner's query file directory, where it will see them 
and run them. It will first run the task-level queries and build 
the task-level indexes, and then run all the request-level query
files you provide against those indexes, leaving the run files and 
the evaluation files in the environment directories (e.g. at
/mnt/scratch/glbrooks/BETTER_TEST_ENVIRONMENTS/BETTER_DRY_RUN/scratch/clear_ir/runfiles).
