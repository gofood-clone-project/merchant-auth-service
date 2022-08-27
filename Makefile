build:
	go build -v ./cmd/main

vet:
	go vet ./...

static-check:
	staticcheck ./...

lint:
	golint ./...

test:
	go test -race -vet=off -v -cover ./...
