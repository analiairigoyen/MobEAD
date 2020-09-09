FROM microsoft/aspnetcore:1.0.16-jessie
COPY . /inetpub/wwwroot  
EXPOSE 8000