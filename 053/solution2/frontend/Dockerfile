FROM nginx
RUN rm -rf /usr/share/nginx/html/index.html
RUN rm -rf /etc/nginx/nginx.conf
RUN rm -rf /etc/nginx/conf.d/default.conf

# Copy from daws76s/roboshop-docker (Ignore working for now)
COPY expense.conf /etc/nginx/nginx.conf

# code/* only copies files inside it, ignores directories
COPY code/ /usr/share/nginx/html/