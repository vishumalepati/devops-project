#This is to test the CI for the jenkins pipeline - Test on 12th July 2023
FROM hshar/webapp
RUN apt update -y && apt install apache2 -y
COPY . /var/www/html
EXPOSE 80
ENTRYPOINT apache2ctl -DFOREGROUND
