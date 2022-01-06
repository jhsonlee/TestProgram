FROM mcr.microsoft.com/dotnet/core/aspnet:3.1-buster-slim AS base
WORKDIR /webapiapp

COPY . .

EXPOSE 5000
ENV ASPNETCORE_URLS http://*:5000

ENTRYPOINT ["dotnet", "WebAPI.dll"]