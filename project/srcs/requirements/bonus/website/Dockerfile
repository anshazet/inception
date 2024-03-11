FROM alpine:3.15

RUN apk update && apk upgrade && apk add --no-cache nginx

# Create the directories before adding files to them
RUN mkdir -p /etc/nginx/sites-enabled/ && \
    echo "server {" > /etc/nginx/sites-enabled/default && \
    echo "root    /var/www;" >> /etc/nginx/sites-enabled/default && \
    echo "location / {" >> /etc/nginx/sites-enabled/default && \
    echo "    try_files \$uri /index.html;" >> /etc/nginx/sites-enabled/default && \
    echo "}}" >> /etc/nginx/sites-enabled/default

COPY requirements/bonus/website/conf/* /var/www/

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
