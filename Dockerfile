FROM tomcat:8.5

ADD ./webapp/target/*webapp.war /user/local/tomcat/webapps

EXPOSE 8080

CMD ["catalina.sh", "run"]