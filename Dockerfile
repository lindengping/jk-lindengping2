FROM tomcat:7-jre7

MAINTAINER lindengping lindengping@yihecloud.com

COPY target/lindengping2-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapp/lindengping2.war 
EXPOSE 8080
#…Ë÷√tomcat ◊‘∆Ù∂Ø  
CMD [ "/usr/local/tomcat/bin/catalina.sh", "run" ]
