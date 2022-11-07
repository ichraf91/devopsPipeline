FROM openjdk:8-jdk-alpine
RUN apk --no-cache add curl
RUN curl -u admin:nexus -o tpachat.jar "http://192.168.1.74:8081//service/rest/v1/search/assets/download?sort=version&repository=nexus-repo-devops&maven.groupId=tn.esprit.rh&maven.artifactId=achat&maven.baseVersion=1.0&maven.extension=jar" -L
ENTRYPOINT ["java","-jar","/tpachat.jar"]
EXPOSE 8083
