TAG = 2.3.7
IMAGE_NAME = globobackstage/cachet-nginx

build:
	docker build -t ${IMAGE_NAME} .
	docker tag ${IMAGE_NAME}:latest ${IMAGE_NAME}:${TAG}

push:
	docker push ${IMAGE_NAME}:${TAG}
