FROM openjdk:8-jdk
LABEL maintainer="vrodi18@gmail.com"
COPY  spring-petclinic/ /spring-petclinic/
WORKDIR /spring-petclinic/
RUN ./mvnw package
RUN chmod +x target/*.jar*
EXPOSE 8080
CMD ["java", "-jar", "target/spring-petclinic-2.4.0.BUILD-SNAPSHOT.jar"]
