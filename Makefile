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

# Goose Migration
database := auth
username := postgres
password := postgres
ssl_mode := disable
connection := "user=$(username) password=$(password) dbname=$(database) sslmode=$(ssl_mode)"
dir := ./db/schema
goose := goose -dir $(dir) postgres $(connection)

migration-status:
	$(goose) status

migration-create:
	$(goose) create $(name) sql

migration-up:
	$(goose) up

migration-down:
	$(goose) down

migration-version:
	$(goose) version