# Use the official Golang image with version 1.15 based on Alpine Linux as the base image
FROM golang:1.15-alpine

# Set the working directory inside the container to the project path
WORKDIR /go/src/github.com/dicodingacademy/karsajobs

# Enable Go modules for dependency management
ENV GO111MODULE=on

# Set an environment variable to define the application port
ENV APP_PORT=8080

# Copy Go module files to the container to leverage Docker layer caching
COPY go.mod .
COPY go.sum .

# Download and cache Go modules to speed up subsequent builds
RUN go mod download

# Copy the entire project source code into the container
COPY . .

# Create a directory for the build artifacts
RUN mkdir /build; \
    # Build the Go application and store the binary in the /build directory
    go build -o /build/ ./...

# Expose port 8080 to allow external connections
EXPOSE 8080

# Define the command to run the compiled web application when the container starts
CMD ["/build/web"]
