FROM openjdk:8

 
EXPOSE 8080

 
ADD target/AppRunner-0.0.1-SNAPSHOT-jar-with-dependencies.jar AppRunner-0.0.1-SNAPSHOT-jar-with-dependencies.jar

 
ENTRYPOINT ["java","-jar","/AppRunner-0.0.1-SNAPSHOT-jar-with-dependencies.jar"]
