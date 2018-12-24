FROM sonarqube:7.1-alpine

RUN wget -P /opt/sonarqube/extensions/plugins/ https://github.com/SonarOpenCommunity/sonar-cxx/releases/download/cxx-1.2.1/sonar-cxx-plugin-1.2.1.1569.jar && \
    wget -P /opt/sonarqube/extensions/plugins/ https://binaries.sonarsource.com/Distribution/sonar-typescript-plugin/sonar-typescript-plugin-1.8.0.3332.jar && \
    wget -P /opt/sonarqube/extensions/plugins/ https://binaries.sonarsource.com/Distribution/sonar-csharp-plugin/sonar-csharp-plugin-7.9.1.7622.jar
