FROM microsoft/aspnetcore:1.0.16-jessie
WORKDIR /app
COPY . .
ENTRYPOINT ["dotnet", "myapp.dll"]  
EXPOSE 8000