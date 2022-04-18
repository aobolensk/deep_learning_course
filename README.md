# yolor image detection environment

## Requirements:
- OS: Ubuntu
- cuda
- [nvidia-docker](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html)
- docker

## How to run:

```console
$ docker build -t dl_test .
$ docker run --gpus all -v $PWD/workdir:/workdir -it dl_test
```
