FROM tomcat
ADD target/dependency/webapp-runner.jar /tmp/target/dependency/webapp-runner.jar
EXPOSE 8085
CMD [java -jar /tmp/webapp-runner.jar]
