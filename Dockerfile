FROM openjdk:11

expose 8080

COPY *jar /jars/*jar

CMD java -jar /jars/*jar 


