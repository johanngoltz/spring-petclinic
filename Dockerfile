FROM sapmachine:latest 
RUN mkdir /opt/petclinic
WORKDIR /opt/petclinic
COPY ./target/*.jar .
EXPOSE 8080/tcp
CMD ["java", "-jar", "/opt/petclinic/*.jar"]
