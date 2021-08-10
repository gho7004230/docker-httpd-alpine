# docker-httpd-alpine

A Docker Image for practicing custom image & container builds in a CI/CD pipeline.

Basic Container Deployment:

$ docker run -d -p 80:80 --name web1 --hostname web.test.net --network test.net gho7004230/httpd:alpine
