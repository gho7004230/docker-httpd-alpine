# Notional Dockerfile to create an image from an Alpine Linux base image
FROM alpine:3.14.0

# RUN package manager to upgrade OS
RUN apk --no-cache upgrade

# Run package manager to install Apache2
RUN apk add --no-cache apache2

# Copy index.html into image
COPY ./index.html /var/www/localhost/htdocs/

# Expose TCP Port 80
EXPOSE 80

# Run command to execute Apache daemon
CMD ["-D","FOREGROUND"]

# Identify location of the Apache binary file to execute
ENTRYPOINT ["/usr/sbin/httpd"]
