FROM maven:latest
RUN apt -y install git
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
ADD pom.xml boxfuse-sample-java-war-hello/
RUN cd boxfuse-sample-java-war-hello && mvn package
RUN cp boxfuse-sample-java-war-hello/target/hello-1.0.war /usr/share/