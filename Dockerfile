FROM tomcat
ADD target/dependency/webapp-runner.jar /tmp/webapp-runner.jar
ADD target/java-tomcat-maven-example.war /tmp/java-tomcat-maven-example.war
EXPOSE 8085
CMD [java -jar /tmp/webapp-runner.jar /tmp/java-tomcat-maven-example.war]
