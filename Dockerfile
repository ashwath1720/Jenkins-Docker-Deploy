FROM tomcat:8.5

ADD ./webapp/target/*.war /user/local/tomcat/webapps

EXPOSE 8080

CMD ["catalina.sh", "run"]