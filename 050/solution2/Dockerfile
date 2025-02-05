FROM almalinux:9

EXPOSE 80
LABEL author="harshavardhan" \
      docker=true
ENV DB_URL="db.harshadevops.site"

RUN dnf install nginx -y && rm -rf /usr/share/nginx/html/*

COPY index.html /usr/share/nginx/html/index.html
ADD sample.tar /tmp/
CMD ["nginx", "-g", "daemon off;"]
