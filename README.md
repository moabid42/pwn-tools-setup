# PWNBOX

Mostly while doing pwn challenges, you feel the need of having to install pwn tools, gdb, one gadget ... Here is a docker image that contains everything you need with an alias `pwnbox` you can run it anywhere in your system and it's gonna automatically mount your folder, into the image.

## PREREQUISITE
Docker sould be installed and running. You can check it using this command :
```bash
sudo systemctl status docker
```
Makefile, you check if it's installed using:
```bash
make --version
```

## USAGE

First build your image using :
```bash
make build
```

Afterward you can run your image anywhere, in your system using (Note: The pwd where you are running this command defines the folder where the docker gonna be mounted):
```bash
pwnbox
```

If you want to destroy your image your can use :
```bash
make destroy
```