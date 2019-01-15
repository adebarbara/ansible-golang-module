run: build
	ansible-playbook -v -M . helloworld.yaml

clean: 
	rm -f helloworld

build: helloworld.go clean
	CGO_ENABLED=0 go build -o helloworld helloworld.go
