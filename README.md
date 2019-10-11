
### Docker registry

Basically this is the Docker Hub (or alternatives), which is a storage solution for docker images. It is some sort of  Github/Bitbucket but for the docker images.


### Docker repository

It is a collection of docker images with the same name and different tags (similar to github repo, commits and tags).

<br />

# Usage

- create a domain for the registry, eg. d1.domain.com and point it to your server
- go to this server and:
- `cd /opt/docker-registry/`
- change secrets in `Infrastructure/Registry/.env` and `docker-compose.yml`
- `/bin/bash install.sh`

<br />

## Further steps

- `docker login https://d1.domain.com`
- `vi ~/.docker/config.json`   <--- the creds will go here
- `docker tag dd156dd42341 d1.domain.com/docker-image/here`    <--- dd156dd42341 is an image hash
- `docker push d1.domain.com/docker-image/here`

<br />

### todo:
- backup volume (tags/images/...)