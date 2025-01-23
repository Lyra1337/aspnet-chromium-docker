FROM mcr.microsoft.com/dotnet/aspnet:9.0-noble AS base
RUN echo "ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true" | debconf-set-selections \
&& apt-get update && apt-get install -y apt-transport-https software-properties-common \
&& apt-get install -y libc6-dev libgdiplus \
&& sudo add-apt-repository ppa:xtradeb/apps -y \
&& apt-get update && apt-get install -y --no-install-recommends chromium \
&& apt-get install ttf-mscorefonts-installer -y && apt-get clean && fc-cache -f \
&& rm -rf /var/lib/apt/lists/*
