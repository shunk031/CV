```shell
docker build -t latex-for-my-resume .
```

```shell
docker run --rm -it -v $(pwd):/workdir latex-for-my-resume make cv.pdf
```

```shell
docker run --rm -it -v $(pwd):/workdir latex-for-my-resume make clean
```

## Update the CV

```shell
docker run --rm -it -v $(pwd):/workdir latex-for-my-resume make watch
```
Then, attach the container through VSCode.
