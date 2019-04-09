MODULE=mymodule
WORKDIR=/root/$(MODULE)/

.PHONY:	build run interact clean

build:
	@sudo docker run --rm -v $(CURDIR):$(WORKDIR) -w $(WORKDIR) golang \
		go build

run:
	@sudo docker run --rm -v $(CURDIR):$(WORKDIR) -w $(WORKDIR) golang \
		sh -c "go build -o /tmp/$(MODULE) && /tmp/$(MODULE)"

interact:
	@sudo docker run --rm -v $(CURDIR):$(WORKDIR) -w $(WORKDIR) -it golang

clean:
	@find $(CURDIR) -type f -executable | xargs rm -f
