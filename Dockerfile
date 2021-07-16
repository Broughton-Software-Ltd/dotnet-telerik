FROM mcr.microsoft.com/dotnet/sdk:5.0

# install libraries for telerik reporting
# see https://docs.telerik.com/reporting/use-reports-in-net-core-apps
RUN apt-get update \
    && apt-get install -y --allow-unauthenticated \
        libc6-dev \
        libgdiplus \
        libx11-dev \
    && rm -rf /var/lib/apt/lists/*
