FROM balenalib/armv7hf-debian-openjdk:10-jdk-sid-run
ENV PORT 8080
EXPOSE 8080
VOLUME /tmp
ARG LIBS=build/libs
COPY ${LIBS} /dist
CMD ["java", "-jar", "/dist/helloworld-spring-boot-0.0.1-SNAPSHOT.jar"]