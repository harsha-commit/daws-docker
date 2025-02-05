ARG version
FROM almalinux:${version:-9}

EXPOSE 80
LABEL author="harshavardhan" \
      docker=true
ENV DB_URL="db.harshadevops.site"

RUN dnf install nginx -y
WORKDIR /usr/share/nginx/html/

ONBUILD RUN rm -rf *
ONBUILD COPY index.html .

USER expense
CMD ["nginx", "-g", "daemon off;"]
