FROM microsoft/aspnet
COPY ./ .

EXPOSE 80
ENTRYPOINT ["dotnet", "aspnetapp.dll"]