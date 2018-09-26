FROM tomcat:8.0.20-jre8

ENV CATALINA_HOME=/usr/local/tomcat
ENV PORT=8080

ADD ./target/*.war $CATALINA_HOME/webapps/

EXPOSE $PORT

CMD ["catalina.sh", "run"]