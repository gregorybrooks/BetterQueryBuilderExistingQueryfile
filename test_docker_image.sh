# This is an example of calling the Docker image from the command line,
# as opposed to the normal case when it is called by TasksRunner
DOCKERHUB_USER=gregorybrooks
ENVIRONMENT_TOP=/mnt/scratch/glbrooks/BETTER_TEST_ENVIRONMENTS/BETTER_DRY_RUN
QUERYFILE_PREFIX=docT5query_combine_all_passage_queries
docker run --rm -e MODE=AUTO -e OUT_LANG=en -e PHASE=Request -e INPUTFILE=AUTO.analytic_tasks.json -e QUERYFILE=$QUERYFILE_PREFIX -v $ENVIRONMENT_TOP/scratch/clear_ir/queryfiles/:$ENVIRONMENT_TOP/scratch/clear_ir/queryfiles -v $ENVIRONMENT_TOP/scratch/clear_ir/eventextractorfiles/:$ENVIRONMENT_TOP/scratch/clear_ir/eventextractorfiles --env queryFileLocation=$ENVIRONMENT_TOP/scratch/clear_ir/queryfiles --env eventExtractorFileLocation=$ENVIRONMENT_TOP/scratch/clear_ir/eventextractorfiles $DOCKERHUB_USER/better-query-builder-existing-queryfile ash -c ./runit.sh
