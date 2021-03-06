#!/usr/bin/env bash

oto -template server.go.plush \
	-out server.gen.go \
	-pkg main \
	./def
gofmt -w server.gen.go server.gen.go
echo "generated server.gen.go"

oto -template client.js.plush \
	-out www/src/client.gen.js \
	-pkg main \
	./def
echo "generated client.gen.js"
