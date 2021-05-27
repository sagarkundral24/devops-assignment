## Instructions

Please find below the instructions to build and run the container

## Building the image from Dockerfile

docker build . -t <user-account>/<image-name>:<version>

eg: docker build . -t sagarkundral24/node-web-app:v2

## Running the container from the image created above

docker run -p <any-port>:<container-port> -d  --name <container-name> <user-account>/<image-name>:<version>

eg: docker run -p 50002:3000 -d --name node-container-1 sagarkundral24/node-web-app:v2

Once the container is up. You can test the application by running below command on your local machine

curl localhost:50002/ping
