# LaTeX Files for My Curriculum Vitae

[![Release](https://github.com/shunk031/CV/actions/workflows/release.yaml/badge.svg)](https://github.com/shunk031/CV/actions/workflows/release.yaml) [![Build docker image](https://github.com/shunk031/CV/actions/workflows/build_docker_image.yaml/badge.svg)](https://github.com/shunk031/CV/actions/workflows/build_docker_image.yaml)

This CV is forked from [Just Another Research CV](https://github.com/SebastinSanty/Just-Another-Research-CV).

## Recommended: develop inside a container with VSCode

- Opening this repository will automatically start devcontainer

## Develop in a local environment with Docker

- (Optional) Build image

```shell
export APP=lualatex-for-my-cv
export YML=.devcontainer/docker-compose.yml

docker-compose -f ${YML} up -d
```

- Build cv.pdf

```shell
docker-compose -f ${YML} exec -T ${APP} make cv.pdf
```

- Clean up files

```shell
docker-compose -f ${YML} exec -T ${APP} make clean
```

- Reflect changes in real time

```shell
docker-compose -f ${YML} exec -T ${APP} make watch
```
