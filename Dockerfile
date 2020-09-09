FROM microsoft/aspnetcore
ARG source  
WORKDIR /inetpub/wwwroot  
COPY ${source:-obj/Docker/publish} .