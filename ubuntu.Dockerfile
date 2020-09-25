FROM ubuntu:18.04

RUN apt-get update && apt-get install -y software-properties-common

RUN add-apt-repository -y ppa:nginx/stable && \
    apt-get update && \
    apt-get -y install nginx

COPY ./nginx.conf /etc/nginx/nginx.conf

# add local configuration files into the image
# COPY ./nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]