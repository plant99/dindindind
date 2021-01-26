import os
if __name__ == "__main__":
	
	counter = int(os.environ.get("RECURSIVE_DOCKER_COUNTER", 0))
	if counter > 0:
		counter_offset = 10 - counter
		print(f"running from counter{counter_offset}")
		counter -= 1
		os.system(f"docker run --env RECURSIVE_DOCKER_COUNTER={counter} -v /var/run/docker.sock:/var/run/docker.sock recursive-docker:latest")
