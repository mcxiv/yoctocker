# yoctocker
Building yocto, but using docker, because you can't build with your own distro.

## Building image
```bash
docker buildx build -t yoctocker .
```

## Running container
```bash
./yoctocker.sh /path/to/your/yocto/directory
```
