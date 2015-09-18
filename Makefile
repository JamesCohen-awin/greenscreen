imagename = groupon/greenscreen
portmapping = -p 4994:4994 -p 5984:5984

build:
	docker build -t $(imagename) -f docker/Dockerfile .

run:
	docker run -i -t --rm $(portmapping) $(imagename)

login:
	docker run -i -t --rm $(portmapping) $(imagename) bash

.PHONY: run login build
