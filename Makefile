help:
	echo "please run make experiment"

experiment:
	docker build . -t recursive-docker:latest
	docker run --env RECURSIVE_DOCKER_COUNTER=10 -v /var/run/docker.sock:/var/run/docker.sock recursive-docker:latest