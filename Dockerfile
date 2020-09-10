FROM microsoft/aspnet:2.0
WORKDIR ./
COPY ./ .

EXPOSE 80
ENTRYPOINT ["dotnet", "aspnetapp.dll"]