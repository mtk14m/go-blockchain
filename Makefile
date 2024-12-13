# Variables
BINARY_NAME = bin/go-blc
MAIN_FILE = ./cmd/main.go

# Commandes
build:
	@echo "Building the application..."
	@go build -o $(BINARY_NAME) $(MAIN_FILE)

run: build
	@echo "Running the application..."
	@./$(BINARY_NAME)

test:
	@echo "Running tests..."
	@go test -v ./...

clean:
	@echo "Cleaning up..."
	@rm -rf ./bin
