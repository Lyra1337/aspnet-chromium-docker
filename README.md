# aspnet-chromium-docker

[![GitHub Actions Workflow Status](https://img.shields.io/github/actions/workflow/status/Lyra1337/aspnet-chromium-docker/github-actions-build.yml)](https://github.com/Lyra1337/aspnet-chromium-docker/actions)
[![Docker Pulls](https://img.shields.io/docker/pulls/lyra1337/aspnet-chromium)](https://hub.docker.com/r/lyra1337/aspnet-chromium)

This repository provides essential Dockerfiles and a GitHub Action-based build process for creating Docker images that combine Ubuntu, ASP.NET Core Runtime, Chromium, and Microsoft Fonts. These images are designed to facilitate the development and deployment of ASP.NET Core applications that require Chromium for headless browser scenarios, along with the compatibility and presentation benefits of Microsoft Fonts.

## Features
* Ubuntu-based
* ASP.NET Core Runtime (net6.0+)
* latest Chromium
* Microsoft Fonts (by using [`ttf-mscorefonts-installer`](https://packages.debian.org/sid/ttf-mscorefonts-installer))
    * Andale Mono
    * Arial Black
    * Arial (Bold, Italic, Bold Italic)
    * Comic Sans MS (Bold)
    * Courier New (Bold, Italic, Bold Italic)
    * Georgia (Bold, Italic, Bold Italic)
    * Impact
    * Times New Roman (Bold, Italic, Bold Italic)
    * Trebuchet (Bold, Italic, Bold Italic)
    * Verdana (Bold, Italic, Bold Italic)
    * Webdings

## Prerequisites
Before you begin, ensure you have the following installed:

* Docker: [Installation guide](https://docs.docker.com/engine/install/)
* Git (optional): For cloning the repository. [Installation guide](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

## Getting Started
To use this repository, follow these steps:

#### Clone the Repository (optional if you're downloading files directly):

    bash
    git clone https://github.com/lyra1337/aspnet-chromium-docker.git
    cd aspnet-chromium-docker

#### Build the Docker Image
Navigate to the directory containing the Dockerfile you wish to build and run:

    bash
    docker build -t your-image-name:tag .

Replace `your-image-name:tag` with your preferred image name and tag.

## GitHub Action Workflow
This repository includes a GitHub Action workflow that automates the building and pushing of Docker images to Docker Hub upon new commits or specified events.

* The workflow is defined in [.github/workflows/github-actions-build.yml](https://github.com/Lyra1337/aspnet-chromium-docker/blob/master/.github/workflows/github-actions-build.yml).
* It triggers on push events to the main branch and on a schedule.
* The workflow builds the Docker image and pushes it to Docker Hub, tagging it with the commit SHA and/or tags as configured.

Ensure you have your Docker Hub username and access token configured as secrets in your GitHub repository settings.

## Contributing
**Contributions are welcome!** If you'd like to contribute, please follow these steps:

1. Fork the repository.
1. Create a new branch for your feature or fix.
1. Commit your changes with clear, descriptive messages.
1. Push your branch and submit a pull request.
