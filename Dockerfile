# Use the official ASP.NET Core runtime image based on Ubuntu
FROM mcr.microsoft.com/dotnet/aspnet:8.0

# Set working directory
WORKDIR /tmp/dotnet_docker_build

# Copy the published output from your CI pipeline
COPY ./publish .

# Expose ports for the application
EXPOSE 8080

# Start the application
ENTRYPOINT ["dotnet", "AspnetCoreMvcFull.dll"]