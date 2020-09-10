FROM microsoft/aspnet AS build-env
RUN mkdir app

COPY . ./app
RUN dotnet restore

RUN dotnet publish -c Release -o out

# Build runtime image
FROM microsoft/aspnet:2.0
WORKDIR /app
COPY --from=build-env /app/out .

EXPOSE 80
ENTRYPOINT ["dotnet", "aspnetapp.dll"]