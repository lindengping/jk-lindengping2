FROM docker.io/openjdk:8-alpine

MAINTAINER lindengping lindengping@yihecloud.com

WORKDIR /program


#Copy jre and tomcat into image
ADD jre1.8.0_31 /usr/local/java/
ADD apache-tomcat-6.0.35 /usr/local/tomcat/
ADD start_tomcat.sh start_tomcat.sh
#Expose http port
EXPOSE 8080
