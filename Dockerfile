FROM mcr.microsoft.com/dotnet/core/sdk:3.0 AS build

FROM mcr.microsoft.com/dotnet/core/aspnet:3.0 AS runtime

COPY --from=build ./ ./
ENTRYPOINT ["dotnet", "aspnetapp.dll"]