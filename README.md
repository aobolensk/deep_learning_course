# yolor image detection environment

## Requirements:
- OS: Ubuntu 20.04 (WSL 2 is also supported)
- [cuda](https://docs.nvidia.com/cuda/cuda-installation-guide-linux/index.html)
- docker
- [nvidia-docker](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html)

## How to run:

```console
$ docker build -t dl_test .
$ docker run --gpus all -v $PWD/workdir:/workdir -it dl_test
```

Test run results can be found in `workdir/yolor/inference/output` directory.
