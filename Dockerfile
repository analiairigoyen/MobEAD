FROM mcr.microsoft.com/dotnet/core/aspnet:3.0 AS runtime
COPY . ./
ENTRYPOINT ["dotnet", "aspnetapp.dll"]