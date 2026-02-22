FROM tomcat:10.1-jdk21

#Remove default ROOT app (optional)
RUN rm -rf /usr/local/tomcat/webapps/*

#COPY your war into Tomcat
COPY target/my-tomcat-app.war /usr/local/tomcat/webapps/my-tomcat-app.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
