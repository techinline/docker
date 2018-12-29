FROM sonarqube:6.7.5-alpine

RUN wget -P /opt/sonarqube/extensions/plugins/ https://github.com/SonarOpenCommunity/sonar-cxx/releases/download/cxx-1.2.1/sonar-cxx-plugin-1.2.1.1569.jar && \
    wget -P /opt/sonarqube/extensions/plugins/ https://github.com/Pablissimo/SonarTsPlugin/releases/download/v1.1.0/sonar-typescript-plugin-1.1.0.jar && \
    wget -P /opt/sonarqube/extensions/plugins/ https://binaries.sonarsource.com/Distribution/sonar-csharp-plugin/sonar-csharp-plugin-7.9.1.7622.jar
