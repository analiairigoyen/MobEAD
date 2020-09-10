FROM microsoft/aspnetcore
COPY ./ .

EXPOSE 80
ENTRYPOINT ["dotnet", "aspnetapp.dll"]