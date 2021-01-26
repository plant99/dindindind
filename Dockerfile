FROM docker:latest
FROM python:3.7

RUN apt-get update && apt-get install -y gcc libc-dev


COPY --from=0 /usr/local/bin/docker /usr/bin/docker

COPY . /recursive-docker

WORKDIR /recursive-docker

CMD ["python", "spawn_container_util.py"]
