FROM openjdk:17-alpine

WORKDIR /app

COPY . .

RUN ls -la ./

RUN mvn install

RUN ls -la ./

ENTRYPOINT ["java", "-jar" ,"./target/finalProject-0.0.1-SNAPSHOT.jar"]

EXPOSE 8080