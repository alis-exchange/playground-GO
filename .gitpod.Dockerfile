# Get base image which is official Golang
FROM golang

# Install R
RUN apt-get update
RUN apt install --assume-yes --no-install-recommends build-essential libcurl4-openssl-dev libssl-dev libxml2-dev r-base

# Install required packages
RUN R -e "install.packages('jsonlite')"
RUN R -e "install.packages('httr')"

# # Add sudo
# RUN apt-get update && apt-get -y install sudo

# RUN useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo

# USER docker
# CMD /bin/bash

#  # Install protoc
# RUN apt-get install -y protobuf-compiler

# # Install protoc gen for go and grpc 
# RUN go install google.golang.org/protobuf/cmd/protoc-gen-go@latest
# RUN go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest

# # Update path so that protoc can find plugins
# RUN export PATH="$PATH:$(go env GOPATH)/bin"
# RUN echo $GOPATH

# # Update apt-get
# RUN apt-get update
# RUN apt -y upgrade