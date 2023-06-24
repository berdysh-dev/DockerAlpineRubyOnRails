PHP = php
USER = berdyshdev2
REPO = docker_alpine_ruby_on_rails
TAG = latest
NAME = work

build:
	docker build -f Dockerfile --tag=${TAG} --rm=true . -t ${REPO}

run:
	docker run -it --rm -p 8003:8003 ${REPO} 

commit:
	@echo docker container commit `${PHP} DockerUtil.php -ContainerID ${TAG}` ${USER}/${REPO}
	@docker container commit `${PHP} DockerUtil.php -ContainerID ${TAG}` ${USER}/${REPO}

tag:
	@echo docker tag `${PHP} DockerUtil.php -ImageID ${TAG}` ${USER}/${REPO}
	@docker tag `${PHP} DockerUtil.php -ImageID ${TAG}` ${USER}/${REPO}

push:
	docker push ${USER}/${REPO}


