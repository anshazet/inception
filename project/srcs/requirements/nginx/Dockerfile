# Use NGINX with TLSv1.2 or TLSv1.3
FROM alpine:3.15

RUN	apk update && apk upgrade && apk add --no-cache nginx

EXPOSE 443

# Custom NGINX configuration
COPY ./conf/nginx.conf /etc/nginx/nginx.conf
# COPY ./requirements/nginx/conf/nginx.conf /etc/nginx/nginx.conf



# Add TLS certificate and key
# COPY ./conf/ashalagi.42.fr.crt /etc/nginx/ashalagi.42.fr.crt
# COPY ./conf/ashalagi.42.fr.key /etc/nginx/ashalagi.42.fr.key

COPY ./tools/ashalagi.42.fr.crt /etc/nginx/ashalagi.42.fr.crt
COPY ./tools/ashalagi.42.fr.key /etc/nginx/ashalagi.42.fr.key


# Ensure NGINX is the entrypoint
CMD ["nginx", "-g", "daemon off;"]