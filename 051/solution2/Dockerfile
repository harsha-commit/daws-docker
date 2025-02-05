ARG version
FROM almalinux:${version:-9}

EXPOSE 80
LABEL author="harshavardhan" \
      docker=true
ENV DB_URL="db.harshadevops.site"

RUN useradd expense
RUN dnf install nginx -y
WORKDIR /usr/share/nginx/html/

ONBUILD RUN rm -rf /usr/share/nginx/html/*
ONBUILD COPY index.html /usr/share/nginx/html/index.html

USER expense
CMD ["nginx", "-g", "daemon off;"]
