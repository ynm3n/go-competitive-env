FROM golang:latest

ENV HOME /home
COPY home /home
WORKDIR /home

# Goのツールを揃える
RUN go mod download all \
    && go install golang.org/x/tools/gopls@latest \
    && go install github.com/go-delve/delve/cmd/dlv@latest \
    && go install honnef.co/go/tools/cmd/staticcheck@latest \
    && go install github.com/ktateish/gottani/cmd/gottani@latest \
    && go install github.com/fatih/gomodifytags@latest \
    && go install github.com/josharian/impl@latest \
    && go install github.com/cweill/gotests/gotests@latest \
    && go install github.com/haya14busa/goplay/cmd/goplay@latest
