FROM ubuntu:latest
WORKDIR /var/www/html
COPY ./index.html /var/www/html/index.html
RUN apt update -y
RUN apt install nginx -y
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

