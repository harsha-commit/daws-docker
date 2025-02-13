FROM mysql:9
EXPOSE 3306
ENV MYSQL_ROOT_PASSWORD='ExpenseApp@1' \
    MYSQL_DATABASE='transactions' \
    MYSQL_USER='expense' \
    MYSQL_PASSWORD='ExpenseApp@1'
COPY scripts/*.sql /docker-entrypoint-initdb.d
