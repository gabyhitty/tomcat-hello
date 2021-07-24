FROM tomcat:8.0-alpine
MAINTAINER gabyhitty@gmail.com
RUN set -x \
        \
       && rm -rf /usr/local/tomcat/webapps/* \
       && mkdir /usr/local/tomcat/macky \
       && wget -P /usr/local/tomcat/macky  https://tomcat.apache.org/tomcat-8.0-doc/appdev/sample/sample.war \
       && unzip -o /usr/local/tomcat/macky/sample.war -d /usr/local/tomcat/macky \
       && rm -rf /usr/local/tomcat/macky/sample.war \
       && cp -r /usr/local/tomcat/macky/* /usr/local/tomcat/webapps/
#      && wget -P /usr/local/tomcat/webapps  "https://tomcat.apache.org/tomcat-8.0-doc/appdev/sample/sample.war"
#RUN ["rm", "-fr", "/usr/local/tomcat/webapps/ROOT"]
#COPY ./target/your-webapp-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

CMD ["catalina.sh", "run"]
