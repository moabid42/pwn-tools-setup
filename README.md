# PWNBOX

Mostly while doing pwn challenges, you feel the need of having to install pwn tools, gdb, one gadget ... Here is a docker image that contains everything you need with an alias `pwnbox` you can run it anywhere in your system and it's gonna automatically mount your folder, into the image.

## PREREQUISITE
Docker sould be installed and running. You can check it using this command :
```bash
sudo systemctl status docker
```
Makefile, you can also check it, using:
```bash
make --version
```

## USAGE

If you are on a Mac M chip build your image using :
```bash
make build_m
```

If you have an intel CPU or windows or anything else you can use :
```bash
make build_x86
```

Afterward you can run your image anywhere, in your system using (Note: The pwd where you are running this command defines the folder where the docker gonna be mounted):
```bash
pwnbox
```

If you want to destroy your image your can use :
```bash
make destroy
```
