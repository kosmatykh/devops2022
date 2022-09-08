FROM maven:latest as builder
RUN apt -y install git
RUN cd /opt && mkdir authservice && cd authservice && git clone https://github.com/shephertz/App42PaaS-Java-MySQL-Sample.git
WORKDIR /opt/authservice
ADD Config.properties App42PaaS-Java-MySQL-Sample/WebContent/Config.properties
ADD pom.xml App42PaaS-Java-MySQL-Sample/pom.xml
RUN cd  App42PaaS-Java-MySQL-Sample && mvn install && mv target/App42PaaS-Java-MySQL-Sample-0.0.1-SNAPSHOT.war target/App42PaaS.war

FROM tomcat:latest as localtomcat
COPY --from=builder /opt/authservice/App42PaaS-Java-MySQL-Sample/target/App42PaaS.war  /usr/local/tomcat/webapps/App42PaaS.war