FROM openjdk:8

 
EXPOSE 8080

 
ADD target/dipti_java_project-0.0.1-SNAPSHOT-jar-with-dependencies.jar dipti_java_project-0.0.1-SNAPSHOT-jar-with-dependencies.jar

 
ENTRYPOINT ["java","-jar","/dipti_java_project-0.0.1-SNAPSHOT-jar-with-dependencies.jar"]
