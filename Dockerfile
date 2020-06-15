FROM sapmachine:latest 
VOLUME /log
RUN mkdir /opt/petclinic
WORKDIR /opt/petclinic
COPY ./target/*.jar ./petclinic.jar
EXPOSE 8080/tcp
CMD ["java", "-jar", "/opt/petclinic/petclinic.jar"]
