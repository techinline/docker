FROM    gitlab/gitlab-runner:v11.11.4

ENV     RUNNER_ROOT=/home/titan/gitlab \
        CI_SERVER_URL=https://gitlab.setme.it \
        RUNNER_EXECUTOR=shell \
        RUNNER_TAG_LIST=angular7 \
        REGISTER_LOCKED=false \
        REGISTER_RUN_UNTAGGED=false \
        RUNNER_NAME=ANGULAR7 \
        SONAR_SCANNER_PATH="/sonar-scanner/sonar-scanner-3.2.0.1227-linux/bin"

RUN     curl -sL https://deb.nodesource.com/setup_8.x | bash - && \
        apt-get install -y nodejs git unzip libfontconfig jq bzip2 && \
        npm i -g @angular/cli@7.0.1 pug-cli@1.0.0-alpha6 npm-cli-login && \
        mkdir -p -m 777 /sonar-scanner && \
        wget -O /sonar-scanner/sonar-scanner.zip https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-3.2.0.1227-linux.zip && \
        cd /sonar-scanner && \
        unzip -q sonar-scanner.zip && \
        rm sonar-scanner.zip && \
        git config --global http.sslVerify "false" && \
        echo '\n\
#!/bin/bash\n\
\n\
file=/registered\n\
\n\
if [ ! -f $file ]; then\n\
    touch $file\n\
    gitlab-runner register -n\n\
fi\n\
\n\
/usr/bin/dumb-init /entrypoint run --user=gitlab-runner --working-directory=/home/gitlab-runner' > /runner.sh

ENTRYPOINT [ "sh", "/runner.sh" ]
CMD        []
