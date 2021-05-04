set -v
# This is an example of calling the Docker image from the command line,
# as opposed to the normal case when it is called by TasksRunner,
# and this script just opens up an ash command line inside the Docker container,
# so you can explore.
DOCKERHUB_USER=gregorybrooks
ENVIRONMENT_TOP=/mnt/scratch/glbrooks/BETTER_TEST_ENVIRONMENTS/BETTER_DRY_RUN
QUERYFILE_TO_USE=docT5query_combine_all_passage_queries.queries.json
docker run -it --rm -e MODE=AUTO -e OUT_LANG=en -e PHASE=Request -e INPUTFILE=AUTO.analytic_tasks.json -e QUERYFILE=$QUERYFILE_TO_USE -v $ENVIRONMENT_TOP/scratch/clear_ir/queryfiles/:$ENVIRONMENT_TOP/scratch/clear_ir/queryfiles -v $ENVIRONMENT_TOP/scratch/clear_ir/eventextractorfiles/:$ENVIRONMENT_TOP/scratch/clear_ir/eventextractorfiles --env queryFileLocation=$ENVIRONMENT_TOP/scratch/clear_ir/queryfiles --env eventExtractorFileLocation=$ENVIRONMENT_TOP/scratch/clear_ir/eventextractorfiles $DOCKERHUB_USER/better-query-builder-existing-queryfile ash -c ./runit.sh
