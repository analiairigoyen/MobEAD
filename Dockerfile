FROM mcr.microsoft.com/dotnet/core/sdk:3.0 AS build

# copy everything else and build app
RUN dotnet publish -c Release -o out

FROM mcr.microsoft.com/dotnet/core/aspnet:3.0 AS runtime

COPY --from=build ./ ./
ENTRYPOINT ["dotnet", "aspnetapp.dll"]