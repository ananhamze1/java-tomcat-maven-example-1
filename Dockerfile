FROM tomcat
ADD target/dependency/webapp-runner.jar /tmp/webapp-runner.jar
EXPOSE 8085
CMD [java -jar /tmp/webapp-runner.jar]
