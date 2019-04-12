FROM balenalib/raspberrypi3-debian-openjdk:7-jessie
ENV PORT 8080
EXPOSE 8080
VOLUME /tmp
ARG DEPENDENCY=build/dependency
COPY ${DEPENDENCY}/BOOT-INF/lib /app/lib
COPY ${DEPENDENCY}/META-INF /app/META-INF
COPY ${DEPENDENCY}/BOOT-INF/classes /app
ARG LIBS=build/libs
COPY ${LIBS} /dist
CMD ["java", "-jar", "/dist/helloworld-spring-boot-0.0.1-SNAPSHOT.jar"]
