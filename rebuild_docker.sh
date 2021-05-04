set -v
DOCKERHUB_USER=gregorybrooks
# NOTE: Docker image names must be all lower-case
docker rmi $DOCKERHUB_USER/better-query-builder-existing-queryfile
docker build -t $DOCKERHUB_USER/better-query-builder-existing-queryfile .
