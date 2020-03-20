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

RUN apk add --no-cache icu-libs \
	ca-certificates \
	krb5-libs \
	libgcc \
	libintl \
	libssl1.1 \
	libstdc++ \
	zlib && \
	wget -nv -O dotnet.tar.gz https://dotnetcli.azureedge.net/dotnet/Sdk/3.1.200/dotnet-sdk-3.1.200-linux-musl-x64.tar.gz && \
	mkdir -p /usr/share/dotnet && \
	tar -C /usr/share/dotnet -oxzf dotnet.tar.gz && \
	ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet && \
	rm dotnet.tar.gz && \
	git config --global http.sslVerify "false" && \
	dotnet help

ADD runner.sh /

ENTRYPOINT [ "sh", "/runner.sh" ]