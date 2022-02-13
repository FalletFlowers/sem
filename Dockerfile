FROM openjdk:latest
COPY ./target/seMethods-0.1.0.2-jar-with-dependencies.jar /tmp
WORKDIR /tmp
ENTRYPOINT ["java", "-jar", "seMethods-0.1.0.2-jar-with-dependencies.jar"]

FROM mysql
WORKDIR /tmp
COPY db/test_db/employees.sql /docker-entrypoint-initdb.d
COPY db/test_db/*.sql /tmp/
COPY db/test_db/*.dump /tmp/
ENV MYSQL_ROOT_PASSWORD example

COPY version: '3' services:/
  # Application Dockerfile is in same folder which is .
ENV  app: build: .

  # db is is db folder
COPY  db: COPY    build: db/
ENV    command: --default-authentication-plugin=mysql_native_password
 COPY  restart: always /


