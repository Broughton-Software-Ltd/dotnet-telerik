The Telerik reporting packages require additional libraries to be present on the system.

This repository provides a container, starting from the dotnet sdk, with those additional libraries installed. This is useful if you want to mount your local volumes while developing.

A tagged image is currently hosted in [GitHub Packages](https://github.com/orgs/Broughton-Software-Ltd/packages/container/package/dotnet-telerik).

### Updating repository image:

Create a [Personal Access token](https://github.com/settings/tokens) on GitHub with access to `write:packages` and `delete:packages`.

Store it in the variable `$GH_DOCKER_PAT`.

Log in to the `ghcr.io` repository.

```bash
echo $GH_DOCKER_PAT | docker login ghcr.io -u USERNAME --password-stdin
```

Build the image

```bash
docker build -t broughton-software/dotnet-telerik .
```

Tag the image (in addition to `latest`, give it a number -- e.g. `5.0` for .NET 5, `6.0` for .NET 6, etc.)

```bash
docker tag broughton-software/dotnet-telerik:latest ghcr.io/broughton-software-ltd/dotnet-telerik:latest
```

Push to GitHub Packages

```bash
docker push ghcr.io/broughton-software-ltd/dotnet-telerik:latest
```
