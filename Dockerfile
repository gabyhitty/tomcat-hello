FROM tomcat
MAINTAINER gabyhitty@gmail.com
USER root
RUN wget -P /usr/local/tomcat/webapps  "http://tomcat.apache.org/tomcat-8.0-doc/appdev/sample/sample.war"
WORKDIR /usr/local/tomcat/webapps
RUN jar xvf /usr/local/tomcat/webapps/sample.war
#RUN ["rm", "-fr", "/usr/local/tomcat/webapps/ROOT"]
#COPY ./target/your-webapp-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

CMD ["catalina.sh", "run"]
