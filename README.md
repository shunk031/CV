# LaTeX Files for My Curriculum Vitae

[![Release](https://github.com/shunk031/CV/actions/workflows/release.yaml/badge.svg)](https://github.com/shunk031/CV/actions/workflows/release.yaml) [![Build docker image](https://github.com/shunk031/CV/actions/workflows/build_docker_image.yaml/badge.svg)](https://github.com/shunk031/CV/actions/workflows/build_docker_image.yaml)

## Recommended: develop inside a container with VSCode

- Opening this repository will automatically start devcontainer

## Develop in a local environment with Docker

- (Optional) Build image

```shell
docker build -t latex-for-my-resume .
```

- Build cv.pdf

```shell
docker run --rm -it -v $(pwd):/workdir ghcr.io/shunk031/lualatex-for-my-cv:latest make cv.pdf
```

- Clean up files

```shell
docker run --rm -it -v $(pwd):/workdir ghcr.io/shunk031/lualatex-for-my-cv:latest make clean
```

- Reflect changes in real time

```shell
docker run --rm -it -v $(pwd):/workdir ghcr.io/shunk031/lualatex-for-my-cv:latest make watch
```

