FROM 	mcr.microsoft.com/windows/servercore:1903

ENV		USERNAME admin

RUN		net user %USERNAME% /ADD && \
		net localgroup administrators %USERNAME% /add && \
		net accounts /maxpwage:unlimited

USER	admin 

RUN		whoami && \
		powershell -NoProfile -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && \
		SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin" && \
		cinst -y 7zip.portable git && \
		refreshenv && \
		git config --global http.sslVerify "false"
