FROM tomcat
ADD /var/lib/jenkins/workspace/va-tomcat-maven-example-1_master/target/dependency/webapp-runner.jar /tmp/webapp-runner.jar
EXPOSE 8085
CMD [java -jar /tmp/webapp-runner.jar]
