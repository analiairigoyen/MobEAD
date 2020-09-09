FROM microsoft/aspnetcore:1.0.16-jessie
ARG source  
WORKDIR /inetpub/wwwroot  
COPY ${source:-obj/Docker/publish} .