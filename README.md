# Deep Learning Course task

## yolor image detection environment

### Requirements:
- OS: Ubuntu 20.04 (WSL 2 is also supported)
- [cuda](https://docs.nvidia.com/cuda/cuda-installation-guide-linux/index.html) 11.1+ (11.6 recommended)
- docker
- [nvidia-docker](https://docs.nvidia.com/ai-enterprise/deployment-guide/dg-docker.html)

### How to run:

```console
$ docker build -t dl_test .
$ docker run --gpus all -v $PWD/workdir:/workdir -it dl_test
```

Test run results (image with detected objects bounding boxes) for `workdir/yolor/inference/images/horses.jpg` image can be found after running docker container in `workdir/yolor/inference/output` directory.
