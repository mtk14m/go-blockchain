BINARY_NAME=blc-1.0.0
build:
	@go build -o bin/$(BINARY_NAME) -v
run: build
	@./bin/$(BINARY_NAME)
clean:
	@rm -rf ./bin
test:
	@go test -v ./...