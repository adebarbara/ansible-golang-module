GOOS=linux
GOARCH=amd64

build: helloworld.go 
	go build -o helloworld helloworld.go

run: helloworld.go
	ansible-playbook -v -M . helloworld.yaml
