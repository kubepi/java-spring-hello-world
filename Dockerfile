FROM hypriot/rpi-java
ENV PORT 8080
EXPOSE 8080
VOLUME /tmp
ARG DEPENDENCY=build/dependency
COPY ${DEPENDENCY}/BOOT-INF/lib /app/lib
COPY ${DEPENDENCY}/META-INF /app/META-INF
COPY ${DEPENDENCY}/BOOT-INF/classes /app
CMD ["java", "-jar", "app.jar"]
