
create:
	docker build -t ubuntu-pwner .
	docker run -it -v "`pwd`:/home/localdir" ubuntu-pwner /bin/bash

destroy:
	docker system prune --all --volumes --force
