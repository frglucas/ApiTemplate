FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS base
WORKDIR /app
EXPOSE 5000

FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src
COPY ["src/ApiTemplate.Api/ApiTemplate.Api.csproj", "ApiTemplate.Api/"]
RUN dotnet restore "ApiTemplate.Api/ApiTemplate.Api.csproj"
COPY src/ApiTemplate.Api/. ApiTemplate.Api/
WORKDIR "/src/ApiTemplate.Api"
RUN dotnet build "ApiTemplate.Api.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "ApiTemplate.Api.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "ApiTemplate.Api.dll"]
