FROM redhat/ubi9:latest

RUN dnf -y update && \
    dnf -y install nginx && \
    dnf clean all

RUN mkdir -p /etc/nginx/conf.d /var/log/nginx

COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

ENTRYPOINT ["nginx", "-g", "daemon off;"]