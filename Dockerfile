# Build stage
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /app

COPY . ./

# 👇 FIX: point to correct path
RUN dotnet restore Codefolio/Codefolio.csproj

RUN dotnet publish Codefolio/Codefolio.csproj -c Release -o out

# Runtime stage
FROM mcr.microsoft.com/dotnet/aspnet:8.0
WORKDIR /app

COPY --from=build /app/out .

ENTRYPOINT ["dotnet", "Codefolio.dll"]
