Green=\033[0;32m
BGreen=\033[1;32m
Color_Off=\033[0m

build_m:
	@docker build --platform linux/amd64 -f Dockerfile.m --no-cache -t ubuntu-pwner .
	@echo 'alias pwnbox="docker run -it -v `pwd`:/home/localdir ubuntu-pwner /bin/bash"' >> ~/.zshrc
	@echo "${Green}[+] The Building is done and pwnbox alias is created${Color_Off}"
	@echo "${BGreen}[+] Source your user interface to apply the aliases with (source .bashrc) or (source .zshrc)${Color_Off}"
build_x86:
	@docker build -f Dockerfile.x86 -t ubuntu-pwner .
	@echo 'alias pwnbox="docker run -it -v `pwd`:/home/localdir ubuntu-pwner /bin/bash"' >> ~/.zshrc
	@echo "${Green}[+] The Building is done and pwnbox alias is created${Color_Off}"
	@echo "${BGreen}[+] Source your user interface to apply the aliases with (source .bashrc) or (source .zshrc)${Color_Off}"

destroy:
	@docker rmi -f ubuntu-pwner || echo "${Green}[+] No image named ubuntu-pwner to remove${Color_Off}"
	@echo "${Green}[+] Removed the ubuntu-pwner image${Color_Off}"

.PHONY: build destroy
