FROM mcr.microsoft.com/dotnet/aspnet:6.0-focal AS base
RUN apt-get update && apt-get install -y apt-transport-https software-properties-common \
&& apt-get install -y libc6-dev libgdiplus \
&& add-apt-repository ppa:saiarcot895/chromium-beta -y \
&& apt-get update && apt-get install -y --no-install-recommends chromium-browser \
&& rm -rf /var/lib/apt/lists/*
