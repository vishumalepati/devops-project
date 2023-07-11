#This is to test the CI for the jenkins pipeline - Modified the jenkinsfile - Testing the properites in jenkins file
FROM hshar/webapp
RUN apt update -y && apt install apache2 -y
COPY . /var/www/html
EXPOSE 80
ENTRYPOINT apache2ctl -DFOREGROUND
