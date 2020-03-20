FROM gitlab/gitlab-runner:alpine-v12.7.1

ENV RUNNER_ROOT=/home/titan/gitlab \
	CI_SERVER_URL=https://gitlab.setme.it \
	RUNNER_EXECUTOR=shell \
	RUNNER_TAG_LIST=netcore31 \
	REGISTER_LOCKED=false \
	REGISTER_RUN_UNTAGGED=false \
	RUNNER_NAME=net31 \
	ASPNETCORE_URLS= \
	DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=false \
	DOTNET_USE_POLLING_FILE_WATCHER=true \
	LC_ALL=en_US.UTF-8 \
	LANG=en_US.UTF-8 \
	NUGET_XMLDOC_MODE=skip

RUN apk add --no-cache \
	ca-certificates \
	less \
	ncurses-terminfo-base \
	krb5-libs \
	libgcc \
	libintl \
	libssl1.1 \
	libstdc++ \
	tzdata \
	userspace-rcu \
	zlib \
	icu-libs \
	curl \
	&& \
	apk -X http://dl-cdn.alpinelinux.org/alpine/edge/main add --no-cache \
	lttng-ust && \
	wget -nv -O dotnet.tar.gz https://dotnetcli.azureedge.net/dotnet/Sdk/3.1.200/dotnet-sdk-3.1.200-linux-musl-x64.tar.gz && \
	wget -nv -O powershell.tar.gz https://github.com/PowerShell/PowerShell/releases/download/v7.0.0/powershell-7.0.0-linux-alpine-x64.tar.gz && \
	mkdir -p /usr/share/dotnet /opt/microsoft/powershell/7 && \
	tar -C /usr/share/dotnet -oxzf dotnet.tar.gz && \
	tar -C /opt/microsoft/powershell/7 -oxzf powershell.tar.gz && \
	chmod +x /opt/microsoft/powershell/7/pwsh && \
	ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet && \
	ln -s /opt/microsoft/powershell/7/pwsh /usr/bin/pwsh && \
	rm dotnet.tar.gz powershell.tar.gz && \
	git config --global http.sslVerify "false" && \
	dotnet help

ADD runner.sh /

ENTRYPOINT [ "sh", "/runner.sh" ]