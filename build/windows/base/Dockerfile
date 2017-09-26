FROM 	microsoft/windowsservercore:10.0.14393.1715

RUN		powershell -NoProfile -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && \
		SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin" && \
		cinst -y 7zip.portable git
		