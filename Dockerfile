FROM sapmachine:latest 
RUN mkdir /opt/petclinic
WORKDIR /opt/petclinic
COPY ./target .
EXPOSE 8080/tcp
CMD ["java", "-jar", "/opt/petclinic/spring-petclinic-2.3.0.BUILD-SNAPSHOT.jar"]
