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

To use this Docker image, clone this git repo into your directory. 
Delete the two sample query files, and copy in any query files you want to run.
Edit the rebuild_docker.sh and push_to_dockerhub.sh scripts to use your Docker Hub user name 
instead of Greg's.
Run rebuild_docker.sh to build the Docker image on your machine. Then push it to 
Docker Hub by running push_to_dockerhub.sh and notify Greg so he can pull the image
to the submission machine and run it there.

If you want to test your new Docker image on your machine, assuming you have created a 
BETTER DRY RUN test environment, edit run_docker_image.sh to use that environment, to have
the right Docker Hub user name and the right query file to use. Then run run_docker_image.sh. 
All that will do is copy the query file(s) to the environment's query file directory.

A better test is to run your Docker image in your local instance of TasksRunner. To do so, 
just edit TaskRunner's run_settings_DRY_RUN.env file to specify your Docker image in 
the requestLevelQueryFormulatorDockerImage setting and run TasksRunner.
