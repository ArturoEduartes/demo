FROM openjdk:8-jdk-alpine
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} app.jar
RUN adduser -D MyUser
USER MyUser
#ENV JAVA_OPTS="-Xmx300m"
CMD [ "sh", "-c", "java $JAVA_OPTS -Dserver.port=$PORT -jar /app.jar" ]
# ENTRYPOINT ["java","$JAVA_OPTS","-Dserver.port=$PORT","-jar","/app.jar"]
