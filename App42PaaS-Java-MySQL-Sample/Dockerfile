FROM maven:latest
RUN apt -y install git
RUN mkdir /opt/authservice && cd /opt/authservice
RUN git clone https://github.com/shephertz/App42PaaS-Java-MySQL-Sample.git
ADD Config.properties App42PaaS-Java-MySQL-Sample/WebContent/Config.properties
ADD pom.xml App42PaaS-Java-MySQL-Sample/pom.xml
RUN cd  App42PaaS-Java-MySQL-Sample && mvn install
