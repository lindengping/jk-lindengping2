FROM tomcat:7-jre7

MAINTAINER lindengping lindengping@yihecloud.com

ADD settings.xml /usr/local/tomcat/conf/
ADD tomcat-users.xml /usr/local/tomcat/conf/
