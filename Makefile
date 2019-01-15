run: helloworld build
	ansible-playbook -v -M . helloworld.yaml
clean: helloworld
	rm helloworld
build: helloworld.go clean
	go build -o helloworld helloworld.go
