# Deep Learning Course task

## yolor image detection environment

### Requirements:
- OS: Ubuntu 20.04 (WSL 2 is also supported)
- docker

### How to run:

Clone repository and run from repository folder:

```console
$ docker run -v $PWD/workdir:/workdir -it ghcr.io/aobolensk/deep_learning_course:latest
```

Alternative:
```console
$ docker build -t dl_test .
$ docker run -v $PWD/workdir:/workdir -it dl_test
```

Test run results (image with detected objects bounding boxes) for `workdir/yolor/inference/images/horses.jpg` image can be found after running docker container in `workdir/yolor/inference/output` directory.
