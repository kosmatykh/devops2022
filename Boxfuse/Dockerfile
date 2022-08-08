FROM tomcat:latest
RUN apt update
RUN apt -y install maven default-jdk
RUN apt -y install git
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git boxfuse/
ADD pom.xml boxfuse/
RUN cd boxfuse && mvn package
RUN cp boxfuse/target/hello-1.0.war /usr/local/tomcat/webapps
