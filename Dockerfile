# syntax=docker/dockerfile:1
# 参考: https://hub.docker.com/r/docker/dockerfile
# BuildKit を有効にしないと動かないかも

FROM golang:latest

COPY work/go.mod work/go.sum /
RUN --mount=type=cache,target=/go/pkg/mod --mount=type=cache,target=/root/.cache/go-build <<EOF
    cd /
    go mod download all
    rm go.mod go.sum

    go install golang.org/x/tools/gopls@latest
    go install github.com/go-delve/delve/cmd/dlv@latest
    go install honnef.co/go/tools/cmd/staticcheck@latest
    go install github.com/uudashr/gopkgs/v2/cmd/gopkgs@latest
    go install github.com/josharian/impl@latest
    go install github.com/cweill/gotests/gotests@latest
    go install github.com/haya14busa/goplay/cmd/goplay@latest
    
    go install github.com/ktateish/gottani/cmd/gottani@latest
EOF
