FROM 	registry.setme.it/smit/infrastructure/techinline-windows-base:latest

ENV 	RUNNER_ROOT=C:\g \
		RUNNER_EXECUTOR=shell \
		RUNNER_TAG_LIST=net \
		REGISTER_LOCKED=false \
		REGISTER_RUN_UNTAGGED=false \
		RUNNER_NAME=NET		

RUN 	md %RUNNER_ROOT% && \
		powershell -NoProfile -ExecutionPolicy Bypass -Command "(New-Object System.Net.WebClient).DownloadFile('https://gitlab-ci-multi-runner-downloads.s3.amazonaws.com/latest/binaries/gitlab-ci-multi-runner-windows-amd64.exe', '%RUNNER_ROOT%\gitlab-runner.exe')"	

CMD 	"cd %RUNNER_ROOT% && gitlab-runner.exe register -n && gitlab-runner.exe run --user %USERNAME%"
