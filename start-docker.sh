IMAGE_NAME=$USER/webapp:latest
docker build . -f Dockerfile -t $IMAGE_NAME
docker run -v ~/webapp:/webapp -w=/webapp -it --entrypoint bash $IMAGE_NAME
