FROM mcr.microsoft.com/dotnet/core/sdk:3.0 AS build

# copy csproj and restore as distinct layers
RUN dotnet restore

# copy everything else and build app
RUN dotnet publish -c Release -o out

FROM mcr.microsoft.com/dotnet/core/aspnet:3.0 AS runtime

COPY --from=build ./ ./
ENTRYPOINT ["dotnet", "aspnetapp.dll"]