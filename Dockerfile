# Pull base image 
From tomcat:8-jre8 

# Maintainer 
MAINTAINER "joelleyarro@yahoo.com" 
COPY ./webapp/target/webapp.war /usr/local/tomcat/webapps
